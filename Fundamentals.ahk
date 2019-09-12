#NoEnv									;Speed up the process
#SingleInstance, force							;When updating script, replaces the old one.
#MaxThreadsperHotkey 2							;X threads per key.

#v::									;Pinging google. Maybe we should hide the window and get the avg. result?
Run,%comspec% /k ping google.com -t
return

#c::									;Disabling a couple of bandwidth drainers.
Run %comspec% /c /k ipconfig /flushdns,,hide
Process,Close,InstallAgent.exe
Process,Close,InstallAgentUserBroker.exe
return

#p::									;Coordinates of the mouse. Press again for disable.
toggle :=!toggle
loop{
    if toggle
    {
		MouseGetPos X,Y
		ToolTip X:%X% ^ Y:%Y%
	}
	else
	{
		ToolTip
		break
	}	
}
return

<!Numpad6::								;Skip track. I dont have the special keyboard button fot it
Send,{Media_Next}
return

<!Numpad4::								;Previous Track.
Send,{Media_Prev}
return

<!NumpadEnter::								;Pause/play track.
Send,{Media_Play_Pause}
