(function() {
  var TabGroup;

  TabGroup = function() {
    var self, tabAbout, tabHours, tabLocalization, tabTalkers;
    self = Ti.UI.createTabGroup();
    tabTalkers = Ti.UI.createTab({
      title: L("talkers")
    });
    self.addTab(tabTalkers);
    tabHours = Ti.UI.createTab({
      title: L("hours")
    });
    self.addTab(tabHours);
    tabLocalization = Ti.UI.createTab({
      title: L("localization")
    });
    self.addTab(tabLocalization);
    tabAbout = Ti.UI.createTab({
      title: L("about")
    });
    self.addTab(tabAbout);
    return self;
  };

  module.exports = TabGroup;

}).call(this);
