local inputToRead = "test.dds"
local outputDF = "test_df.dds"
local outputIL = "test_il.dds"

local off = {
	magic = 0x4,
	headerSize = 0x5,
	height = 0xC,
	width = 0x10,
	fourCC = 0x54
}

local input = io.open(inputToRead, rb)

local buffer = input:read(off.magic)
if buffer == "DDS " then
	print("dds found")
end

buffer = input:read(1)
local headerSize = string.byte(buffer)
print("headerSize: " .. headerSize)

input:seek("set", off.height)
buffer = input:read(1)
local height = string.byte(buffer)
print("height: " .. height)

input:seek("set", off.width)
buffer = input:read(1)
local width = string.byte(buffer)
print("width: " .. width)

input:seek("set", off.fourCC)
buffer = input:read(4)
print("type: " .. buffer)

--[[
if buffer == "DDS |" then
	print("dds found")
else
	print("not a dds, found: " .. buffer)
end
]]

input:close()


--[[
else
	print("not a dds, found: " .. header .. type(header))
end
]]

--[[
for byte in header do
	table.insert(lines, line)
end

for i, line in ipairs(lines) do
	print(line)
end
]]

--[[
local header = ""
for i = 0, 5, 1 do
	local byte = input:read(1)
	header = tostring(header .. byte)
end
]]
