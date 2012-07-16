# Get width of individual tab
tabWidth = ->
	Ti.Platform.displayCaps.platformWidth / 4

# Create a single TabButton
TabButton = (id, text, icon, index, selected) ->

	# View
	self = Ti.UI.createView
		width: tabWidth()
		opacity: 0.8
		backgroundColor: if selected then "#444444" else "transparent"
		id: id
		index: index
		selected: selected

	# Icon ImageView
	self.add Ti.UI.createImageView
		image: icon
		top: "6dp"
		height: "25dp"

	# Title Label
	self.add Ti.UI.createLabel
		text: text
		color: "#FFFFFF"
		bottom: "3dp"
		font:
			fontSize: "10dp"

	# Toggle tab
	self.toggle = (active) ->
		if active == true
			self.setBackgroundColor("#444444")
		else
			self.setBackgroundColor("transparent")

	self

TabStripView = (dict) ->

	# Initialize values
	tabs = []
	first = true
	index = 0
	selectedIndex = 0

	# View
	self = Ti.UI.createView
		width: Ti.UI.FILL
		height: "50dp"
		top: "44dp"
		layout: "horizontal"
		backgroundColor: "#121212"
	
	# Create Tabs
	for key of dict.tabs
		do (key) ->
		
			# Get values
			d = dict.tabs[key]

			# Create View
			tab = new TabButton(key, d.title, d.icon, index, first)
			self.add tab
			tabs.push tab
			first = false

			# Event handler
			((i,t) ->
				t.addEventListener "click", ->

					self.selectIndex i
					
					self.fireEvent "selected",
						index: i

			)(index, tab)

			index++

	# Event handler (click)
	self.selectIndex = (index) ->

		toggleTab = (tab) ->

			if (tab.index == index)
				tab.toggle(true)
			else
				tab.toggle(false)

		toggleTab tab for tab in tabs

	
	# Return View
	self

module.exports = TabStripView;