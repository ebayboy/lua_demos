

Shape = { area = 0 }

function Shape:new(o, side)
    self.area = side * side;
    return o
end

function Shape:printArea()
    print("Area is ", self.area)
end

myshape = Shape:new(nil, 10)

myshape:printArea()

