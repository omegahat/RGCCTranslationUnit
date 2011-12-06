wx  = parseTU("~/Projects/org/omegahat/R/RwxWidgets/autoGenerate/wx.cpp.001t.tu")
classes = getClassNodes(wx)
wxWindow = classes[["wxWindow"]]

iswxWindow = sapply(classes, 
                     function(classNode)
                        "wxWindow" %in% getBaseClasses(classNode, recursive = TRUE))

wxWindowClasses = classes[iswxWindow]

sapply(c("/tmp/wxWidgets/src", "/tmp/wxWidgets/R"),
        dir.create, recursive = TRUE)

Rprof("/tmp/wxWidgets/profile")
already = gsub("\\.R$", "", list.files("/tmp/wxWidgets/R"))
invisible(
 lapply(setdiff(names(wxWindowClasses), already),
        function(x) {
           print(x)
           bindings = createClassBindings( classes[[ x ]], wx, x)
           writeCode(bindings, 'native', paste("/tmp/wxWidgets/src/", x, ".cpp", sep = ""))
           writeCode(bindings, 'r', paste("/tmp/wxWidgets/R/", x, ".R", sep = ""))
           TRUE
        }))
Rprof(NULL)
prof = summaryRprof("/tmp/wxWidgets/profile")



x = lapply(r.files, function(x) try(source(x)))
r.files[sapply(x, inherits, "try-error")]
