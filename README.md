# Roblox Instance To Luau
Code that can convert Roblox studio instances into code compatible with Roblox Injectors.
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

# How to use
1) Run this code in the Roblox studio command bar. `local folder = Instance.new('Folder', workspace) folder.Name = 'Source'`
2) Copy the code from 'script.lua'
3) Create a new script inside the serverscriptservice
4) Remove the print script and paste the code from step 2
5) Put your instances that are supported into the 'Source' folder
6) Run the game
7) Go to workspace and copy the saved value from the 'Output' instance saved in the workspace

# Limitations
This script currently only supports the instances listed at the beginning. 

You can not give the child the same name as the parent or give the parent the same name as the child as this will break the output.

This script will output a broken script when a texture property is left empty. (this can be prevented by disabling the texture property in the scripts settings.)
