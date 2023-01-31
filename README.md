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

# How to use:
1) Run this code in the Roblox studio command bar. `local folder = Instance.new('Folder', workspace) folder.Name = 'Source'`
2) Copy the code from 'script.lua'
3) Create a new script inside the serverscriptservice
4) Remove the print script and paste the code from step 2
5) Put your instances that are supported into the 'Source' folder
6) Run the game
7) Go to workspace and copy the saved value from the 'Output' instance saved in the workspace

# Limitations:
This script currently only supports the instances listed at the beginning. One of the other limitations is that nothing can be called 'Source' or have 'Source' in the name. DOING THIS WILL BREAK THE PARENT SYSTEM. 
