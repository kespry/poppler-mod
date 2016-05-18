var path = require('path');

if(process.env['DYNO']) {
  // heroku
  module.exports = path.join(process.env['HOME'], 'poppler');
} else {
  module.exports = '/usr/local/poppler';
}
