function onLoad()

end
function onUnload() end
function onSoftEvent(...)
	print("---e")
	for k,v in pairs({...}) do
		print(type(v).." "..tostring(k)..": "..tostring(v))
	end
	print("---e")
	e = {...}
	if e[1] == "textbox_submit" then
		if(e[2] == "$_consoleMenu.input") then
			--interpret(e[3])
		end
	end
	if e[1] == "button_pressed" then
		pushTask("ein", "neuer", "task")
		pushEvent("auch", "events", "können", "in die queue")
	end
end
function onTask(...)
	print("---t")
	for k,v in pairs({...}) do
		print(type(v).." "..tostring(k)..": "..tostring(v))
	end
	print("---t")
end