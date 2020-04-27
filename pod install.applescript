tell application "Finder" to set currentFolder to target of front Finder window as text
set theWin to currentFolder's POSIX path

tell application "Terminal"
	if not (exists window 1) then reopen
	activate
	tell application "System Events" to keystroke "t" using command down
	delay 0.25
	do script "cd " & quoted form of theWin & ";pod install; exit;" in window 1
end tell