local left = peripheral.wrap("left")
local right = peripheral.wrap("right")
local power = "placeholder"



local maxEnergy = left.getMaxEnergyStored("unknown")
local energy = left.getEnergyStored("unknown")

if energy > maxEnergy - maxEnergy/2 then
    power = "Online"
else 
    power = "Offline or very low"
end
local content = '{"power": ' ..'"'.. power .. '"}'
function send(content)
url = "https://poppersonalaccount-computercraftapi-5g5jq6446fpwv-5000.githubpreview.dev/"
local post, err = http.post(url, content)
if not post then
    printError(err)
    end
end
send(content)