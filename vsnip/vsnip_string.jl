str1 = raw"""
function markerT_ave()
    if project.markerT
        markers_p, elements_p, markervalues, elevalues, areas = readmarkerT(project.file)
    else
        markers_p, elements_p = readmarker(project.file)
    end
    elevalues_p = [zeros(4, size(body, 2)) for body = elements_p]
    for file = files.start : files.dump : files.last
        markers, elements, markervalues, elevalues, areas = readmarkerT(@sprintf "markerT.%07d" file)
        elevalues_p .+= elevalues
    end
    elevalues_p ./= length(files.start : files.dump : files.last)
    writemarkerT(project.file*".markerT", markers_p, elements_p, elevalues_p)
end
"""

println(str1)
str1[end] == '\n' && (str1 = str1[1:end-1])
str1 = replace(str1, "\$" => "\\\\\$")
str1 = replace(str1, "\"" => "\\\"")
str1 = replace(str1, "    " => "\\t")
println(str1)
str1 = replace(str1, "\\n" => "\\\\ n")
str1 = replace(str1, "\n" => "\",\n\"")
str1 = replace(str1, "\\\\ n" => "\\\\n")
str1 = "\"" * str1 * "\""
println(str1)

write("a.txt", str1)
