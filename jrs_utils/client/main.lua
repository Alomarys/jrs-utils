local function getUtils ()
    local UtilAPI = {}

    UtilAPI.YtAudioPlayer = YtAudioPlayer
    UtilAPI.Discord = DiscordAPI
    UtilAPI.Ped = PedAPI
    UtilAPI.Misc = MiscAPI
    
    return UtilAPI
end

AddEventHandler('jrs:getUtils', function(cb)
    cb(getUtils())
end)

exports('initiate',function()
    return getUtils()
end)