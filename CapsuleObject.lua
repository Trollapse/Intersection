local CapsuleObject = {}
CapsuleObject.__index = CapsuleObject

function CapsuleObject.new(radius, height)
	local self = setmetatable({}, CapsuleObject)
	self.Position = Vector3.zero
	self.Radius = radius; self.Height = height
	return self
end

return CapsuleObject
