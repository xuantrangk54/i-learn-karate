function fn() {
  var env = karate.env || 'dev';
  var config = {
    baseUrl: 'https://api.dev.example.com'
  };

  if (env === 'qa') {
    config.baseUrl = 'https://api.qa.example.com';
  } else if (env === 'prod') {
    config.baseUrl = 'https://api.example.com';
  }

  karate.log('Running tests in environment:', env);
  return config;
}
