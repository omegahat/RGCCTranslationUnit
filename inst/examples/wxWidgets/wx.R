library(RGCCTranslationUnit)
tu = parseTU("inst/examples/wxWidgets/wxSpinButton.cc.t00.tu")
classes = RGCCTranslationUnit:::getClassNodes(tu)
classes = classes[ - grep("^std::", names(classes)) ]
classes = classes[ - grep("^(_?pthread|_G_|_gthread)", names(classes)) ]
  # template classes
classes = classes[ - grep("<", names(classes)) ]

names(classes)[ - grep("^wx", names(classes)) ]

### Class methods, etc.

m = getClassMethods(classes$wxSpinButton)

   # Which are constructors? Can look at the names, or the class
sapply(m, class)
names(m)[ sapply(m, inherits, "NativeClassConstructor") ]


   # Which methods are virtual
names(m)[ sapply(m, `[[`, "virtual") ] 


  # Are any static?

  # Get super classes
getBaseClasses(classes$wxSpinButton)
getBaseClasses( classes$wxSpinButton, , TRUE)
getBaseClasses( classes$wxSpinButton, TRUE, TRUE)


#############
wx.enums = getEnumerations(tu)
wx.enums = wx.enums [ - grep("(^\\.|::\\.)", names(wx.enums)) ]
