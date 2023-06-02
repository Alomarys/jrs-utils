
local function getUtils ()
    local UtilAPI = {}

    UtilAPI.Versioner = VersionerAPI
    UtilAPI.Discord = DiscordAPI

    return UtilAPI
end


AddEventHandler('jrs:getUtils', function(cb)
    cb(getUtils())
end)

exports('initiate',function()
    return getUtils()
end)


VersionerAPI.checkRelease(GetCurrentResourceName(), 'https://github.com/Alomarys/jrs-utils.git')

