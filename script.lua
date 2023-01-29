--Select which properties should be printed
_Root = game.Workspace --Root of the children inside the Source folder
_Parent = true --Only for the children of the children of the Source folder.
_Name = true
_Transparency = true
_Anchored = true
_Color = true
_BrickColor = true
_Material = true
_Size = true
_Position = true
_CFrame = true --
_CanCollide = true
_CanTouch = true
_CollisionGroup = true
_Shape = true

--Extra values that are mostly not used
_CastShadow = true
_Archivable = true
_Locked = true
_Origin = true
_PivotOffset = true
_CanQuery = true
_Massless = true
_RootPriority = true

--Output storage
local clipboard = Instance.new("StringValue", workspace)
clipboard.Name = "Output"

local source = game.Workspace.Source --Instance
for _,part in pairs(source:GetDescendants()) do

--Source Code
if part:IsA('Part') then
	if _Anchored then
		local val = part.Anchored
		anchor = '\nPart.Anchored = '..tostring(val)
		print(anchor)
	else
		anchor = ''
		end
	if _Color then
		local val = part.Color
		color = '\nPart.Color = Color3.new('..tostring(val)..')'
	else
		color = ''
	end
	if _Material then
		local val = part.Material
		mat = '\nPart.Material = '..tostring(val)
	else
		mat = ''
	end
	if _Size then
		local val = part.Size
		size = '\nPart.Size = Vector3.new('..tostring(val)..')'
	else
		size = ''
	end
	if _Position then
		local val = part.Position
		pos = '\nPart.Position = Vector3.new('..tostring(val).. ')'
	else
		pos = ''
	end
	if _CFrame then
		local val = part.CFrame
		frame = '\nPart.CFrame = CFrame.new('..tostring(val).. ')'
	else
		frame = ''
	end
	if _Name then
		local val = part.Name
		name = '\nPart.Name = `'..tostring(val).. '`'
	else
		name = ''
	end
	if _Transparency then
		local val = part.Transparency
		trans = '\nPart.Transparency = '..tostring(val)
	else
		trans = ''
	end
	if _CanCollide then
		local val = part.CanCollide
		collide = '\nPart.CanCollide = '..tostring(val)
	else
		collide = ''
	end
	if _CanTouch then
		local val = part.CanTouch
		touch = '\nPart.CanTouch = '..tostring(val)
	else
		touch = ''
	end
	if _CanQuery then
		local val = part.CanQuery
		query = '\nPart.CanQuery = '..tostring(val)
	else
		query = ''
	end
	if _Massless then
		local val = part.Massless
		massless = '\nPart.Massless = '..tostring(val)
	else
		massless = ''
	end
	if _RootPriority then
		local val = part.RootPriority
		rootprio = '\nPart.RootPriority = '..tostring(val)
	else
		rootprio = ''
	end
	if _Parent then
		local val = part.Parent
		if val == workspace.Source then
			parent = '\nPart.Parent = game.'..tostring(_Root)
		else
			parent = '\nPart.Parent = '..tostring(val)
		end
	end
	
		--Make the value
	local valuestr = "local Part = Instance.new('Part')"..anchor.. tostring(color).. tostring(mat).. tostring(size).. tostring(pos).. tostring(frame).. tostring(name).. tostring(trans).. tostring(collide).. tostring(touch).. tostring(query).. tostring(massless).. tostring(rootprio).. tostring(parent)..""
			local valueToCopy = clipboard.Value ..'\n\n' ..valuestr
			clipboard.Value = valueToCopy
	end
end
