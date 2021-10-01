var exec = require("cordova/exec");

function OpenInBrowser() {
  
}

OpenInBrowser.prototype.open = function (
  successCallback,
  errorCallback
) {
  //execute action on plugin
  exec(successCallback, errorCallback, "OpenInBrowser", "open", []);
};

module.exports = OpenInBrowser;
