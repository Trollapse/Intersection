local TriangleObject = {}
TriangleObject.__index = TriangleObject

function TriangleObject.new(p1, p2, p3)
	local self = setmetatable({}, TriangleObject)
	self.Point1 = p1; self.Point2 = p2; self.Point3 = p3
	return self
end

function TriangleObject.GetNormal()
	return ((self.Point2 - self.Point1):Cross(self.Point3 - self.Point1)).Unit
end

return TriangleObject
