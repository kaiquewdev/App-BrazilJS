TabGroup = ->

	# Create TabGroup
	self = Ti.UI.createTabGroup()

	# Create Tabs and add to TabGroup

	# Talks
	tabTalks = Ti.UI.createTab
		title: L("talks")
		icon: "/images/icons/Allotted-Time.png"
	self.addTab(tabTalks)

	# Talkers
	tabTalkers = Ti.UI.createTab
		title: L("talkers")
		icon: "/images/icons/Users.png"
	self.addTab(tabTalkers)

	# Localization
	tabLocalization = Ti.UI.createTab
		title: L("localization")
		icon: "/images/icons/Navigation-Map.png"
	self.addTab(tabLocalization)

	# Twitter
	tabTwitter = Ti.UI.createTab
		title: L("twitter")
		icon: "/images/icons/Twitter-New.png"
	self.addTab(tabTwitter)

	self


module.exports = TabGroup