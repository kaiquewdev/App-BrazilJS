(function() {
  var TabGroup;

  TabGroup = function() {
    var self, tabAbout, tabLocalization, tabTalkers, tabTalks;
    self = Ti.UI.createTabGroup();
    tabTalks = Ti.UI.createTab({
      title: L("talks")
    });
    self.addTab(tabTalks);
    tabTalkers = Ti.UI.createTab({
      title: L("talkers")
    });
    self.addTab(tabTalkers);
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
