(function() {
  var ActionBarView;

  ActionBarView = function(dict) {
    var button, buttonOffset, createActionBarButton, self, _fn, _i, _len, _ref;
    buttonOffset = 5;
    self = Ti.UI.createView({
      height: "44dp",
      top: 0,
      backgroundColor: "#006400"
    });
    if (dict.title) {
      self.add(Ti.UI.createLabel({
        text: dict.title,
        left: 5,
        color: "#FFF",
        font: {
          fontSize: "18dp",
          fontWeight: "bold"
        }
      }));
    } else {
      self.add(Ti.UI.createImageView({
        image: "/images/appc_white.png",
        left: 5
      }));
    }
    createActionBarButton = function(b) {
      var button, buttonIcon, buttonLabel;
      button = Ti.UI.createView({
        width: "" + b.width + "dp",
        right: "" + buttonOffset + "dp"
      });
      if (b.title) {
        buttonLabel = Ti.UI.createLabel({
          text: b.title,
          color: "#FFF",
          height: Ti.UI.SIZE,
          width: Ti.UI.SIZE,
          textAlign: "center",
          font: {
            fontSize: "14dp",
            fontWeight: "bold"
          }
        });
        button.add(buttonLabel);
      } else if (b.icon) {
        buttonIcon = Ti.UI.createImageView({
          image: b.icon,
          height: "30dp",
          width: "30dp"
        });
        button.add(buttonIcon);
      }
      self.add(button);
      self.add(Ti.UI.createView({
        backgroundColor: "#DEDEDE",
        width: 1,
        height: Ti.UI.FILL,
        right: buttonOffset + b.width + 1 + "dp"
      }));
      button.addEventListener("click", function() {
        return self.fireEvent("buttonPress", {
          id: b.id
        });
      });
      return buttonOffset += b.width + 7;
    };
    _ref = dict.buttons;
    _fn = function(button) {
      return createActionBarButton(button);
    };
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      button = _ref[_i];
      _fn(button);
    }
    return self;
  };

  module.exports = ActionBarView;

}).call(this);
