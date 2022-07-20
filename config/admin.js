module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET',"placeHolder"),
  },
  apiToken: {
    salt: env('API_TOKEN_SALT',"placeHolder"),
  },
});
