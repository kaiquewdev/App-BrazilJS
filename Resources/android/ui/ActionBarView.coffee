ActionBarView = (dict) ->

	buttonOffset = 5

	# Create the View
	self = Ti.UI.createView
		height: "44dp"
		top: 0
		backgroundColor: "#006400"

	# If have title, show a label. If have not, show an image.
	if dict.title

		self.add Ti.UI.createLabel
			text: dict.title
			left: 5
			color: "#FFF"
			font:
				fontSize: "18dp"
				fontWeight: "bold"
	else

		self.add Ti.UI.createImageView
			image: "/images/appc_white.png"
			left: 5

	# Methods
	createActionBarButton = (b) ->

		# Create button
		button = Ti.UI.createView
			width: "#{b.width}dp"
			right: "#{buttonOffset}dp"

		# Label or Icon
		if b.title

			buttonLabel = Ti.UI.createLabel
				text: b.title
				color: "#FFF"
				height: Ti.UI.SIZE
				width: Ti.UI.SIZE
				textAlign: "center"
				font:
					fontSize: "14dp"
					fontWeight: "bold"

			button.add(buttonLabel);

		else if b.icon

			buttonIcon = Ti.UI.createImageView
				image: b.icon
				height: 20
				width: 20

			button.add(buttonIcon);

		# Add button to View
		self.add button

		# A little hack to border left
		self.add Ti.UI.createView
			backgroundColor: "#DEDEDE",
			width: 1,
			height: Ti.UI.FILL,
			right: buttonOffset + b.width + 1 + "dp"

		# Event handler
		button.addEventListener "click", ->

			self.fireEvent "buttonPress",
				id: b.id

		buttonOffset += (b.width + 7)

	# Create buttons
	for button in dict.buttons
		do (button) ->
			createActionBarButton(button)

	self


module.exports = ActionBarView;