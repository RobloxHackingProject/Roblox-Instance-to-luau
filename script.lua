--Select which properties should be printed
--Part and other
_Root = "game.Workspace" --Root of the children inside the Source folder
_Parent = true --Only for the children of the children of the Source folder.
_Name = true
_Transparency = true
_Anchored = true
_Color = true
_BrickColor = true
_Material = true
_Size = true
_Position = true
_CFrame = true
_CanCollide = true
_CanTouch = true
_CollisionGroup = true
_Shape = true

--Other instance related settings
_Value = true
_Texture = true
_Color3 = true
_ZIndex = true
_Face = true
_OffsetStudsU = true
_OffsetStudsV = true
_StudsPerTileU = true
_StudsPerTileV = true

--Extra values that are mostly not used
_CastShadow = true
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
			parent = '\nPart.Parent = '..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
			valuestr = "local " ..part.Name.. " = Instance.new('Part')\nlocal Part = "..part.Name..anchor.. tostring(color).. tostring(mat).. tostring(size).. tostring(pos).. tostring(frame).. tostring(name).. tostring(trans).. tostring(collide).. tostring(touch).. tostring(query).. tostring(massless).. tostring(rootprio).. tostring(parent)..""
	end
end
	if part:IsA('Decal') then
			if _Color3 then
				local val = part.Color3
				color3 = '\nPart.Color3 = Color3.new('..tostring(val)..')'
			else
				color3 = ''
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
		if _Texture then
			local val = part.Texture
			texture = '\nPart.Texture = '..tostring(val)
		else
			texture = ''
		end
		if _ZIndex then
			local val = part.ZIndex
			dex = '\nPart.ZIndex = '..tostring(val)
		else
			dex = ''
		end
		if _Face then
			local val = part.Face
			face = '\nPart.Face = '..tostring(val)
		else
			face = ''
		end
			if _Parent then
				local val = part.Parent.Name
				if val == workspace.Source then
					parent = '\nPart.Parent = game.'..tostring(_Root)
				else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
				end
		end
		valuestr = "local "..part.Name.. " = Instance.new('Decal')\nlocal Part = "..part.Name.. tostring(color3).. tostring(name).. tostring(trans).. tostring(parent).. tostring(texture).. tostring(dex).. tostring(face)..""
	end
	if part:IsA('Texture') then
		if _Color3 then
			local val = part.Color3
			color3 = '\nPart.Color3 = Color3.new('..tostring(val)..')'
		else
			color3 = ''
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
		if _Texture then
			local val = part.Texture
			texture = '\nPart.Texture = '..tostring(val)
		else
			texture = ''
		end
		if _ZIndex then
			local val = part.ZIndex
			dex = '\nPart.ZIndex = '..tostring(val)
		else
			dex = ''
		end
		if _Face then
			local val = part.Face
			face = '\nPart.Face = '..tostring(val)
		else
			face = ''
		end
		if _OffsetStudsU then
			local val = part.OffsetStudsU
			offsetu = '\nPart.OffsetStudsU = '..tostring(val)
		else
			offsetu = ''
		end
		if _OffsetStudsV then
			local val = part.OffsetStudsV
			offsetv = '\nPart.OffsetStudsV = '..tostring(val)
		else
			offsetv = ''
		end
		if _StudsPerTileU then
			local val = part.StudsPerTileU
			studsu = '\nPart.StudsPerTileU = '..tostring(val)
		else
			studsu = ''
		end
		if _StudsPerTileV then
			local val = part.StudsPerTileV
			studsv = '\nPart.StudsPerTileV = '..tostring(val)
		else
			studsv = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('Texture')".. tostring(color3).. tostring(name).. tostring(trans).. tostring(parent).. tostring(texture).. tostring(dex).. tostring(face).. tostring(offsetu).. tostring(offsetv).. tostring(studsu).. tostring(studsv)..""
	end
	if part:IsA('BoolValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = '..tostring(val)
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('BoolValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('IntValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = '..tostring(val)
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('IntValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('NumberValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = '..tostring(val)
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('NumberValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('StringValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = "'..tostring(val).. '"'
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('StringValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('CFrameValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = CFrame.new('..tostring(val).. ')'
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('CFrameValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('Vector3Value') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = Vector3.new('..tostring(val).. ')'
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('Vector3Value')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('RayValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = '..tostring(val)
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('RayValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('ObjectValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = '..tostring(val)
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('ObjectValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('Color3Value') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = Color3.new('..tostring(val).. ')'
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('Color3Value')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	if part:IsA('BrickColorValue') then
		if _Name then
			local val = part.Name
			name = '\nPart.Name = `'..tostring(val).. '`'
		else
			name = ''
		end
		if _Value then
			local val = part.Value
			value = '\nPart.Value = '..tostring(val)
		else
			value = ''
		end
		if _Parent then
			local val = part.Parent
			if val == workspace.Source then
				parent = '\nPart.Parent = game.'..tostring(_Root)
			else
				parent = '\nPart.Parent = '..tostring(_Root).."."..tostring(val)
			end
		end
		valuestr = "local Part = Instance.new('BrickColorValue')".. tostring(name).. tostring(parent).. tostring(value)..""
	end
	
		--Make the value
			local valueToCopy = clipboard.Value ..'\n\n' ..valuestr
			clipboard.Value = valueToCopy
	end
