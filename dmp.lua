function DumpCfg()
    local Resources = {}
    for i = 1, GetNumResources() do
        Resources[i] = GetResourceByFindIndex(i)
    end
	
	for i = 1, #Resources do
		for k, v in pairs({'config.lua'}) do
			data = LoadResourceFile(Resources[i], v)
			if data ~= nil then
                		print(data)
			end
		end
	end	
end
