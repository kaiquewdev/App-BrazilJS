TabGroup = ->

	# Create TabGroup
	self = Ti.UI.createTabGroup()

	# Create Tabs and add to TabGroup

	# Talks
	tabTalks = Ti.UI.createTab
		title: L("talks")
	self.addTab(tabTalks)

	# Talkers
	tabTalkers = Ti.UI.createTab
		title: L("talkers")
	self.addTab(tabTalkers)

	# Localization
	tabLocalization = Ti.UI.createTab
		title: L("localization")
	self.addTab(tabLocalization)

	# About
	tabAbout = Ti.UI.createTab
		title: L("about")
	self.addTab(tabAbout)

	self


module.exports = TabGroup