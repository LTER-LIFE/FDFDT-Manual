-- Custom block conversion for PDF output
-- Converts Pandoc fenced divs to LaTeX tcolorbox environments

function Div(elem)
-- Get the class from the element
local classes = elem.classes

if classes:includes("infobox") then
-- Convert to LaTeX infobox
return pandoc.RawBlock(
  'latex',
  '\\begin{infobox}\n' .. 
  pandoc.write(pandoc.Pandoc(elem.content), 'latex') ..
  '\\end{infobox}\n'
)
end

if classes:includes("examplebox") then
-- Convert to LaTeX examplebox
return pandoc.RawBlock(
  'latex',
  '\\begin{examplebox}\n' ..
  pandoc.write(pandoc.Pandoc(elem.content), 'latex') ..
  '\\end{examplebox}\n'
)
end

if classes:includes("disclaimer") then
-- Convert to LaTeX disclaimerbox
return pandoc.RawBlock(
  'latex',
  '\\begin{disclaimerbox}\n' ..
  pandoc.write(pandoc.Pandoc(elem.content), 'latex') ..
  '\\end{disclaimerbox}\n'
)
end

return elem
end