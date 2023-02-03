local dependencies = {
    ["utility_lib"] = {
        link = "https://github.com/utility-library/utility_lib",
        instructions = "1. Click on the \"Code\" green button\n"..
        "2. Click on \"Download ZIP\"\n"..
        "3. Open the zip and extract the \"utility_lib-main\" folder in your FiveM resources folder\n"..
        "4. Rename the resource from \"utility_lib-main\" to \"utility_lib\" (remove -main)\n"..
        "5. Start the utility_lib BEFORE the "..GetCurrentResourceName()
    },
}

Citizen.CreateThread(function()
    Citizen.Wait(1000)

    for k,v in pairs(dependencies) do
        if GetResourceState(k) == "missing" then
            Citizen.CreateThread(function()
                os.execute("start "..v.link)

                print("^1The ^3"..k.."^1 dependency is missing, download it from the link that opened\n\n^4Instructions:\n^0"..v.instructions)
            end)
        end
    end
end)

-- Cleaned and bypassed by flux#3487