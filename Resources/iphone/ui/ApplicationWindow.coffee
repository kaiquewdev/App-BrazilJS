TabGroup = ->

	# Create TabGroup
	self = Ti.UI.createTabGroup()

	# Create Tabs and add to TabGroup

	# Talkers
	tabTalkers = Ti.UI.createTab
		title: L("talkers")
	self.addTab(tabTalkers)

	# Talks (hours)
	tabHours = Ti.UI.createTab
		title: L("hours")
	self.addTab(tabHours)

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