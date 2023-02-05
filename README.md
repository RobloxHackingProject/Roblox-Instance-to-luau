# Roblox Instance To Luau
A Roblox Studio plugin that can convert Roblox studio instances into code compatible with Roblox Injectors.
Currently only supports these Instances: 
* Part
* Decal
* Texture
* Intvalue
* NumberValue
* StringValue
* CFrameValue
* Vector3Value
* RayValue
* ObjectValue
* Color3Value
* BrickColorValue
* Folder
* Tool
* Sound
* SoundGroup
* Script
* LocalScript
* SpawnLocation
* MeshPart

# How to use
1) Download and install the plugin here: https://www.roblox.com/library/12389549883
2) Inside the plugin tab inside of studio click on "Instance to Luau".
3) A floating menu will now appear, inside of here there are four buttons.
4) Press the "Create convertion folder" button, you can now find a folder called "Source" inside the workspace.
5) Put the instances you want to convert into the "Source" folder.
6) Click on the "Convert Instances" button.
7) A script will be made, you can find it inside the ReplicatedStorage.

# Limitations
This plugin currently only supports the instances listed at the beginning. 
This plugin will output a broken script when a texture property is left empty.
