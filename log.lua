-- log
-- Mistrza (https://github.com/mistrza)
-- Inspired by rxi (https://github.com/rxi)

local log = {
   _version = '1.0',
   _developer = 'Mistza',
   usecolor = true,
   reset_color = '\27[0m',
   output_file = nil
}

log.modes = {
   trace = '\27[34m',
   debug = '\27[36m',
   info = '\27[32m',
   warn = '\27[33m',
   error = '\27[31m',
   fatal = '\27[35m'
}

for mode, color in pairs(log.modes) do
   log[mode] = function(msg)
      local meta = string.format('[%s %s] ',
         mode:upper(), os.date("%H:%M:%S"))
      
      local content
      if log.usecolor then
         content = color .. meta .. log.reset_color .. msg
      else
         content = meta .. msg
      end
      
      print(content)
      if log.output_file then
         io.open(log.output_file, 'a'):write(content .. '\n'):close()
      end
   end
end

return log
