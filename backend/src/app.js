require('dotenv').config();
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const rateLimit = require('express-rate-limit');
const logger = require('./utils/logger');
const path = require('path');
require('./config/redis'); // Initialize Redis connection

// Express App Intialization
const app = express();

// Middlewares
app.use(helmet());
app.use(cors({ origin: '*' })); // Configure properly in production
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/uploads', express.static(path.join(__dirname, '../../uploads')));

// Request Logging Middleware
app.use((req, res, next) => {
    logger.info(`${req.method} ${req.url}`, {
        ip: req.ip,
        userAgent: req.get('User-Agent')
    });
    next();
});

// Global Rate Limit (Disabled in dev to avoid 429 errors while testing)
const limiter = rateLimit({
    windowMs: 15 * 60 * 1000, // 15 minutes
    max: 10000,               // Limit each IP to 10k requests for dev
});
app.use(limiter);

// Default Route
app.get('/api/v1/health', (req, res) => {
    res.status(200).json({ status: 'success', message: 'EP CRM API Provider is running' });
});

// Import Routes
const authRoutes = require('./infrastructure/routes/authRoutes');
const userRoutes = require('./infrastructure/routes/userRoutes');
const roleRoutes = require('./infrastructure/routes/roleRoutes');
const noteRoutes = require('./infrastructure/routes/noteRoutes');
const taskRoutes = require('./infrastructure/routes/taskRoutes');
const subcontractorRoutes = require('./infrastructure/routes/subcontractorRoutes');
const clientRoutes = require('./infrastructure/routes/clientRoutes');
const categoryRoutes = require('./infrastructure/routes/categoryRoutes');
const inquiryRoutes = require('./infrastructure/routes/inquiryRoutes');
const projectRoutes = require('./infrastructure/routes/projectRoutes');
const supportRoutes = require('./infrastructure/routes/supportRoutes');

// Mount Routes
app.use('/api/v1/auth', authRoutes);
app.use('/api/v1/users', userRoutes);
app.use('/api/v1/roles', roleRoutes);
app.use('/api/v1/notes', noteRoutes);
app.use('/api/v1/tasks', taskRoutes);
app.use('/api/v1/subcontractors', subcontractorRoutes);
app.use('/api/v1/clients', clientRoutes);
app.use('/api/v1/categories', categoryRoutes);
app.use('/api/v1/inquiries', inquiryRoutes);
app.use('/api/v1/projects', projectRoutes);
app.use('/api/v1/project-stages', require('./infrastructure/routes/projectStageRoutes'));
app.use('/api/v1/support', supportRoutes);

// --- Serve Frontend in Production ---
if (process.env.NODE_ENV === 'production') {
    const frontendDist = path.join(__dirname, '../../frontend/dist');
    app.use(express.static(frontendDist));

    app.get('*', (req, res) => {
        // Fallback for SPA routing - Ignore API requests
        if (req.path.startsWith('/api/') || req.path.startsWith('/uploads/')) {
            return res.status(404).json({ status: 'fail', message: 'Not found' });
        }
        res.sendFile(path.join(frontendDist, 'index.html'));
    });
}
// ------------------------------------

// Centralized Error Handling Placeholder
app.use((err, req, res, next) => {
    logger.error(`${err.statusCode || 500} - ${err.message} - ${req.originalUrl} - ${req.method} - ${req.ip}`);
    logger.error(err.stack);

    res.status(err.statusCode || 500).json({
        status: 'error',
        message: err.message || 'Internal Server Error'
    });
});

const PORT = process.env.PORT || 3000;
const http = require('http');
const { initWebSocket } = require('./infrastructure/websocket');

if (require.main === module) {
    const server = http.createServer(app);

    // Initialize WebSockets
    initWebSocket(server);

    server.listen(PORT, () => {
        logger.info(`Server running in ${process.env.NODE_ENV || 'development'} mode on port ${PORT}`);
    });
}

module.exports = app;
