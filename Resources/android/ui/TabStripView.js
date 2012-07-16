(function() {
  var TabButton, TabStripView, tabWidth;

  tabWidth = function() {
    return Ti.Platform.displayCaps.platformWidth / 4;
  };

  TabButton = function(id, text, icon, index, selected) {
    var self;
    self = Ti.UI.createView({
      width: tabWidth(),
      opacity: 0.8,
      backgroundColor: selected ? "#444444" : "transparent",
      id: id,
      index: index,
      selected: selected
    });
    self.add(Ti.UI.createImageView({
      image: icon,
      top: "6dp",
      height: "25dp"
    }));
    self.add(Ti.UI.createLabel({
      text: text,
      color: "#FFFFFF",
      bottom: "3dp",
      font: {
        fontSize: "10dp"
      }
    }));
    self.toggle = function(active) {
      if (active === true) {
        return self.setBackgroundColor("#444444");
      } else {
        return self.setBackgroundColor("transparent");
      }
    };
    return self;
  };

  TabStripView = function(dict) {
    var first, index, key, selectedIndex, self, tabs, _fn;
    tabs = [];
    first = true;
    index = 0;
    selectedIndex = 0;
    self = Ti.UI.createView({
      width: Ti.UI.FILL,
      height: "50dp",
      top: "44dp",
      layout: "horizontal",
      backgroundColor: "#121212"
    });
    _fn = function(key) {
      var d, tab;
      d = dict.tabs[key];
      tab = new TabButton(key, d.title, d.icon, index, first);
      self.add(tab);
      tabs.push(tab);
      first = false;
      (function(i, t) {
        return t.addEventListener("click", function() {
          self.selectIndex(i);
          return self.fireEvent("selected", {
            index: i
          });
        });
      })(index, tab);
      return index++;
    };
    for (key in dict.tabs) {
      _fn(key);
    }
    self.selectIndex = function(index) {
      var tab, toggleTab, _i, _len, _results;
      toggleTab = function(tab) {
        if (tab.index === index) {
          return tab.toggle(true);
        } else {
          return tab.toggle(false);
        }
      };
      _results = [];
      for (_i = 0, _len = tabs.length; _i < _len; _i++) {
        tab = tabs[_i];
        _results.push(toggleTab(tab));
      }
      return _results;
    };
    return self;
  };

  module.exports = TabStripView;

}).call(this);
