Window = ->

	ActionBarView = require "/ui/ActionBarView"
	TabStripView = require "/ui/TabStripView"

	self = Ti.UI.createWindow
		backgroundColor: "#FFF"
		title: "Home"
		navBarHidden: true
		orientationModes: [Titanium.UI.PORTRAIT]

	# Create ActionBar
	actionBar = new ActionBarView
		title: "BrazilJS"
		buttons:[{
			icon: "/images/icons/Closed-Mail.png"
			id: "share"
			width: 60
		}]

	self.add actionBar

	# Create TabStripView
	tabStripView = new TabStripView
		tabs:
			talks:
				title: L("talks")
				icon: "/images/icons/Allotted-Time.png"

			talkers:
				title: L("talkers")
				icon: "/images/icons/Users.png"

			localization:
				title: L("localization")
				icon: "/images/icons/Navigation-Map.png"

			twitter:
				title: L("twitter")
				icon: "/images/icons/Twitter-New.png"

	self.add tabStripView

	self

module.exports = Window