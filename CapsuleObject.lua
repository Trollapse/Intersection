local CapsuleObject = {}
CapsuleObject.__index = CapsuleObject

function CapsuleObject.new(radius, height)
	local self = setmetatable({}, CapsuleObject)
	self.Position = Vector3.zero
	self.Radius = radius; self.Height = height
	return self
end

function CapsuleObject.GetPoints()
	return 
		self.Position,
		self.Position + Vector3.new(0, self.Height, 0),
		self.Position + Vector3.new(0, self.Radius, 0),
		self.Position + Vector3.new(0, self.Height - self.Radius, 0)
end

return CapsuleObject
