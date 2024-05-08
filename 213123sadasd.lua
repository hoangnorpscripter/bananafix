scriptkey = keyscript

local keylist = {"a", "b", "c"}

local keyFound = false
for _, key in ipairs(keylist) do
    if scriptkey == key then
        keyFound = true
        break
    end
end

if keyFound then
    print("Khóa đúng")
    game.StarterGui:SetCore("SendNotification", {
        Title = "Tìm thấy khóa",
        Text = "Cảm ơn bạn đã mua khóa",
        Icon = "rbxassetid://1234567890"
    })
    wait(3)
    print("Kịch bản")
else
    print("Kịch bản không được tải")
    game.StarterGui:SetCore("SendNotification", {
        Title = "Khóa không chính xác",
        Text = "Vui lòng mua một khóa hợp lệ",
        Icon = "rbxassetid://1234567890"
    })
    wait(5)
    print("Thoát kịch bản")
end
