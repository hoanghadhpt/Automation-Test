const { request, settings } = require('pactum');
const { Before } = require('@cucumber/cucumber');

Before(() => {
//request.setBaseUrl('https://httpbin.org/');
  settings.setReporterAutoRun(false);
});