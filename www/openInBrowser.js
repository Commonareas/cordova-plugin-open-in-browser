var exec = require("cordova/exec");

function OpenInBrowser() {}

OpenInBrowser.prototype.open = function (url) {
  //execute action on plugin
  exec(null, null, "OpenInBrowser", "open", [url]);
};

module.exports = new OpenInBrowser();
