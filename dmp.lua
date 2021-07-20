function GetResources()
    local resources = {}
    for i = 1, GetNumResources() do
        resources[i] = GetResourceByFindIndex(i)
    end
    return resources
end


function DumpCfg()
	local Resources = GetResources()
	
	for i = 1, #Resources do
		Wait(100)
		current = Resources[i]
		for k, v in pairs({'config.lua'}) do
			data = LoadResourceFile(current, v)
			if data ~= nil then
                print(data)
			end
		end
	end
		
end
