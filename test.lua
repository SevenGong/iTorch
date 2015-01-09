local Plot = require 'itorch.Plot'

-- images
itorch.image({image.lena(), image.lena(), image.lena()})

require 'nn'
m=nn.SpatialConvolution(3,32,25,25)
itorch.image(m.weight)

-- audio
itorch.audio('volkswagen.mp3')

-- video
itorch.video('small.mp4')

-- html
itorch.html('<p><b>Hi there!</b> this is arbitrary HTML</p>')
-- window_id = itorch.html('<p>This text will be replaced in 2 seconds</p>')
-- os.execute('sleep 2')
-- itorch.html('<p>magic!</p>', window_id)

x1 = torch.randn(40):mul(100)
y1 = torch.randn(40):mul(100)
x2 = torch.randn(40):mul(100)
y2 = torch.randn(40):mul(100)
x3 = torch.randn(40):mul(200)
y3 = torch.randn(40):mul(200)

-- scatter plots
plot = Plot():circle(x1, y1, 'red', 'hi'):circle(x2, y2, 'blue', 'bye'):draw()
plot:circle(x3,y3,'green', 'yolo'):redraw()
plot:title('Scatter Plot Demo'):redraw()
plot:xaxis('length'):yaxis('width'):redraw()
plot:legend(true)
plot:redraw()
-- print(plot:toHTML())
plot:save('out.html')

-- line plots
plot = Plot():line(x1, y1,'red','example'):legend(true):title('Line Plot Demo'):draw()

-- segment plots
plot = Plot():segment(x1, y1, x1+10,y1+10, 'red','demo'):title('Segment Plot Demo'):draw()

-- quiver plots
U = torch.randn(3,3):mul(100)
V = torch.randn(3,3):mul(100)
plot = Plot():quiver(U,V,'red',''):title('Quiver Plot Demo'):draw()
