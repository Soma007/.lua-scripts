script_name = "Comenta Traducao"
script_description = "Comenta a traducao anterior."
script_author = "Guizzoni"
script_version = "1.0"

function comenta(legenda, linhas)
   for z, i in ipairs(linhas) do
      local l = legenda[i]
            linhas=subs[i]
            text=subs[i].text
      l.text = "{" .. l.text .. "}"
      legenda[i] = l
   end
   aegisub.set_undo_point(script_name)
end

aegisub.register_macro(script_name, script_description, comenta)