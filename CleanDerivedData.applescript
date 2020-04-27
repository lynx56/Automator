set DerivedDataFolder to (path to library folder from user domain as text) & "Developer:Xcode:DerivedData" as alias
tell application "Finder" 
	delete (every item of folder DerivedDataFolder)
end tell
