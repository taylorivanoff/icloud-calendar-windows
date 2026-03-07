const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Calendar',
  protocol: 'icloud-calendar',
  icloudUrl: 'https://www.icloud.com/calendar',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
