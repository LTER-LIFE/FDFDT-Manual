-- Custom block conversion for PDF output
-- SAFE + preserves citations + preserves all content

function Div(elem)

  local function wrap_in_env(el, envname)
    if FORMAT:match("latex") then
      local blocks = pandoc.List()

      blocks:insert(pandoc.RawBlock("latex",
        "\\begin{" .. envname .. "}"))

      for _, block in ipairs(el.content) do
        blocks:insert(block)
      end

      blocks:insert(pandoc.RawBlock("latex",
        "\\end{" .. envname .. "}"))

      return blocks
    end

    return elem
  end

  if elem.classes:includes("infobox") then
    return wrap_in_env(elem, "infobox")
  end

  if elem.classes:includes("examplebox") then
    return wrap_in_env(elem, "examplebox")
  end

  if elem.classes:includes("disclaimer") then
    return wrap_in_env(elem, "disclaimerbox")
  end

  return elem
end