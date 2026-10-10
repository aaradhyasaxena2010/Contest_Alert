const express = require('express');
const passport = require('passport');
const { handleGoogleCallback, handleLogout } = require('../controllers/authController');

const router = express.Router();

router.get(
    '/auth/google',
    passport.authenticate('google', {
        scope: [
            'profile',
            'email',
            'https://www.googleapis.com/auth/calendar.events',
            'openid'
        ],
        accessType: 'offline',
        prompt: 'consent'
    })
);

router.get(
    '/auth/google/callback',
    passport.authenticate('google', { failureRedirect: `${process.env.REACT_APP_FRONTEND_URL || 'http://localhost:3000'}/login` }),
    handleGoogleCallback
);

router.get('/auth/logout', handleLogout);

module.exports = router;
