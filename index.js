var path = require('path');

if(process.env['DYNO']) {
  // heroku
  return path.join(process.env['HOME'], 'poppler');
} else {
  return '/usr/local/poppler';
}
