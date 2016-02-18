# This imports all the layers for "Shopping cart copy" into shoppingCartCopyLayers5
sketch = Framer.Importer.load "imported/Shopping cart copy"

# Shortcut Layer Names from sketch["myLayer"] -> sketch
for layerGroupName of sketch
	window[layerGroupName] = sketch[layerGroupName]
	# Store original position of all elements from PSD/Sketch file
	sketch[layerGroupName].originalFrame = window[layerGroupName].frame

#set image1Circle's state
image1Circle.x = 300
image1Circle.opacity = 0
image1Circle.scale = 0.8

image1.scale = 1

number1.y = 84
number1.opacity = 0

#the image shink to a circle
shrink = new Animation
	layer: image1
	properties: scale:0.1,opacity:0
	time: "0.5"
	
# circle come out and drop to the cart
animationA = new Animation
    layer: image1Circle,
    properties: opacity:1
    #cruve1 = "spring(250,25,0)"
    time: "0.4"
    delay: "0.5"

# circle dissapear 
animationB = new Animation
    layer: image1Circle
    properties:  x: 545, y:1045, scale:0.5
    curve: "cubic-bezier(0.4, 0.0, 1, 1)"
    time: "0.4"
    delay: "0.35"

# number show up
animationC = new Animation
	layer: number1
	properties: opacity:1, y: 79,
	curve:"spring(100, 10, 0)"
	time: "0.2"
	delay: "0.75"

#number disapear 	
animationD = new Animation
	layer: number1
	properties: opacity:0, y:112,
	curve:"spring(100, 10, 0)"
	time:"0.3"
	delay: "1.3"
	
#set animation events
addBtn1.on Events.Click, ->
	shrink.start()
	animationA.start()
	animationB.start()
	animationC.start()
	animationD.start()


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	