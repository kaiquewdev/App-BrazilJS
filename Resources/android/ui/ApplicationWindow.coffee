Window = ->

	ActionBarView = require "/ui/ActionBarView"
	TabStripView = require "/ui/TabStripView"

	self = Ti.UI.createWindow
		backgroundColor: "#FFF"
		title: "Home"
		navBarHidden: true

	# Create ActionBar
	actionBar = new ActionBarView
		title: "BrazilJS"
		buttons:[{
			title: "Share"
			id: "share"
			width: 60
		}]

	self.add actionBar

	# Create TabStripView
	tabStripView = new TabStripView
		tabs:
			stream:
				title: L("talks")
				icon: ''
			groups:
				title: L("talkers")
				icon: ''
			events:
				title: L("localization")
				icon: ''
			leaders:
				title: L("about")
				icon: ''

	self.add tabStripView

	self

module.exports = Window