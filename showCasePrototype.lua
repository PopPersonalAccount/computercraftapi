while true do
    term.setBackgroundColor(colors.gray)
    term.setTextColor(colors.orange)
    local message = read()

    local content = '{"power": ' ..'"'.. message .. '"}'

    function send(content)
    url = "https://poppersonalaccount-computercraftapi-5g5jq6446fpwv-5000.githubpreview.dev/"
    local post, err = http.post(url, content)
    if not post then
        printError(err)
        end
    end
    send(content)
end