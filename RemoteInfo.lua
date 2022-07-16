local left = peripheral.wrap("left")
local right = peripheral.wrap("right")
local power = "placeholder"
local me = ''
local content = ''
function check()
    local maxEnergy = left.getMaxEnergyStored("unknown")
    local energy = left.getEnergyStored("unknown")

    if energy > maxEnergy - maxEnergy/2 then
        power = "Online"
    else 
        power = "Offline or very low"
    end
    power = '["'..power..'"]'
end
function system()
    for o,l in pairs(right.getAvailableItems()) do
        me = me..',["'..l["name"]..'",'..'"'..l["qty"]..'"'..']'
    end
end

function send(content)
url = "https://poppersonalaccount-computercraftapi-5g5jq6446fpwv-5000.githubpreview.dev/"
local post, err = http.post(url, content)
content = ''
me = ''
if not post then
    printError(err)
    end
end
system()
check()
content = content..'{"info":['..power..me

send(content)
