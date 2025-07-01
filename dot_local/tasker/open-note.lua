#!/data/data/com.termux/files/usr/bin/lua

local notesPath = os.getenv("HOME")..'/storage/dcim/box/notes'

local fzfFilesTbl = {}
for file in io.popen(('ls %s'):format(notesPath)):lines() do
    local fileName = file:gsub(notesPath..'/', ''):gsub('.md$', '')
    table.insert(fzfFilesTbl, fileName)
end
local fzfFilesStr = table.concat(fzfFilesTbl, '\n')

local fileChoiceStr = io.popen(
    string.format('echo "%s" | fzf', fzfFilesStr)
):read('*a')

local fileChoiceStrip = fileChoiceStr:sub(1, #fileChoiceStr-1)

local command = ('termux-open "%s"'):format(notesPath..'/'..fileChoiceStrip..'.md')
os.execute(command)
