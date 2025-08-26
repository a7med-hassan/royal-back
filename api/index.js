// Vercel serverless function entry point
const app = require("../app");

// Export the app for Vercel
module.exports = app;

// Handle Vercel serverless function requirements
if (typeof app.default !== "undefined") {
  module.exports = app.default;
}
