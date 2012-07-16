(function() {
  var TabGroup;

  TabGroup = function() {
    var self, tabLocalization, tabTalkers, tabTalks, tabTwitter;
    self = Ti.UI.createTabGroup();
    tabTalks = Ti.UI.createTab({
      title: L("talks"),
      icon: "/images/icons/Allotted-Time.png"
    });
    self.addTab(tabTalks);
    tabTalkers = Ti.UI.createTab({
      title: L("talkers"),
      icon: "/images/icons/Users.png"
    });
    self.addTab(tabTalkers);
    tabLocalization = Ti.UI.createTab({
      title: L("localization"),
      icon: "/images/icons/Navigation-Map.png"
    });
    self.addTab(tabLocalization);
    tabTwitter = Ti.UI.createTab({
      title: L("twitter"),
      icon: "/images/icons/Twitter-New.png"
    });
    self.addTab(tabTwitter);
    return self;
  };

  module.exports = TabGroup;

}).call(this);
