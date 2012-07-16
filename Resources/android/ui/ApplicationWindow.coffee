Window = ->

	ActionBarView = require "/ui/ActionBarView"

	self = Ti.UI.createWindow
		backgroundColor: "#FFF"
		title: "Home"

	actionBar = new ActionBarView
		title: "BrazilJS"
		buttons:[{
			title: "Share"
			id: "share"
			width: 60
		}]

	self.add actionBar

	self


module.exports = Window