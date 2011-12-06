tu = parseTU("inst/examples/shapes.cc.t00.tu")

z = createDerivedClass("Ellipse", tu)

# Two classes in one action and amortize the cost of calculating the
# class nodes and resolving methods.
z = createDerivedClass(c("Rectangle", "Ellipse"), tu)


# This version explicitly computes the class nodes and resolves the methods
# presumably for use in other circumstances, e.g. generating the bindings to
# the existing classes and

types = DefinitionContainer()
classNodes = getClassNodes(tu, "shapes") # XXX leave out the shapes and we get an error because of scope_ref and bit_ior_expr
methods = lapply(classNodes, function(n) resolveType(getClassMethods(n), tu, types))
zz =
 lapply(c("Rectangle", "Ellipse"),
        function(k) {
         def = resolveType(classNodes[[k]], tu, types)
         createDerivedClass(def, methods = methods[c(k, def@ancestorClasses)])
        })
                                                                       
if(identical(zz, z))
  cat("Same results with both approaches\n")

##########################################################################


className = "Ellipse"

node = classNodes[["Ellipse"]]
ancestors = getBaseClasses(node, recursive = TRUE)
methods = lapply(c(className, ancestors),
                   function(x) {
                      resolveType(getClassMethods(classNodes[[x]]), tu, types)
                   })

z = xcreateDerivedClass(className, tu, types, classNodes)
