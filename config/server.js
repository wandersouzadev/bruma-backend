module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: env("URL"),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '6edaa1b78efdd707ea8a8d99474e7036'),
    },
  },
});
