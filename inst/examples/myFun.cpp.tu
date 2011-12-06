@1      namespace_decl   name: @2       srcp: <internal>:0      
                         dcls: @3      
@2      identifier_node  strg: ::       lngt: 2       
@3      var_decl         name: @4       type: @5       srcp: myFun.cpp:60     
                         chan: @6       static         init: @7      
                         size: @8       algn: 32       used: 0       
@4      identifier_node  strg: MyFixedInt              lngt: 10      
@5      integer_type     qual: c        name: @9       unql: @10     
                         size: @8       algn: 32       prec: 32      
                         min : @11      max : @12     
@6      var_decl         name: @13      type: @14      srcp: myFun.cpp:57     
                         chan: @15      size: @16      algn: 32      
                         used: 0       
@7      integer_cst      type: @10      low : 20      
@8      integer_cst      type: @17      low : 32      
@9      type_decl        name: @18      type: @10      srcp: <internal>:0      
                         chan: @19     
@10     integer_type     name: @9       size: @8       algn: 32      
                         prec: 32       min : @11      max : @12     
@11     integer_cst      type: @10      high: -1       low : -2147483648 
@12     integer_cst      type: @10      low : 2147483647 
@13     identifier_node  strg: cur      lngt: 3       
@14     pointer_type     name: @15      unql: @20      size: @16     
                         algn: 32       ptd : @21     
@15     type_decl        name: @22      type: @14      srcp: myFun.cpp:55     
                         chan: @23     
@16     integer_cst      type: @17      low : 32      
@17     integer_type     name: @24      size: @25      algn: 64      
                         prec: 36       unsigned       min : @26     
                         max : @27     
@18     identifier_node  strg: int      lngt: 3       
@19     namespace_decl   name: @28      srcp: <internal>:0      
                         C              dcls: @29     
@20     pointer_type     size: @16      algn: 32       ptd : @21     
@21     function_type    size: @25      algn: 64       retn: @30     
                         prms: @31     
@22     identifier_node  strg: MyFunType               lngt: 9       
@23     var_decl         name: @32      type: @20      srcp: myFun.cpp:53     
                         chan: @33      size: @16      algn: 32      
                         used: 0       
@24     identifier_node  strg: bit_size_type           lngt: 13      
@25     integer_cst      type: @17      low : 64      
@26     integer_cst      type: @17      low : 0       
@27     integer_cst      type: @17      high: 15       low : -1      
@28     identifier_node  strg: std      lngt: 3       
@29     type_decl        name: @34      type: @35      scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @36     
@30     integer_type     name: @37      size: @38      algn: 8       
                         prec: 8        min : @39      max : @40     
@31     tree_list        valu: @10      chan: @41     
@32     identifier_node  strg: f        lngt: 1       
@33     function_decl    name: @42      mngl: @43      type: @44     
                         srcp: myFun.cpp:48            chan: @45     
                         args: @46      extern         body: @47     
@34     identifier_node  strg: type_info               lngt: 9       
@35     record_type      name: @29      algn: 8        struct        
                         binf: @48     
@36     type_decl        name: @49      type: @50      scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @51     
@37     type_decl        name: @52      type: @30      srcp: <internal>:0      
                         chan: @9      
@38     integer_cst      type: @17      low : 8       
@39     integer_cst      type: @30      high: -1       low : -128    
@40     integer_cst      type: @30      low : 127     
@41     tree_list        valu: @53      chan: @54     
@42     identifier_node  strg: setState lngt: 8       
@43     identifier_node  strg: _Z8setState5State       lngt: 17      
@44     function_type    size: @25      algn: 64       retn: @55     
                         prms: @56     
@45     function_decl    name: @57      mngl: @58      type: @59     
                         srcp: myFun.cpp:44            chan: @60     
                         extern         body: @61     
@46     parm_decl        name: @62      type: @55      scpe: @33     
                         srcp: myFun.cpp:48            argt: @55     
                         size: @16      algn: 32       used: 1       
@47     compound_stmt    line: 51       body: @63     
@48     binfo            type: @35     
@49     identifier_node  strg: bad_alloc               lngt: 9       
@50     record_type      name: @36      algn: 8        struct        
                         binf: @64     
@51     function_decl    name: @65      type: @66      scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @67      C              undefined     
                         extern        
@52     identifier_node  strg: char     lngt: 4       
@53     real_type        name: @68      size: @25      algn: 64      
                         prec: 64      
@54     tree_list        valu: @69     
@55     enumeral_type    name: @70      size: @16      algn: 32      
                         prec: 32       unsigned       min : @71     
                         max : @72      csts: @73     
@56     tree_list        valu: @55      chan: @54     
@57     identifier_node  strg: getState lngt: 8       
@58     identifier_node  strg: _Z8getStatev            lngt: 12      
@59     function_type    size: @25      algn: 64       retn: @55     
                         prms: @54     
@60     function_decl    name: @74      mngl: @75      type: @76     
                         srcp: myFun.cpp:42            chan: @77     
                         undefined      extern        
@61     compound_stmt    line: 46       body: @78     
@62     identifier_node  strg: val      lngt: 3       
@63     scope_stmt       line: 48       begn           clnp          
                         next: @79     
@64     binfo            type: @50     
@65     identifier_node  strg: exit     lngt: 4       
@66     function_type    size: @25      algn: 64       retn: @69     
                         prms: @80     
@67     function_decl    name: @81      type: @82      scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @83      C              undefined     
                         extern        
@68     type_decl        name: @84      type: @53      srcp: <internal>:0      
                         chan: @85     
@69     void_type        name: @86      algn: 8       
@70     type_decl        name: @87      type: @55      srcp: myFun.cpp:16     
                         chan: @88     
@71     integer_cst      type: @55      low : 0       
@72     integer_cst      type: @55      low : 7       
@73     tree_list        purp: @89      valu: @90      chan: @91     
@74     identifier_node  strg: arr      lngt: 3       
@75     identifier_node  strg: _Z3arrPiS_              lngt: 10      
@76     function_type    size: @25      algn: 64       retn: @10     
                         prms: @92     
@77     function_decl    name: @93      mngl: @94      type: @95     
                         srcp: myFun.cpp:40            chan: @96     
                         undefined      extern        
@78     scope_stmt       line: 44       begn           clnp          
                         next: @97     
@79     compound_stmt    line: 48       body: @98      next: @99     
@80     tree_list        valu: @10      chan: @54     
@81     identifier_node  strg: abort    lngt: 5       
@82     function_type    size: @25      algn: 64       retn: @69     
                         prms: @54     
@83     function_decl    name: @100     type: @101     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @102     C              undefined     
                         extern        
@84     identifier_node  strg: double   lngt: 6       
@85     type_decl        name: @103     type: @104     srcp: <internal>:0      
                         chan: @105    
@86     type_decl        name: @106     type: @69      srcp: <internal>:0      
                         chan: @107    
@87     identifier_node  strg: State    lngt: 5       
@88     const_decl       name: @108     type: @55      srcp: myFun.cpp:16     
                         chan: @109     cnst: @110    
@89     identifier_node  strg: ON       lngt: 2       
@90     integer_cst      type: @55      low : 0       
@91     tree_list        purp: @108     valu: @110    
@92     tree_list        valu: @111     chan: @112    
@93     identifier_node  strg: getU     lngt: 4       
@94     identifier_node  strg: _Z4getUv lngt: 8       
@95     function_type    size: @25      algn: 64       retn: @113    
                         prms: @54     
@96     function_decl    name: @114     mngl: @115     type: @116    
                         srcp: myFun.cpp:38            chan: @117    
                         undefined      extern        
@97     compound_stmt    line: 44       body: @118     next: @119    
@98     expr_stmt        line: 49       expr: @120     next: @121    
@99     scope_stmt       line: 51       end            clnp          
@100    identifier_node  strg: fprintf_unlocked        lngt: 16      
@101    function_type    size: @25      algn: 64       retn: @10     
                         prms: @122    
@102    function_decl    name: @123     type: @124     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @125     C              undefined     
                         extern        
@103    identifier_node  strg: float    lngt: 5       
@104    real_type        name: @85      size: @16      algn: 32      
                         prec: 32      
@105    type_decl        type: @126     srcp: <internal>:0      
                         chan: @127    
@106    identifier_node  strg: void     lngt: 4       
@107    type_decl        name: @128     type: @129     srcp: <internal>:0      
                         chan: @130    
@108    identifier_node  strg: OFF      lngt: 3       
@109    const_decl       name: @89      type: @55      srcp: myFun.cpp:16     
                         chan: @131     cnst: @90     
@110    integer_cst      type: @55      low : 4       
@111    pointer_type     size: @16      algn: 32       ptd : @10     
@112    tree_list        valu: @111     chan: @54     
@113    pointer_type     size: @16      algn: 32       ptd : @132    
@114    identifier_node  strg: mine     lngt: 4       
@115    identifier_node  strg: _Z4mineR2_A             lngt: 11      
@116    function_type    size: @25      algn: 64       retn: @10     
                         prms: @133    
@117    function_decl    name: @134     mngl: @135     type: @136    
                         srcp: myFun.cpp:37            chan: @137    
                         undefined      extern        
@118    return_stmt      line: 45       expr: @138    
@119    scope_stmt       line: 46       end            clnp          
@120    modify_expr      type: @55      op 0: @139     op 1: @46     
@121    return_stmt      line: 50       expr: @140    
@122    tree_list        valu: @141     chan: @142    
@123    identifier_node  strg: fputs_unlocked          lngt: 14      
@124    function_type    size: @25      algn: 64       retn: @10     
@125    function_decl    name: @143     type: @144     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @145     C              undefined     
                         extern        
@126    integer_type     size: @146     algn: 64       prec: 64      
                         unsigned       min : @147     max : @148    
@127    type_decl        type: @149     srcp: <internal>:0      
                         chan: @150    
@128    identifier_node  strg: __g77_ulongint          lngt: 14      
@129    integer_type     name: @151     size: @146     algn: 64      
                         prec: 64       unsigned       min : @152    
                         max : @153    
@130    type_decl        name: @154     type: @155     srcp: <internal>:0      
                         chan: @156    
@131    type_decl        name: @157     type: @55      srcp: myFun.cpp:16     
                         artificial     chan: @158    
@132    union_type       name: @137     size: @25      algn: 32      
                         union          flds: @159     fncs: @160    
                         binf: @161    
@133    tree_list        valu: @162     chan: @54     
@134    identifier_node  strg: bar      lngt: 3       
@135    identifier_node  strg: _Z3bari2_A2_Xm          lngt: 14      
@136    function_type    size: @25      algn: 64       retn: @163    
                         prms: @164    
@137    type_decl        name: @165     type: @132     srcp: myFun.cpp:35     
                         chan: @166    
@138    init_expr        type: @55      op 0: @167     op 1: @139    
@139    var_decl         name: @168     type: @55      srcp: myFun.cpp:18     
                         chan: @70      size: @16      algn: 32      
                         used: 1       
@140    init_expr        type: @55      op 0: @169     op 1: @139    
@141    pointer_type     size: @16      algn: 32       ptd : @69     
@142    tree_list        valu: @170    
@143    identifier_node  strg: printf_unlocked         lngt: 15      
@144    function_type    size: @25      algn: 64       retn: @10     
                         prms: @171    
@145    function_decl    name: @172     type: @101     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @173     C              undefined     
                         extern        
@146    integer_cst      type: @17      low : 64      
@147    integer_cst      type: @126     low : 0       
@148    integer_cst      type: @126     high: -1       low : -1      
@149    integer_type     size: @146     algn: 64       prec: 64      
                         min : @174     max : @175    
@150    type_decl        type: @176     srcp: <internal>:0      
                         chan: @177    
@151    type_decl        name: @178     type: @129     srcp: <internal>:0      
                         chan: @179    
@152    integer_cst      type: @129     low : 0       
@153    integer_cst      type: @129     high: -1       low : -1      
@154    identifier_node  strg: __g77_longint           lngt: 13      
@155    integer_type     name: @179     size: @146     algn: 64      
                         prec: 64       min : @180     max : @181    
@156    type_decl        name: @182     type: @183     srcp: <internal>:0      
                         chan: @184    
@157    identifier_node  strg: ._3      lngt: 3       
@158    const_decl       name: @185     type: @186     srcp: myFun.cpp:14     
                         chan: @187     cnst: @188    
@159    field_decl       name: @189     type: @10      scpe: @132    
                         srcp: myFun.cpp:33            chan: @190    
                         public         size: @8       algn: 32      
                         bpos: @191    
@160    function_decl    name: @192     type: @193     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         chan: @194     operator       assign        
                         member         public         args: @195    
                         undefined      static        
@161    binfo            type: @132    
@162    reference_type   size: @16      algn: 32       refd: @196    
@163    pointer_type     size: @16      algn: 32       ptd : @196    
@164    tree_list        valu: @10      chan: @197    
@165    identifier_node  strg: U        lngt: 1       
@166    type_decl        name: @198     type: @132     srcp: myFun.cpp:32     
                         artificial     chan: @199    
@167    result_decl      type: @55      scpe: @45      srcp: myFun.cpp:44     
                         size: @16      algn: 32      
@168    identifier_node  strg: status   lngt: 6       
@169    result_decl      type: @55      scpe: @33      srcp: myFun.cpp:48     
                         size: @16      algn: 32      
@170    pointer_type     size: @16      algn: 32       ptd : @200    
@171    tree_list        valu: @170    
@172    identifier_node  strg: fprintf  lngt: 7       
@173    function_decl    name: @201     type: @124     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @202     C              undefined     
                         extern        
@174    integer_cst      type: @149     high: -2147483648  low : 0       
@175    integer_cst      type: @149     high: 2147483647  low : -1      
@176    integer_type     size: @146     algn: 64       prec: 64      
                         unsigned       min : @203     max : @204    
@177    type_decl        type: @205     srcp: <internal>:0      
                         chan: @206    
@178    identifier_node  strg: long long unsigned int  lngt: 22      
@179    type_decl        name: @207     type: @155     srcp: <internal>:0      
                         chan: @208    
@180    integer_cst      type: @155     high: -2147483648  low : 0       
@181    integer_cst      type: @155     high: 2147483647  low : -1      
@182    identifier_node  strg: __g77_uinteger          lngt: 14      
@183    integer_type     name: @209     size: @8       algn: 32      
                         prec: 32       unsigned       min : @210    
                         max : @211    
@184    type_decl        name: @212     type: @213     srcp: <internal>:0      
                         chan: @214    
@185    identifier_node  strg: BLUE     lngt: 4       
@186    enumeral_type    name: @215     size: @16      algn: 32      
                         prec: 32       unsigned       min : @216    
                         max : @217     csts: @218    
@187    const_decl       name: @219     type: @186     srcp: myFun.cpp:14     
                         chan: @220     cnst: @221    
@188    integer_cst      type: @186     low : 2       
@189    identifier_node  strg: x        lngt: 1       
@190    field_decl       name: @222     type: @53      scpe: @132    
                         srcp: myFun.cpp:34            chan: @223    
                         public         size: @25      algn: 64      
                         bpos: @191    
@191    integer_cst      type: @17      low : 0       
@192    identifier_node  operator      
@193    method_type      unql: @224     size: @25      algn: 64      
                         clas: @132     retn: @225     prms: @226    
@194    function_decl    name: @198     type: @227     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         chan: @228     member         public        
                         constructor    args: @229     undefined     
                         static        
@195    parm_decl        name: @230     type: @231     srcp: myFun.cpp:32     
                         artificial     chan: @232     argt: @231    
                         size: @16      algn: 32       used: 0       
@196    record_type      name: @233     unql: @234     size: @25     
                         algn: 32       struct         flds: @235    
                         fncs: @236     binf: @237    
@197    tree_list        valu: @234     chan: @238    
@198    identifier_node  strg: ._4      lngt: 3       
@199    type_decl        name: @239     type: @240     srcp: myFun.cpp:27     
                         artificial     chan: @233    
@200    integer_type     qual: c        name: @37      unql: @30     
                         size: @38      algn: 8        prec: 8       
                         min : @39      max : @40     
@201    identifier_node  strg: fputs    lngt: 5       
@202    function_decl    name: @241     type: @144     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @242     C              undefined     
                         extern        
@203    integer_cst      type: @176     low : 0       
@204    integer_cst      type: @176     high: -1       low : -1      
@205    integer_type     size: @8       algn: 32       prec: 32      
                         unsigned       min : @243     max : @244    
@206    type_decl        type: @245     srcp: <internal>:0      
                         chan: @246    
@207    identifier_node  strg: long long int           lngt: 13      
@208    type_decl        name: @247     type: @183     srcp: <internal>:0      
                         chan: @209    
@209    type_decl        name: @248     type: @183     srcp: <internal>:0      
                         chan: @249    
@210    integer_cst      type: @183     low : 0       
@211    integer_cst      type: @183     low : -1      
@212    identifier_node  strg: __g77_integer           lngt: 13      
@213    integer_type     name: @250     size: @8       algn: 32      
                         prec: 32       min : @251     max : @252    
@214    type_decl        name: @253     type: @254     srcp: <internal>:0      
                         chan: @255    
@215    type_decl        name: @256     type: @186     srcp: myFun.cpp:14     
                         artificial     chan: @257    
@216    integer_cst      type: @186     low : 0       
@217    integer_cst      type: @186     low : 3       
@218    tree_list        purp: @258     valu: @259     chan: @260    
@219    identifier_node  strg: GREEN    lngt: 5       
@220    const_decl       name: @258     type: @186     srcp: myFun.cpp:14     
                         chan: @215     cnst: @259    
@221    integer_cst      type: @186     low : 1       
@222    identifier_node  strg: y        lngt: 1       
@223    type_decl        name: @198     type: @132     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
@224    method_type      size: @25      algn: 64       clas: @132    
                         retn: @225     prms: @226    
@225    reference_type   size: @16      algn: 32       refd: @132    
@226    tree_list        valu: @113     chan: @261    
@227    method_type      unql: @262     size: @25      algn: 64      
                         clas: @132     retn: @69      prms: @263    
@228    function_decl    name: @264     type: @227     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         chan: @265     member         public        
                         constructor    args: @266     undefined     
                         static        
@229    parm_decl        name: @230     type: @231     srcp: myFun.cpp:32     
                         artificial     chan: @267     argt: @231    
                         size: @16      algn: 32       used: 0       
@230    identifier_node  strg: this     lngt: 4       
@231    pointer_type     qual: c        unql: @113     size: @16     
                         algn: 32       ptd : @132    
@232    parm_decl        name: @268     type: @269     srcp: myFun.cpp:32     
                         argt: @269     size: @16      algn: 32      
                         used: 1       
@233    type_decl        name: @270     type: @196     srcp: myFun.cpp:25     
                         chan: @271    
@234    record_type      name: @271     size: @25      algn: 32      
                         struct         flds: @235     fncs: @236    
                         binf: @237    
@235    field_decl       name: @272     type: @10      scpe: @234    
                         srcp: myFun.cpp:21            chan: @273    
                         public         size: @8       algn: 32      
                         bpos: @191    
@236    function_decl    name: @192     type: @274     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         chan: @275     operator       assign        
                         member         public         args: @276    
                         undefined      extern        
@237    binfo            type: @234    
@238    tree_list        valu: @240     chan: @277    
@239    identifier_node  strg: _X       lngt: 2       
@240    record_type      name: @199     size: @25      algn: 32      
                         struct         flds: @278     fncs: @279    
                         binf: @280    
@241    identifier_node  strg: printf   lngt: 6       
@242    function_decl    name: @281     type: @282     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @283     C              undefined     
                         extern        
@243    integer_cst      type: @205     low : 0       
@244    integer_cst      type: @205     low : -1      
@245    integer_type     size: @284     algn: 16       prec: 16      
                         unsigned       min : @285     max : @286    
@246    type_decl        type: @287     srcp: <internal>:0      
                         chan: @288    
@247    identifier_node  strg: unsigned long           lngt: 13      
@248    identifier_node  strg: long unsigned int       lngt: 17      
@249    type_decl        name: @289     type: @290     srcp: <internal>:0      
                         chan: @250    
@250    type_decl        name: @291     type: @213     srcp: <internal>:0      
                         chan: @292    
@251    integer_cst      type: @213     high: -1       low : -2147483648 
@252    integer_cst      type: @213     low : 2147483647 
@253    identifier_node  strg: complex long double     lngt: 19      
@254    complex_type     name: @214     size: @293     algn: 32      
@255    type_decl        name: @294     type: @295     srcp: <internal>:0      
                         chan: @296    
@256    identifier_node  strg: ._2      lngt: 3       
@257    const_decl       name: @297     type: @298     srcp: myFun.cpp:13     
                         chan: @299     cnst: @300    
@258    identifier_node  strg: RED      lngt: 3       
@259    integer_cst      type: @186     low : 0       
@260    tree_list        purp: @219     valu: @221     chan: @301    
@261    tree_list        valu: @269     chan: @54     
@262    method_type      size: @25      algn: 64       clas: @132    
                         retn: @69      prms: @263    
@263    tree_list        valu: @113     chan: @302    
@264    identifier_node  strg: __base_ctor             lngt: 11      
@265    function_decl    name: @303     type: @227     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         chan: @304     member         public        
                         constructor    args: @305     undefined     
                         static        
@266    parm_decl        name: @230     type: @231     scpe: @228    
                         srcp: myFun.cpp:32            artificial    
                         chan: @306     argt: @231     size: @16     
                         algn: 32       used: 0       
@267    parm_decl        name: @268     type: @269     srcp: myFun.cpp:32     
                         argt: @269     size: @16      algn: 32      
                         used: 1       
@268    identifier_node  strg: _ctor_arg               lngt: 9       
@269    reference_type   size: @16      algn: 32       refd: @307    
@270    identifier_node  strg: A        lngt: 1       
@271    type_decl        name: @308     type: @234     srcp: myFun.cpp:20     
                         artificial     chan: @139    
@272    identifier_node  strg: a        lngt: 1       
@273    field_decl       name: @309     type: @213     scpe: @234    
                         srcp: myFun.cpp:22            chan: @310    
                         public         size: @8       algn: 32      
                         bpos: @8      
@274    method_type      unql: @311     size: @25      algn: 64      
                         clas: @234     retn: @312     prms: @313    
@275    function_decl    name: @308     type: @314     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         chan: @315     member         public        
                         constructor    args: @316     undefined     
                         extern        
@276    parm_decl        name: @230     type: @317     srcp: myFun.cpp:20     
                         artificial     chan: @318     argt: @317    
                         size: @16      algn: 32       used: 0       
@277    tree_list        valu: @183     chan: @54     
@278    field_decl       name: @319     type: @30      scpe: @240    
                         srcp: myFun.cpp:28            chan: @320    
                         public         size: @38      algn: 8       
                         bpos: @191    
@279    function_decl    name: @192     type: @321     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         chan: @322     operator       assign        
                         member         public         args: @323    
                         undefined      extern        
@280    binfo            type: @240    
@281    identifier_node  strg: cosl     lngt: 4       
@282    function_type    size: @25      algn: 64       retn: @324    
                         prms: @325    
@283    function_decl    name: @326     type: @282     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @327     C              undefined     
                         extern        
@284    integer_cst      type: @17      low : 16      
@285    integer_cst      type: @245     low : 0       
@286    integer_cst      type: @245     low : 65535   
@287    integer_type     size: @38      algn: 8        prec: 8       
                         unsigned       min : @328     max : @329    
@288    type_decl        type: @330     srcp: <internal>:0      
                         chan: @331    
@289    identifier_node  strg: unsigned int            lngt: 12      
@290    integer_type     name: @249     size: @8       algn: 32      
                         prec: 32       unsigned       min : @332    
                         max : @333    
@291    identifier_node  strg: long int lngt: 8       
@292    type_decl        name: @334     type: @10      srcp: <internal>:0      
                         chan: @37     
@293    integer_cst      type: @17      low : 192     
@294    identifier_node  strg: complex double          lngt: 14      
@295    complex_type     name: @255     size: @335     algn: 64      
@296    type_decl        name: @336     type: @337     srcp: <internal>:0      
                         chan: @338    
@297    identifier_node  strg: V        lngt: 1       
@298    enumeral_type    name: @339     size: @16      algn: 32      
                         prec: 32       unsigned       min : @340    
                         max : @341     csts: @342    
@299    const_decl       name: @343     type: @298     srcp: myFun.cpp:13     
                         chan: @344     cnst: @345    
@300    integer_cst      type: @298     low : 2       
@301    tree_list        purp: @185     valu: @188    
@302    tree_list        valu: @269     chan: @54     
@303    identifier_node  strg: __comp_ctor             lngt: 11      
@304    function_decl    name: @198     type: @346     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         chan: @347     member         public        
                         constructor    args: @348     undefined     
                         static        
@305    parm_decl        name: @230     type: @231     scpe: @265    
                         srcp: myFun.cpp:32            artificial    
                         chan: @349     argt: @231     size: @16     
                         algn: 32       used: 0       
@306    parm_decl        name: @268     type: @269     scpe: @228    
                         srcp: myFun.cpp:32            argt: @269    
                         size: @16      algn: 32       used: 1       
@307    union_type       qual: c        name: @137     unql: @132    
                         size: @25      algn: 32       union         
                         flds: @159     fncs: @160     binf: @161    
@308    identifier_node  strg: _A       lngt: 2       
@309    identifier_node  strg: b        lngt: 1       
@310    type_decl        name: @308     type: @234     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
@311    method_type      size: @25      algn: 64       clas: @234    
                         retn: @312     prms: @313    
@312    reference_type   size: @16      algn: 32       refd: @234    
@313    tree_list        valu: @350     chan: @351    
@314    method_type      unql: @352     size: @25      algn: 64      
                         clas: @234     retn: @69      prms: @353    
@315    function_decl    name: @264     type: @314     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         chan: @354     member         public        
                         constructor    args: @355     undefined     
                         extern        
@316    parm_decl        name: @230     type: @317     srcp: myFun.cpp:20     
                         artificial     chan: @356     argt: @317    
                         size: @16      algn: 32       used: 0       
@317    pointer_type     qual: c        unql: @350     size: @16     
                         algn: 32       ptd : @234    
@318    parm_decl        name: @268     type: @357     srcp: myFun.cpp:20     
                         argt: @357     size: @16      algn: 32      
                         used: 1       
@319    identifier_node  strg: el       lngt: 2       
@320    field_decl       name: @358     type: @10      scpe: @240    
                         srcp: myFun.cpp:29            chan: @359    
                         public         size: @8       algn: 32      
                         bpos: @16     
@321    method_type      unql: @360     size: @25      algn: 64      
                         clas: @240     retn: @361     prms: @362    
@322    function_decl    name: @239     type: @363     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         chan: @364     member         public        
                         constructor    args: @365     undefined     
                         extern        
@323    parm_decl        name: @230     type: @366     srcp: myFun.cpp:27     
                         artificial     chan: @367     argt: @366    
                         size: @16      algn: 32       used: 0       
@324    real_type        name: @368     size: @369     algn: 32      
                         prec: 96      
@325    tree_list        valu: @324     chan: @54     
@326    identifier_node  strg: sinl     lngt: 4       
@327    function_decl    name: @370     type: @282     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @371     C              undefined     
                         extern        
@328    integer_cst      type: @287     low : 0       
@329    integer_cst      type: @287     low : 255     
@330    integer_type     size: @146     algn: 64       prec: 64      
                         min : @372     max : @373    
@331    type_decl        type: @374     srcp: <internal>:0      
                         chan: @375    
@332    integer_cst      type: @290     low : 0       
@333    integer_cst      type: @290     low : -1      
@334    identifier_node  strg: signed   lngt: 6       
@335    integer_cst      type: @17      low : 128     
@336    identifier_node  strg: complex float           lngt: 13      
@337    complex_type     name: @296     size: @25      algn: 32      
@338    type_decl        name: @376     type: @377     srcp: <internal>:0      
                         chan: @368    
@339    type_decl        name: @378     type: @298     srcp: myFun.cpp:13     
                         artificial     chan: @379    
@340    integer_cst      type: @298     low : 0       
@341    integer_cst      type: @298     low : 3       
@342    tree_list        purp: @380     valu: @381     chan: @382    
@343    identifier_node  strg: S        lngt: 1       
@344    const_decl       name: @380     type: @298     srcp: myFun.cpp:13     
                         chan: @339     cnst: @381    
@345    integer_cst      type: @298     low : 1       
@346    method_type      unql: @383     size: @25      algn: 64      
                         clas: @132     retn: @69      prms: @384    
@347    function_decl    name: @264     type: @346     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         chan: @385     member         public        
                         constructor    args: @386     undefined     
                         static        
@348    parm_decl        name: @230     type: @231     srcp: myFun.cpp:32     
                         artificial     argt: @231     size: @16     
                         algn: 32       used: 0       
@349    parm_decl        name: @268     type: @269     scpe: @265    
                         srcp: myFun.cpp:32            argt: @269    
                         size: @16      algn: 32       used: 1       
@350    pointer_type     size: @16      algn: 32       ptd : @234    
@351    tree_list        valu: @357     chan: @54     
@352    method_type      size: @25      algn: 64       clas: @234    
                         retn: @69      prms: @353    
@353    tree_list        valu: @350     chan: @387    
@354    function_decl    name: @303     type: @314     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         chan: @388     member         public        
                         constructor    args: @389     undefined     
                         extern        
@355    parm_decl        name: @230     type: @317     scpe: @315    
                         srcp: myFun.cpp:20            artificial    
                         chan: @390     argt: @317     size: @16     
                         algn: 32       used: 0       
@356    parm_decl        name: @268     type: @357     srcp: myFun.cpp:20     
                         argt: @357     size: @16      algn: 32      
                         used: 1       
@357    reference_type   size: @16      algn: 32       refd: @391    
@358    identifier_node  strg: o        lngt: 1       
@359    type_decl        name: @239     type: @240     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
@360    method_type      size: @25      algn: 64       clas: @240    
                         retn: @361     prms: @362    
@361    reference_type   size: @16      algn: 32       refd: @240    
@362    tree_list        valu: @392     chan: @393    
@363    method_type      unql: @394     size: @25      algn: 64      
                         clas: @240     retn: @69      prms: @395    
@364    function_decl    name: @264     type: @363     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         chan: @396     member         public        
                         constructor    args: @397     undefined     
                         extern        
@365    parm_decl        name: @230     type: @366     srcp: myFun.cpp:27     
                         artificial     chan: @398     argt: @366    
                         size: @16      algn: 32       used: 0       
@366    pointer_type     qual: c        unql: @392     size: @16     
                         algn: 32       ptd : @240    
@367    parm_decl        name: @268     type: @399     srcp: myFun.cpp:27     
                         argt: @399     size: @16      algn: 32      
                         used: 1       
@368    type_decl        name: @400     type: @324     srcp: <internal>:0      
                         chan: @68     
@369    integer_cst      type: @17      low : 96      
@370    identifier_node  strg: sqrtl    lngt: 5       
@371    function_decl    name: @401     type: @402     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @403     C              undefined     
                         extern        
@372    integer_cst      type: @330     high: -2147483648  low : 0       
@373    integer_cst      type: @330     high: 2147483647  low : -1      
@374    integer_type     size: @8       algn: 32       prec: 32      
                         min : @404     max : @405    
@375    type_decl        type: @406     srcp: <internal>:0      
                         chan: @407    
@376    identifier_node  strg: complex int             lngt: 11      
@377    complex_type     name: @338     size: @25      algn: 32      
@378    identifier_node  strg: ._1      lngt: 3       
@379    function_decl    name: @408     mngl: @409     type: @410    
                         srcp: myFun.cpp:8             chan: @411    
                         args: @412     extern         body: @413    
@380    identifier_node  strg: H        lngt: 1       
@381    integer_cst      type: @298     low : 0       
@382    tree_list        purp: @343     valu: @345     chan: @414    
@383    method_type      size: @25      algn: 64       clas: @132    
                         retn: @69      prms: @384    
@384    tree_list        valu: @113     chan: @54     
@385    function_decl    name: @303     type: @346     scpe: @132    
                         srcp: myFun.cpp:32            artificial    
                         member         public         constructor   
                         args: @415     undefined      static        
@386    parm_decl        name: @230     type: @231     scpe: @347    
                         srcp: myFun.cpp:32            artificial    
                         argt: @231     size: @16      algn: 32      
                         used: 0       
@387    tree_list        valu: @357     chan: @54     
@388    function_decl    name: @308     type: @416     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         chan: @417     member         public        
                         constructor    args: @418     undefined     
                         extern        
@389    parm_decl        name: @230     type: @317     scpe: @354    
                         srcp: myFun.cpp:20            artificial    
                         chan: @419     argt: @317     size: @16     
                         algn: 32       used: 0       
@390    parm_decl        name: @268     type: @357     scpe: @315    
                         srcp: myFun.cpp:20            argt: @357    
                         size: @16      algn: 32       used: 1       
@391    record_type      qual: c        name: @271     unql: @234    
                         size: @25      algn: 32       struct        
                         flds: @235     fncs: @236     binf: @237    
@392    pointer_type     size: @16      algn: 32       ptd : @240    
@393    tree_list        valu: @399     chan: @54     
@394    method_type      size: @25      algn: 64       clas: @240    
                         retn: @69      prms: @395    
@395    tree_list        valu: @392     chan: @420    
@396    function_decl    name: @303     type: @363     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         chan: @421     member         public        
                         constructor    args: @422     undefined     
                         extern        
@397    parm_decl        name: @230     type: @366     scpe: @364    
                         srcp: myFun.cpp:27            artificial    
                         chan: @423     argt: @366     size: @16     
                         algn: 32       used: 0       
@398    parm_decl        name: @268     type: @399     srcp: myFun.cpp:27     
                         argt: @399     size: @16      algn: 32      
                         used: 1       
@399    reference_type   size: @16      algn: 32       refd: @424    
@400    identifier_node  strg: long double             lngt: 11      
@401    identifier_node  strg: cosf     lngt: 4       
@402    function_type    size: @25      algn: 64       retn: @104    
                         prms: @425    
@403    function_decl    name: @426     type: @402     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @427     C              undefined     
                         extern        
@404    integer_cst      type: @374     high: -1       low : -2147483648 
@405    integer_cst      type: @374     low : 2147483647 
@406    integer_type     size: @284     algn: 16       prec: 16      
                         min : @428     max : @429    
@407    type_decl        type: @430     srcp: <internal>:0      
                         chan: @431    
@408    identifier_node  strg: foo      lngt: 3       
@409    identifier_node  strg: _Z3fooijPc              lngt: 10      
@410    function_type    size: @25      algn: 64       retn: @53     
                         prms: @432    
@411    function_decl    name: @433     mngl: @434     type: @435    
                         srcp: myFun.cpp:5             chan: @436    
                         undefined      extern        
@412    parm_decl        name: @189     type: @10      scpe: @379    
                         srcp: myFun.cpp:8             chan: @437    
                         argt: @10      size: @8       algn: 32      
                         used: 1       
@413    compound_stmt    line: 11       body: @438    
@414    tree_list        purp: @297     valu: @300    
@415    parm_decl        name: @230     type: @231     scpe: @385    
                         srcp: myFun.cpp:32            artificial    
                         argt: @231     size: @16      algn: 32      
                         used: 0       
@416    method_type      unql: @439     size: @25      algn: 64      
                         clas: @234     retn: @69      prms: @440    
@417    function_decl    name: @264     type: @416     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         chan: @441     member         public        
                         constructor    args: @442     undefined     
                         extern        
@418    parm_decl        name: @230     type: @317     srcp: myFun.cpp:20     
                         artificial     argt: @317     size: @16     
                         algn: 32       used: 0       
@419    parm_decl        name: @268     type: @357     scpe: @354    
                         srcp: myFun.cpp:20            argt: @357    
                         size: @16      algn: 32       used: 1       
@420    tree_list        valu: @399     chan: @54     
@421    function_decl    name: @239     type: @443     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         chan: @444     member         public        
                         constructor    args: @445     undefined     
                         extern        
@422    parm_decl        name: @230     type: @366     scpe: @396    
                         srcp: myFun.cpp:27            artificial    
                         chan: @446     argt: @366     size: @16     
                         algn: 32       used: 0       
@423    parm_decl        name: @268     type: @399     scpe: @364    
                         srcp: myFun.cpp:27            argt: @399    
                         size: @16      algn: 32       used: 1       
@424    record_type      qual: c        name: @199     unql: @240    
                         size: @25      algn: 32       struct        
                         flds: @278     fncs: @279     binf: @280    
@425    tree_list        valu: @104     chan: @54     
@426    identifier_node  strg: sinf     lngt: 4       
@427    function_decl    name: @447     type: @402     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @448     C              undefined     
                         extern        
@428    integer_cst      type: @406     high: -1       low : -32768  
@429    integer_cst      type: @406     low : 32767   
@430    integer_type     size: @38      algn: 8        prec: 8       
                         min : @449     max : @450    
@431    type_decl        name: @451     type: @452     srcp: <internal>:0      
                         chan: @453    
@432    tree_list        valu: @10      chan: @454    
@433    identifier_node  strg: xfoo     lngt: 4       
@434    identifier_node  strg: _Z4xfooijPc             lngt: 11      
@435    function_type    size: @25      algn: 64       retn: @53     
                         prms: @455    
@436    type_decl        name: @456     type: @457     srcp: enum.h:1      
                         chan: @458    
@437    parm_decl        name: @222     type: @290     scpe: @379    
                         srcp: myFun.cpp:8             chan: @459    
                         argt: @290     size: @8       algn: 32      
                         used: 1       
@438    scope_stmt       line: 8        begn           clnp          
                         next: @460    
@439    method_type      size: @25      algn: 64       clas: @234    
                         retn: @69      prms: @440    
@440    tree_list        valu: @350     chan: @54     
@441    function_decl    name: @303     type: @416     scpe: @234    
                         srcp: myFun.cpp:20            artificial    
                         member         public         constructor   
                         args: @461     undefined      extern        
@442    parm_decl        name: @230     type: @317     scpe: @417    
                         srcp: myFun.cpp:20            artificial    
                         argt: @317     size: @16      algn: 32      
                         used: 0       
@443    method_type      unql: @462     size: @25      algn: 64      
                         clas: @240     retn: @69      prms: @463    
@444    function_decl    name: @264     type: @443     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         chan: @464     member         public        
                         constructor    args: @465     undefined     
                         extern        
@445    parm_decl        name: @230     type: @366     srcp: myFun.cpp:27     
                         artificial     argt: @366     size: @16     
                         algn: 32       used: 0       
@446    parm_decl        name: @268     type: @399     scpe: @396    
                         srcp: myFun.cpp:27            argt: @399    
                         size: @16      algn: 32       used: 1       
@447    identifier_node  strg: sqrtf    lngt: 5       
@448    function_decl    name: @466     type: @467     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @468     C              undefined     
                         extern        
@449    integer_cst      type: @430     high: -1       low : -128    
@450    integer_cst      type: @430     low : 127     
@451    identifier_node  strg: unsigned char           lngt: 13      
@452    integer_type     name: @431     size: @38      algn: 8       
                         prec: 8        unsigned       min : @469    
                         max : @470    
@453    type_decl        name: @471     type: @472     srcp: <internal>:0      
                         chan: @473    
@454    tree_list        valu: @290     chan: @474    
@455    tree_list        valu: @10      chan: @475    
@456    identifier_node  strg: Other    lngt: 5       
@457    enumeral_type    name: @436     size: @16      algn: 32      
                         prec: 32       unsigned       min : @476    
                         max : @477     csts: @478    
@458    const_decl       name: @479     type: @457     srcp: enum.h:1      
                         chan: @480     cnst: @481    
@459    parm_decl        name: @482     type: @483     scpe: @379    
                         srcp: myFun.cpp:8             argt: @483    
                         size: @16      algn: 32       used: 1       
@460    compound_stmt    line: 8        body: @484     next: @485    
@461    parm_decl        name: @230     type: @317     scpe: @441    
                         srcp: myFun.cpp:20            artificial    
                         argt: @317     size: @16      algn: 32      
                         used: 0       
@462    method_type      size: @25      algn: 64       clas: @240    
                         retn: @69      prms: @463    
@463    tree_list        valu: @392     chan: @54     
@464    function_decl    name: @303     type: @443     scpe: @240    
                         srcp: myFun.cpp:27            artificial    
                         member         public         constructor   
                         args: @486     undefined      extern        
@465    parm_decl        name: @230     type: @366     scpe: @444    
                         srcp: myFun.cpp:27            artificial    
                         argt: @366     size: @16      algn: 32      
                         used: 0       
@466    identifier_node  strg: cos      lngt: 3       
@467    function_type    size: @25      algn: 64       retn: @53     
                         prms: @487    
@468    function_decl    name: @488     type: @467     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @489     C              undefined     
                         extern        
@469    integer_cst      type: @452     low : 0       
@470    integer_cst      type: @452     low : 255     
@471    identifier_node  strg: signed char             lngt: 11      
@472    integer_type     name: @453     size: @38      algn: 8       
                         prec: 8        min : @490     max : @491    
@473    type_decl        name: @492     type: @493     srcp: <internal>:0      
                         chan: @494    
@474    tree_list        purp: @495     valu: @483     chan: @54     
@475    tree_list        purp: @496     valu: @290     chan: @497    
@476    integer_cst      type: @457     low : 0       
@477    integer_cst      type: @457     low : 1       
@478    tree_list        purp: @498     valu: @499     chan: @500    
@479    identifier_node  strg: Bx       lngt: 2       
@480    const_decl       name: @498     type: @457     srcp: enum.h:1      
                         chan: @501     cnst: @499    
@481    integer_cst      type: @457     low : 1       
@482    identifier_node  strg: str      lngt: 3       
@483    pointer_type     size: @16      algn: 32       ptd : @30     
@484    decl_stmt        line: 9        decl: @502     next: @503    
@485    scope_stmt       line: 11       end            clnp          
@486    parm_decl        name: @230     type: @366     scpe: @464    
                         srcp: myFun.cpp:27            artificial    
                         argt: @366     size: @16      algn: 32      
                         used: 0       
@487    tree_list        valu: @53      chan: @54     
@488    identifier_node  strg: sin      lngt: 3       
@489    function_decl    name: @504     type: @467     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @505     C              undefined     
                         extern        
@490    integer_cst      type: @472     high: -1       low : -128    
@491    integer_cst      type: @472     low : 127     
@492    identifier_node  strg: unsigned short          lngt: 14      
@493    integer_type     name: @494     size: @284     algn: 16      
                         prec: 16       unsigned       min : @506    
                         max : @507    
@494    type_decl        name: @508     type: @493     srcp: <internal>:0      
                         chan: @509    
@495    string_cst       type: @510    strg: Boo!     lngt: 5       
@496    integer_cst      type: @10      low : 157     
@497    tree_list        purp: @511     valu: @483     chan: @54     
@498    identifier_node  strg: Ax       lngt: 2       
@499    integer_cst      type: @457     low : 0       
@500    tree_list        purp: @479     valu: @481    
@501    type_decl        name: @512     type: @457     srcp: enum.h:1      
                         artificial     chan: @513    
@502    var_decl         name: @514     type: @53      scpe: @379    
                         srcp: myFun.cpp:9             init: @515    
                         size: @25      algn: 64       used: 1       
@503    return_stmt      line: 10       expr: @516    
@504    identifier_node  strg: sqrt     lngt: 4       
@505    function_decl    name: @517     type: @518     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @519     C              undefined     
                         extern        
@506    integer_cst      type: @493     low : 0       
@507    integer_cst      type: @493     low : 65535   
@508    identifier_node  strg: short unsigned int      lngt: 18      
@509    type_decl        name: @520     type: @521     srcp: <internal>:0      
                         chan: @522    
@510    array_type       qual: c        unql: @523     size: @524    
                         algn: 8        elts: @200     domn: @525    
@511    string_cst       type: @526    strg:          lngt: 1       
@512    identifier_node  strg: ._0      lngt: 3       
@513    function_decl    name: @527     type: @528     srcp: string.h:345    
                         chan: @529     C              undefined     
                         extern        
@514    identifier_node  strg: ans      lngt: 3       
@515    float_expr       type: @53      op 0: @530    
@516    init_expr        type: @53      op 0: @531     op 1: @502    
@517    identifier_node  strg: strrchr  lngt: 7       
@518    function_type    size: @25      algn: 64       retn: @483    
                         prms: @532    
@519    function_decl    name: @533     type: @518     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @534     C              undefined     
                         extern        
@520    identifier_node  strg: short int               lngt: 9       
@521    integer_type     name: @509     size: @284     algn: 16      
                         prec: 16       min : @535     max : @536    
@522    type_decl        name: @537     type: @129     srcp: <internal>:0      
                         chan: @151    
@523    array_type       size: @524     algn: 8        elts: @30     
                         domn: @525    
@524    integer_cst      type: @17      low : 40      
@525    integer_type     size: @8       algn: 32       prec: 32      
                         min : @538     max : @539    
@526    array_type       qual: c        unql: @540     size: @541    
                         algn: 8        elts: @200     domn: @542    
@527    identifier_node  strg: basename lngt: 8       
@528    function_type    unql: @543     size: @25      algn: 64      
                         retn: @483     prms: @544    
@529    function_decl    name: @545     type: @546     srcp: string.h:338    
                         chan: @547     C              undefined     
                         extern        
@530    plus_expr        type: @290     op 0: @548     op 1: @549    
@531    result_decl      type: @53      scpe: @379     srcp: myFun.cpp:8      
                         size: @25      algn: 64      
@532    tree_list        valu: @170     chan: @550    
@533    identifier_node  strg: strchr   lngt: 6       
@534    function_decl    name: @551     type: @552     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @553     C              undefined     
                         extern        
@535    integer_cst      type: @521     high: -1       low : -32768  
@536    integer_cst      type: @521     low : 32767   
@537    identifier_node  strg: long long unsigned      lngt: 18      
@538    integer_cst      type: @554     low : 0       
@539    integer_cst      type: @554     low : 4       
@540    array_type       size: @541     algn: 8        elts: @30     
                         domn: @542    
@541    integer_cst      type: @17      low : 8       
@542    integer_type     size: @8       algn: 32       prec: 32      
                         min : @538     max : @538    
@543    function_type    size: @25      algn: 64       retn: @483    
                         prms: @544    
@544    tree_list        valu: @170     chan: @54     
@545    identifier_node  strg: memfrob  lngt: 7       
@546    function_type    unql: @555     size: @25      algn: 64      
                         retn: @141     prms: @556    
@547    function_decl    name: @557     type: @558     srcp: string.h:335    
                         chan: @559     C              undefined     
                         extern        
@548    plus_expr        type: @290     op 0: @560     op 1: @437    
@549    call_expr        type: @561     fn  : @562     args: @563    
@550    tree_list        valu: @10      chan: @54     
@551    identifier_node  strg: strcspn  lngt: 7       
@552    function_type    size: @25      algn: 64       retn: @290    
                         prms: @564    
@553    function_decl    name: @565     type: @552     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @566     C              undefined     
                         extern        
@554    integer_type     name: @249     size: @8       algn: 32      
                         prec: 32       unsigned       min : @332    
                         max : @333    
@555    function_type    size: @25      algn: 64       retn: @141    
                         prms: @556    
@556    tree_list        valu: @141     chan: @567    
@557    identifier_node  strg: strfry   lngt: 6       
@558    function_type    unql: @568     size: @25      algn: 64      
                         retn: @483     prms: @569    
@559    function_decl    name: @570     type: @571     srcp: string.h:332    
                         chan: @572     C              undefined     
                         extern        
@560    nop_expr         type: @290     op 0: @412    
@561    integer_type     name: @573     unql: @290     size: @8      
                         algn: 32       prec: 32       unsigned      
                         min : @332     max : @333    
@562    addr_expr        type: @574     op 0: @575    
@563    tree_list        valu: @576    
@564    tree_list        valu: @170     chan: @577    
@565    identifier_node  strg: strspn   lngt: 6       
@566    function_decl    name: @578     type: @579     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @580     C              undefined     
                         extern        
@567    tree_list        valu: @290     chan: @54     
@568    function_type    size: @25      algn: 64       retn: @483    
                         prms: @569    
@569    tree_list        valu: @483     chan: @54     
@570    identifier_node  strg: stpncpy  lngt: 7       
@571    function_type    unql: @581     size: @25      algn: 64      
                         retn: @483     prms: @582    
@572    function_decl    name: @583     type: @571     srcp: string.h:330    
                         chan: @584     C              undefined     
                         extern        
@573    type_decl        name: @585     type: @561     srcp: stddef.h:213    
                         chan: @586    
@574    pointer_type     size: @16      algn: 32       ptd : @587    
@575    function_decl    name: @588     type: @587     srcp: string.h:230    
                         chan: @589     C              undefined     
                         extern        
@576    nop_expr         type: @170     op 0: @459    
@577    tree_list        valu: @170     chan: @54     
@578    identifier_node  strg: strpbrk  lngt: 7       
@579    function_type    size: @25      algn: 64       retn: @483    
                         prms: @590    
@580    function_decl    name: @591     type: @579     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @592     C              undefined     
                         extern        
@581    function_type    size: @25      algn: 64       retn: @483    
                         prms: @582    
@582    tree_list        valu: @483     chan: @593    
@583    identifier_node  strg: __stpncpy               lngt: 9       
@584    function_decl    name: @594     type: @595     srcp: string.h:325    
                         chan: @596     C              undefined     
                         extern        
@585    identifier_node  strg: size_t   lngt: 6       
@586    function_decl    name: @597     type: @598     srcp: <internal>:0      
                         artificial     chan: @599     C             
                         undefined      extern        
@587    function_type    unql: @600     size: @25      algn: 64      
                         retn: @561     prms: @601    
@588    identifier_node  strg: strlen   lngt: 6       
@589    function_decl    name: @602     mngl: @588     type: @603    
                         srcp: <internal>:0            artificial    
                         chan: @604     C              undefined     
                         extern        
@590    tree_list        valu: @170     chan: @605    
@591    identifier_node  strg: strstr   lngt: 6       
@592    function_decl    name: @588     type: @603     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @606     C              undefined     
                         extern        
@593    tree_list        valu: @170     chan: @607    
@594    identifier_node  strg: stpcpy   lngt: 6       
@595    function_type    unql: @608     size: @25      algn: 64      
                         retn: @483     prms: @609    
@596    function_decl    name: @610     type: @595     srcp: string.h:323    
                         chan: @611     C              undefined     
                         extern        
@597    identifier_node  strg: __cxa_call_unexpected   lngt: 21      
@598    function_type    size: @25      algn: 64       retn: @69     
                         prms: @612    
@599    function_decl    name: @613     mngl: @614     type: @615    
                         srcp: <internal>:0            artificial    
                         chan: @616     operator       vecdelete     
                         undefined      extern        
@600    function_type    size: @25      algn: 64       retn: @561    
                         prms: @601    
@601    tree_list        valu: @170     chan: @54     
@602    identifier_node  strg: __builtin_strlen        lngt: 16      
@603    function_type    size: @25      algn: 64       retn: @554    
                         prms: @617    
@604    function_decl    name: @618     type: @619     srcp: string.h:100    
                         chan: @620     C              undefined     
                         extern        
@605    tree_list        valu: @170     chan: @54     
@606    function_decl    name: @618     type: @621     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @622     C              undefined     
                         extern        
@607    tree_list        valu: @290     chan: @54     
@608    function_type    size: @25      algn: 64       retn: @483    
                         prms: @609    
@609    tree_list        valu: @483     chan: @623    
@610    identifier_node  strg: __stpcpy lngt: 8       
@611    function_decl    name: @624     type: @625     srcp: string.h:319    
                         chan: @626     C              undefined     
                         extern        
@612    tree_list        valu: @141     chan: @54     
@613    identifier_node  operator      
@614    identifier_node  strg: _ZdaPv   lngt: 6       
@615    function_type    unql: @598     size: @25      algn: 64      
                         retn: @69      prms: @612    
@616    function_decl    name: @627     mngl: @628     type: @615    
                         srcp: <internal>:0            artificial    
                         chan: @629     operator       delete        
                         undefined      extern        
@617    tree_list        valu: @170     chan: @54     
@618    identifier_node  strg: strncmp  lngt: 7       
@619    function_type    unql: @621     size: @25      algn: 64      
                         retn: @10      prms: @630    
@620    function_decl    name: @631     mngl: @618     type: @621    
                         srcp: <internal>:0            artificial    
                         chan: @632     C              undefined     
                         extern        
@621    function_type    size: @25      algn: 64       retn: @10     
                         prms: @630    
@622    function_decl    name: @633     type: @634     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @635     C              undefined     
                         extern        
@623    tree_list        valu: @170     chan: @54     
@624    identifier_node  strg: strsignal               lngt: 9       
@625    function_type    unql: @636     size: @25      algn: 64      
                         retn: @483     prms: @637    
@626    function_decl    name: @638     type: @639     srcp: string.h:316    
                         chan: @640     C              undefined     
                         extern        
@627    identifier_node  operator      
@628    identifier_node  strg: _ZdlPv   lngt: 6       
@629    function_decl    name: @641     mngl: @642     type: @643    
                         srcp: <internal>:0            artificial    
                         chan: @644     operator       vecnew        
                         undefined      extern        
@630    tree_list        valu: @170     chan: @645    
@631    identifier_node  strg: __builtin_strncmp       lngt: 17      
@632    function_decl    name: @633     type: @639     srcp: string.h:97     
                         chan: @646     C              undefined     
                         extern        
@633    identifier_node  strg: strcmp   lngt: 6       
@634    function_type    size: @25      algn: 64       retn: @10     
                         prms: @647    
@635    function_decl    name: @648     type: @581     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @649     C              undefined     
                         extern        
@636    function_type    size: @25      algn: 64       retn: @483    
                         prms: @637    
@637    tree_list        valu: @10      chan: @54     
@638    identifier_node  strg: strverscmp              lngt: 10      
@639    function_type    unql: @634     size: @25      algn: 64      
                         retn: @10      prms: @647    
@640    function_decl    name: @650     type: @651     srcp: string.h:310    
                         chan: @652     C              undefined     
                         extern        
@641    identifier_node  operator      
@642    identifier_node  strg: _Znaj    lngt: 5       
@643    function_type    unql: @653     size: @25      algn: 64      
                         retn: @141     prms: @654    
@644    function_decl    name: @655     mngl: @656     type: @643    
                         srcp: <internal>:0            artificial    
                         chan: @657     operator       new           
                         undefined      extern        
@645    tree_list        valu: @170     chan: @658    
@646    function_decl    name: @659     mngl: @633     type: @634    
                         srcp: <internal>:0            artificial    
                         chan: @660     C              undefined     
                         extern        
@647    tree_list        valu: @170     chan: @661    
@648    identifier_node  strg: strncpy  lngt: 7       
@649    function_decl    name: @662     type: @608     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @663     C              undefined     
                         extern        
@650    identifier_node  strg: strsep   lngt: 6       
@651    function_type    unql: @664     size: @25      algn: 64      
                         retn: @483     prms: @665    
@652    function_decl    name: @666     type: @667     srcp: string.h:303    
                         chan: @668     C              undefined     
                         extern        
@653    function_type    size: @25      algn: 64       retn: @141    
                         prms: @654    
@654    tree_list        valu: @290     chan: @54     
@655    identifier_node  operator      
@656    identifier_node  strg: _Znwj    lngt: 5       
@657    type_decl        name: @669     type: @670     srcp: <internal>:0      
                         chan: @671    
@658    tree_list        valu: @290     chan: @54     
@659    identifier_node  strg: __builtin_strcmp        lngt: 16      
@660    function_decl    name: @648     type: @571     srcp: string.h:86     
                         chan: @672     C              undefined     
                         extern        
@661    tree_list        valu: @170     chan: @54     
@662    identifier_node  strg: strcpy   lngt: 6       
@663    function_decl    name: @673     type: @581     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @674     C              undefined     
                         extern        
@664    function_type    size: @25      algn: 64       retn: @483    
                         prms: @665    
@665    tree_list        valu: @675     chan: @676    
@666    identifier_node  strg: strncasecmp_l           lngt: 13      
@667    function_type    unql: @677     size: @25      algn: 64      
                         retn: @10      prms: @678    
@668    function_decl    name: @679     type: @680     srcp: string.h:299    
                         chan: @681     C              undefined     
                         extern        
@669    identifier_node  strg: global type             lngt: 11      
@670    lang_type        name: @657     algn: 1       
@671    namespace_decl   name: @682     type: @69      srcp: <internal>:0      
                         chan: @683     C              dcls: @684    
@672    function_decl    name: @685     mngl: @648     type: @581    
                         srcp: <internal>:0            artificial    
                         chan: @686     C              undefined     
                         extern        
@673    identifier_node  strg: strncat  lngt: 7       
@674    function_decl    name: @687     type: @608     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @688     C              undefined     
                         extern        
@675    pointer_type     size: @16      algn: 32       ptd : @483    
@676    tree_list        valu: @170     chan: @54     
@677    function_type    size: @25      algn: 64       retn: @10     
                         prms: @678    
@678    tree_list        valu: @170     chan: @689    
@679    identifier_node  strg: strcasecmp_l            lngt: 12      
@680    function_type    unql: @690     size: @25      algn: 64      
                         retn: @10      prms: @691    
@681    function_decl    name: @692     type: @619     srcp: string.h:292    
                         chan: @693     C              undefined     
                         extern        
@682    identifier_node  strg: __cxxabiv1              lngt: 10      
@683    type_decl        name: @694     type: @695     srcp: <internal>:0      
                         chan: @696    
@684    type_decl        name: @697     type: @698     scpe: @671    
                         srcp: myFun.cpp:68            artificial    
@685    identifier_node  strg: __builtin_strncpy       lngt: 17      
@686    function_decl    name: @662     type: @595     srcp: string.h:83     
                         chan: @699     C              undefined     
                         extern        
@687    identifier_node  strg: strcat   lngt: 6       
@688    function_decl    name: @700     type: @701     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @702     C              undefined     
                         extern        
@689    tree_list        valu: @170     chan: @703    
@690    function_type    size: @25      algn: 64       retn: @10     
                         prms: @691    
@691    tree_list        valu: @170     chan: @704    
@692    identifier_node  strg: strncasecmp             lngt: 11      
@693    function_decl    name: @705     type: @639     srcp: string.h:288    
                         chan: @706     C              undefined     
                         extern        
@694    identifier_node  strg: __vtbl_ptr_type         lngt: 15      
@695    pointer_type     name: @683     size: @16      algn: 32      
                         ptd : @707    
@696    type_decl        name: @708     type: @709     srcp: <internal>:0      
                         chan: @710    
@697    identifier_node  strg: __fundamental_type_info lngt: 23      
@698    record_type      name: @684     algn: 8        struct        
                         binf: @711    
@699    function_decl    name: @712     mngl: @662     type: @608    
                         srcp: <internal>:0            artificial    
                         chan: @713     C              undefined     
                         extern        
@700    identifier_node  strg: memset   lngt: 6       
@701    function_type    size: @25      algn: 64       retn: @141    
                         prms: @714    
@702    function_decl    name: @715     type: @716     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @717     C              undefined     
                         extern        
@703    tree_list        valu: @290     chan: @718    
@704    tree_list        valu: @170     chan: @719    
@705    identifier_node  strg: strcasecmp              lngt: 10      
@706    function_decl    name: @720     type: @721     srcp: string.h:282    
                         chan: @722     C              undefined     
                         extern        
@707    function_type    size: @25      algn: 64       retn: @10     
@708    identifier_node  strg: unknown type            lngt: 12      
@709    lang_type        name: @696     algn: 1       
@710    type_decl        name: @723     type: @724     srcp: <internal>:0      
                         chan: @725    
@711    binfo            type: @698    
@712    identifier_node  strg: __builtin_strcpy        lngt: 16      
@713    function_decl    name: @673     type: @571     srcp: string.h:93     
                         chan: @726     C              undefined     
                         extern        
@714    tree_list        valu: @141     chan: @727    
@715    identifier_node  strg: memcmp   lngt: 6       
@716    function_type    size: @25      algn: 64       retn: @10     
                         prms: @728    
@717    function_decl    name: @729     type: @730     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @731     C              undefined     
                         extern        
@718    tree_list        valu: @732     chan: @54     
@719    tree_list        valu: @732     chan: @54     
@720    identifier_node  strg: ffsll    lngt: 5       
@721    function_type    unql: @733     size: @25      algn: 64      
                         retn: @10      prms: @734    
@722    function_decl    name: @735     type: @736     srcp: string.h:279    
                         chan: @737     C              undefined     
                         extern        
@723    identifier_node  strg: bool     lngt: 4       
@724    boolean_type     name: @710     size: @541     algn: 8       
@725    type_decl        name: @738     type: @739     srcp: <internal>:0      
                         chan: @740    
@726    function_decl    name: @741     mngl: @673     type: @581    
                         srcp: <internal>:0            artificial    
                         chan: @742     C              undefined     
                         extern        
@727    tree_list        valu: @10      chan: @743    
@728    tree_list        valu: @744     chan: @745    
@729    identifier_node  strg: memcpy   lngt: 6       
@730    function_type    size: @25      algn: 64       retn: @141    
                         prms: @746    
@731    function_decl    name: @747     type: @518     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @748     C              undefined     
                         extern        
@732    pointer_type     size: @16      algn: 32       ptd : @749    
@733    function_type    size: @25      algn: 64       retn: @10     
                         prms: @734    
@734    tree_list        valu: @155     chan: @54     
@735    identifier_node  strg: ffsl     lngt: 4       
@736    function_type    unql: @750     size: @25      algn: 64      
                         retn: @10      prms: @751    
@737    function_decl    name: @752     type: @753     srcp: string.h:257    
                         chan: @754     C              undefined     
                         extern        
@738    identifier_node  strg: __java_boolean          lngt: 14      
@739    integer_type     name: @725     size: @541     algn: 8       
                         prec: 1        unsigned       min : @755    
                         max : @756    
@740    type_decl        name: @757     type: @758     srcp: <internal>:0      
                         chan: @759    
@741    identifier_node  strg: __builtin_strncat       lngt: 17      
@742    function_decl    name: @687     type: @595     srcp: string.h:90     
                         chan: @760     C              undefined     
                         extern        
@743    tree_list        valu: @290     chan: @54     
@744    pointer_type     size: @16      algn: 32       ptd : @761    
@745    tree_list        valu: @744     chan: @762    
@746    tree_list        valu: @141     chan: @763    
@747    identifier_node  strg: rindex   lngt: 6       
@748    function_decl    name: @764     type: @518     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @765     C              undefined     
                         extern        
@749    record_type      name: @766     size: @767     algn: 32      
                         struct         flds: @768     fncs: @769    
                         binf: @770    
@750    function_type    size: @25      algn: 64       retn: @10     
                         prms: @751    
@751    tree_list        valu: @213     chan: @54     
@752    identifier_node  strg: bcopy    lngt: 5       
@753    function_type    unql: @771     size: @25      algn: 64      
                         retn: @69      prms: @772    
@754    function_decl    name: @773     type: @774     srcp: string.h:253    
                         chan: @775     C              undefined     
                         extern        
@755    integer_cst      type: @739     low : 0       
@756    integer_cst      type: @739     low : 1       
@757    identifier_node  strg: __java_char             lngt: 11      
@758    integer_type     name: @740     size: @776     algn: 16      
                         prec: 16       unsigned       min : @777    
                         max : @778    
@759    type_decl        name: @779     type: @780     srcp: <internal>:0      
                         chan: @781    
@760    function_decl    name: @782     mngl: @687     type: @608    
                         srcp: <internal>:0            artificial    
                         chan: @783     C              undefined     
                         extern        
@761    void_type        qual: c        unql: @69      algn: 8       
@762    tree_list        valu: @290     chan: @54     
@763    tree_list        valu: @744     chan: @784    
@764    identifier_node  strg: index    lngt: 5       
@765    function_decl    name: @785     type: @786     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @787     C              undefined     
                         extern        
@766    type_decl        name: @788     type: @749     srcp: xlocale.h:29     
                         artificial     chan: @789    
@767    integer_cst      type: @17      low : 928     
@768    field_decl       name: @790     type: @791     scpe: @749    
                         srcp: xlocale.h:31            chan: @792    
                         public         size: @793     algn: 32      
                         bpos: @191    
@769    function_decl    name: @192     type: @794     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         chan: @795     operator       assign        
                         member         public         args: @796    
                         undefined      extern        
@770    binfo            type: @749    
@771    function_type    size: @25      algn: 64       retn: @69     
                         prms: @772    
@772    tree_list        valu: @797     chan: @798    
@773    identifier_node  strg: __bzero  lngt: 7       
@774    function_type    unql: @799     size: @25      algn: 64      
                         retn: @69      prms: @800    
@775    function_decl    name: @801     type: @802     srcp: string.h:248    
                         chan: @803     C              undefined     
                         extern        
@776    integer_cst      type: @17      low : 16      
@777    integer_cst      type: @758     low : 0       
@778    integer_cst      type: @758     low : 65535   
@779    identifier_node  strg: __java_double           lngt: 13      
@780    real_type        name: @759     size: @25      algn: 64      
                         prec: 64      
@781    type_decl        name: @804     type: @805     srcp: <internal>:0      
                         chan: @806    
@782    identifier_node  strg: __builtin_strcat        lngt: 16      
@783    function_decl    name: @700     type: @807     srcp: string.h:58     
                         chan: @808     C              undefined     
                         extern        
@784    tree_list        valu: @290     chan: @54     
@785    identifier_node  strg: ffs      lngt: 3       
@786    function_type    size: @25      algn: 64       retn: @10     
                         prms: @809    
@787    function_decl    name: @810     type: @124     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @811     C              undefined     
                         extern        
@788    identifier_node  strg: __locale_struct         lngt: 15      
@789    function_decl    name: @812     type: @813     srcp: string.h:107    
                         chan: @814     C              undefined     
                         extern        
@790    identifier_node  strg: __locales               lngt: 9       
@791    array_type       size: @793     algn: 32       elts: @815    
                         domn: @816    
@792    field_decl       name: @817     type: @818     scpe: @749    
                         srcp: xlocale.h:34            chan: @819    
                         public         size: @16      algn: 32      
                         bpos: @793    
@793    integer_cst      type: @17      low : 416     
@794    method_type      unql: @820     size: @25      algn: 64      
                         clas: @749     retn: @821     prms: @822    
@795    function_decl    name: @788     type: @823     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         chan: @824     member         public        
                         constructor    args: @825     undefined     
                         extern        
@796    parm_decl        name: @230     type: @826     srcp: xlocale.h:29     
                         artificial     chan: @827     argt: @826    
                         size: @16      algn: 32       used: 0       
@797    pointer_type     size: @16      algn: 32       ptd : @828    
@798    tree_list        valu: @141     chan: @829    
@799    function_type    size: @25      algn: 64       retn: @69     
                         prms: @800    
@800    tree_list        valu: @141     chan: @830    
@801    identifier_node  strg: strerror_r              lngt: 10      
@802    function_type    unql: @831     size: @25      algn: 64      
                         retn: @483     prms: @832    
@803    function_decl    name: @833     type: @625     srcp: string.h:243    
                         chan: @834     C              undefined     
                         extern        
@804    identifier_node  strg: __java_float            lngt: 12      
@805    real_type        name: @781     size: @16      algn: 32      
                         prec: 32      
@806    type_decl        name: @835     type: @836     srcp: <internal>:0      
                         chan: @837    
@807    function_type    unql: @701     size: @25      algn: 64      
                         retn: @141     prms: @714    
@808    function_decl    name: @838     mngl: @700     type: @701    
                         srcp: <internal>:0            artificial    
                         chan: @839     C              undefined     
                         extern        
@809    tree_list        valu: @10      chan: @54     
@810    identifier_node  strg: bcmp     lngt: 4       
@811    function_decl    name: @840     type: @841     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @842     C              undefined     
                         extern        
@812    identifier_node  strg: strxfrm  lngt: 7       
@813    function_type    unql: @843     size: @25      algn: 64      
                         retn: @561     prms: @844    
@814    function_decl    name: @845     type: @639     srcp: string.h:104    
                         chan: @846     C              undefined     
                         extern        
@815    pointer_type     size: @16      algn: 32       ptd : @847    
@816    integer_type     size: @8       algn: 32       prec: 32      
                         min : @538     max : @848    
@817    identifier_node  strg: __ctype_b               lngt: 9       
@818    pointer_type     size: @16      algn: 32       ptd : @849    
@819    field_decl       name: @850     type: @851     scpe: @749    
                         srcp: xlocale.h:35            chan: @852    
                         public         size: @16      algn: 32      
                         bpos: @853    
@820    method_type      size: @25      algn: 64       clas: @749    
                         retn: @821     prms: @822    
@821    reference_type   size: @16      algn: 32       refd: @749    
@822    tree_list        valu: @732     chan: @854    
@823    method_type      unql: @855     size: @25      algn: 64      
                         clas: @749     retn: @69      prms: @856    
@824    function_decl    name: @264     type: @823     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         chan: @857     member         public        
                         constructor    args: @858     undefined     
                         extern        
@825    parm_decl        name: @230     type: @826     srcp: xlocale.h:29     
                         artificial     chan: @859     argt: @826    
                         size: @16      algn: 32       used: 0       
@826    pointer_type     qual: c        unql: @732     size: @16     
                         algn: 32       ptd : @749    
@827    parm_decl        name: @268     type: @860     srcp: xlocale.h:29     
                         argt: @860     size: @16      algn: 32      
                         used: 1       
@828    void_type        qual: c        name: @86      unql: @69     
                         algn: 8       
@829    tree_list        valu: @290     chan: @54     
@830    tree_list        valu: @290     chan: @54     
@831    function_type    size: @25      algn: 64       retn: @483    
                         prms: @832    
@832    tree_list        valu: @10      chan: @861    
@833    identifier_node  strg: strerror lngt: 8       
@834    function_decl    name: @862     type: @863     srcp: string.h:237    
                         chan: @864     C              undefined     
                         extern        
@835    identifier_node  strg: __java_long             lngt: 11      
@836    integer_type     name: @806     size: @25      algn: 64      
                         prec: 64       min : @865     max : @866    
@837    type_decl        name: @867     type: @868     srcp: <internal>:0      
                         chan: @869    
@838    identifier_node  strg: __builtin_memset        lngt: 16      
@839    function_decl    name: @715     type: @870     srcp: string.h:62     
                         chan: @871     C              undefined     
                         extern        
@840    identifier_node  strg: bzero    lngt: 5       
@841    function_type    size: @25      algn: 64       retn: @69     
@842    function_decl    name: @872     type: @873     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @874     C              undefined     
                         extern        
@843    function_type    size: @25      algn: 64       retn: @561    
                         prms: @844    
@844    tree_list        valu: @483     chan: @875    
@845    identifier_node  strg: strcoll  lngt: 7       
@846    function_decl    name: @876     type: @877     srcp: string.h:76     
                         chan: @878     C              undefined     
                         extern        
@847    record_type      name: @879     algn: 8        struct        
                         binf: @880    
@848    integer_cst      type: @554     low : 12      
@849    integer_type     qual: c        name: @494     unql: @493    
                         size: @284     algn: 16       prec: 16      
                         unsigned       min : @506     max : @507    
@850    identifier_node  strg: __ctype_tolower         lngt: 15      
@851    pointer_type     size: @16      algn: 32       ptd : @5      
@852    field_decl       name: @881     type: @851     scpe: @749    
                         srcp: xlocale.h:36            chan: @882    
                         public         size: @16      algn: 32      
                         bpos: @883    
@853    integer_cst      type: @17      low : 448     
@854    tree_list        valu: @860     chan: @54     
@855    method_type      size: @25      algn: 64       clas: @749    
                         retn: @69      prms: @856    
@856    tree_list        valu: @732     chan: @884    
@857    function_decl    name: @303     type: @823     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         chan: @885     member         public        
                         constructor    args: @886     undefined     
                         extern        
@858    parm_decl        name: @230     type: @826     scpe: @824    
                         srcp: xlocale.h:29            artificial    
                         chan: @887     argt: @826     size: @16     
                         algn: 32       used: 0       
@859    parm_decl        name: @268     type: @860     srcp: xlocale.h:29     
                         argt: @860     size: @16      algn: 32      
                         used: 1       
@860    reference_type   size: @16      algn: 32       refd: @888    
@861    tree_list        valu: @483     chan: @889    
@862    identifier_node  strg: strnlen  lngt: 7       
@863    function_type    unql: @890     size: @25      algn: 64      
                         retn: @561     prms: @891    
@864    function_decl    name: @892     type: @893     srcp: string.h:224    
                         chan: @894     C              undefined     
                         extern        
@865    integer_cst      type: @836     high: -2147483648  low : 0       
@866    integer_cst      type: @836     high: 2147483647  low : -1      
@867    identifier_node  strg: __java_int              lngt: 10      
@868    integer_type     name: @837     size: @16      algn: 32      
                         prec: 32       min : @895     max : @896    
@869    type_decl        name: @897     type: @898     srcp: <internal>:0      
                         chan: @899    
@870    function_type    unql: @900     size: @25      algn: 64      
                         retn: @10      prms: @901    
@871    function_decl    name: @902     mngl: @715     type: @716    
                         srcp: <internal>:0            artificial    
                         chan: @903     C              undefined     
                         extern        
@872    identifier_node  strg: cimagl   lngt: 6       
@873    function_type    size: @25      algn: 64       retn: @324    
                         prms: @904    
@874    function_decl    name: @905     type: @906     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @907     C              undefined     
                         extern        
@875    tree_list        valu: @170     chan: @908    
@876    identifier_node  strg: memrchr  lngt: 7       
@877    function_type    unql: @909     size: @25      algn: 64      
                         retn: @141     prms: @910    
@878    function_decl    name: @911     type: @912     srcp: string.h:72     
                         chan: @913     C              undefined     
                         extern        
@879    type_decl        name: @914     type: @847     srcp: xlocale.h:31     
                         artificial     chan: @766    
@880    binfo            type: @847    
@881    identifier_node  strg: __ctype_toupper         lngt: 15      
@882    field_decl       name: @915     type: @916     scpe: @749    
                         srcp: xlocale.h:39            chan: @917    
                         public         size: @793     algn: 32      
                         bpos: @918    
@883    integer_cst      type: @17      low : 480     
@884    tree_list        valu: @860     chan: @54     
@885    function_decl    name: @788     type: @919     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         chan: @920     member         public        
                         constructor    args: @921     undefined     
                         extern        
@886    parm_decl        name: @230     type: @826     scpe: @857    
                         srcp: xlocale.h:29            artificial    
                         chan: @922     argt: @826     size: @16     
                         algn: 32       used: 0       
@887    parm_decl        name: @268     type: @860     scpe: @824    
                         srcp: xlocale.h:29            argt: @860    
                         size: @16      algn: 32       used: 1       
@888    record_type      qual: c        name: @766     unql: @749    
                         size: @767     algn: 32       struct        
                         flds: @768     fncs: @769     binf: @770    
@889    tree_list        valu: @290     chan: @54     
@890    function_type    size: @25      algn: 64       retn: @561    
                         prms: @891    
@891    tree_list        valu: @170     chan: @923    
@892    identifier_node  strg: mempcpy  lngt: 7       
@893    function_type    unql: @924     size: @25      algn: 64      
                         retn: @141     prms: @925    
@894    function_decl    name: @926     type: @893     srcp: string.h:222    
                         chan: @927     C              undefined     
                         extern        
@895    integer_cst      type: @868     high: -1       low : -2147483648 
@896    integer_cst      type: @868     low : 2147483647 
@897    identifier_node  strg: __java_short            lngt: 12      
@898    integer_type     name: @869     size: @776     algn: 16      
                         prec: 16       min : @928     max : @929    
@899    type_decl        name: @930     type: @931     srcp: <internal>:0      
                         chan: @932    
@900    function_type    size: @25      algn: 64       retn: @10     
                         prms: @901    
@901    tree_list        valu: @797     chan: @933    
@902    identifier_node  strg: __builtin_memcmp        lngt: 16      
@903    function_decl    name: @729     type: @893     srcp: string.h:39     
                         chan: @934     C              undefined     
                         extern        
@904    tree_list        valu: @254     chan: @54     
@905    identifier_node  strg: cimagf   lngt: 6       
@906    function_type    size: @25      algn: 64       retn: @104    
                         prms: @935    
@907    function_decl    name: @936     type: @937     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @938     C              undefined     
                         extern        
@908    tree_list        valu: @290     chan: @54     
@909    function_type    size: @25      algn: 64       retn: @141    
                         prms: @910    
@910    tree_list        valu: @797     chan: @939    
@911    identifier_node  strg: rawmemchr               lngt: 9       
@912    function_type    unql: @940     size: @25      algn: 64      
                         retn: @141     prms: @941    
@913    function_decl    name: @942     type: @877     srcp: string.h:66     
                         chan: @943     C              undefined     
                         extern        
@914    identifier_node  strg: locale_data             lngt: 11      
@915    identifier_node  strg: __names  lngt: 7       
@916    array_type       size: @793     algn: 32       elts: @170    
                         domn: @816    
@917    type_decl        name: @788     type: @749     scpe: @749    
                         srcp: xlocale.h:29            artificial    
@918    integer_cst      type: @17      low : 512     
@919    method_type      unql: @944     size: @25      algn: 64      
                         clas: @749     retn: @69      prms: @945    
@920    function_decl    name: @264     type: @919     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         chan: @946     member         public        
                         constructor    args: @947     undefined     
                         extern        
@921    parm_decl        name: @230     type: @826     srcp: xlocale.h:29     
                         artificial     argt: @826     size: @16     
                         algn: 32       used: 0       
@922    parm_decl        name: @268     type: @860     scpe: @857    
                         srcp: xlocale.h:29            argt: @860    
                         size: @16      algn: 32       used: 1       
@923    tree_list        valu: @290     chan: @54     
@924    function_type    size: @25      algn: 64       retn: @141    
                         prms: @925    
@925    tree_list        valu: @141     chan: @948    
@926    identifier_node  strg: __mempcpy               lngt: 9       
@927    function_decl    name: @949     type: @950     srcp: string.h:217    
                         chan: @951     C              undefined     
                         extern        
@928    integer_cst      type: @898     high: -1       low : -32768  
@929    integer_cst      type: @898     low : 32767   
@930    identifier_node  strg: __java_byte             lngt: 11      
@931    integer_type     name: @899     size: @541     algn: 8       
                         prec: 8        min : @952     max : @953    
@932    function_decl    name: @65      type: @66      srcp: <internal>:0      
                         artificial     chan: @954     C             
                         undefined      extern        
@933    tree_list        valu: @797     chan: @955    
@934    function_decl    name: @956     mngl: @729     type: @730    
                         srcp: <internal>:0            artificial    
                         chan: @957     C              undefined     
                         extern        
@935    tree_list        valu: @337     chan: @54     
@936    identifier_node  strg: cimag    lngt: 5       
@937    function_type    size: @25      algn: 64       retn: @53     
                         prms: @958    
@938    function_decl    name: @959     type: @873     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @960     C              undefined     
                         extern        
@939    tree_list        valu: @10      chan: @961    
@940    function_type    size: @25      algn: 64       retn: @141    
                         prms: @941    
@941    tree_list        valu: @797     chan: @962    
@942    identifier_node  strg: memchr   lngt: 6       
@943    function_decl    name: @963     type: @964     srcp: string.h:52     
                         chan: @965     C              undefined     
                         extern        
@944    method_type      size: @25      algn: 64       clas: @749    
                         retn: @69      prms: @945    
@945    tree_list        valu: @732     chan: @54     
@946    function_decl    name: @303     type: @919     scpe: @749    
                         srcp: xlocale.h:29            artificial    
                         member         public         constructor   
                         args: @966     undefined      extern        
@947    parm_decl        name: @230     type: @826     scpe: @920    
                         srcp: xlocale.h:29            artificial    
                         argt: @826     size: @16      algn: 32      
                         used: 0       
@948    tree_list        valu: @797     chan: @967    
@949    identifier_node  strg: memmem   lngt: 6       
@950    function_type    unql: @968     size: @25      algn: 64      
                         retn: @141     prms: @969    
@951    function_decl    name: @970     type: @971     srcp: string.h:208    
                         chan: @972     C              undefined     
                         extern        
@952    integer_cst      type: @931     high: -1       low : -128    
@953    integer_cst      type: @931     low : 127     
@954    function_decl    name: @81      type: @82      srcp: <internal>:0      
                         artificial     chan: @973     C             
                         undefined      extern        
@955    tree_list        valu: @290     chan: @54     
@956    identifier_node  strg: __builtin_memcpy        lngt: 16      
@957    function_decl    name: @747     type: @974     srcp: string.h:270    
                         chan: @975     C              undefined     
                         extern        
@958    tree_list        valu: @295     chan: @54     
@959    identifier_node  strg: creall   lngt: 6       
@960    function_decl    name: @976     type: @906     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @977     C              undefined     
                         extern        
@961    tree_list        valu: @290     chan: @54     
@962    tree_list        valu: @10      chan: @54     
@963    identifier_node  strg: memccpy  lngt: 7       
@964    function_type    unql: @978     size: @25      algn: 64      
                         retn: @141     prms: @979    
@965    function_decl    name: @980     type: @893     srcp: string.h:43     
                         chan: @573     C              undefined     
                         extern        
@966    parm_decl        name: @230     type: @826     scpe: @946    
                         srcp: xlocale.h:29            artificial    
                         argt: @826     size: @16      algn: 32      
                         used: 0       
@967    tree_list        valu: @290     chan: @54     
@968    function_type    size: @25      algn: 64       retn: @141    
                         prms: @969    
@969    tree_list        valu: @797     chan: @981    
@970    identifier_node  strg: strcasestr              lngt: 10      
@971    function_type    unql: @579     size: @25      algn: 64      
                         retn: @483     prms: @590    
@972    function_decl    name: @982     type: @983     srcp: string.h:202    
                         chan: @984     C              undefined     
                         extern        
@973    function_decl    name: @985     type: @66      srcp: <internal>:0      
                         artificial     chan: @986     C             
                         undefined      extern        
@974    function_type    unql: @518     size: @25      algn: 64      
                         retn: @483     prms: @532    
@975    function_decl    name: @987     mngl: @747     type: @518    
                         srcp: <internal>:0            artificial    
                         chan: @988     C              undefined     
                         extern        
@976    identifier_node  strg: crealf   lngt: 6       
@977    function_decl    name: @989     type: @937     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @990     C              undefined     
                         extern        
@978    function_type    size: @25      algn: 64       retn: @141    
                         prms: @979    
@979    tree_list        valu: @141     chan: @991    
@980    identifier_node  strg: memmove  lngt: 7       
@981    tree_list        valu: @290     chan: @992    
@982    identifier_node  strg: strtok_r lngt: 8       
@983    function_type    unql: @993     size: @25      algn: 64      
                         retn: @483     prms: @994    
@984    function_decl    name: @995     type: @983     srcp: string.h:199    
                         chan: @996     C              undefined     
                         extern        
@985    identifier_node  strg: _Exit    lngt: 5       
@986    function_decl    name: @997     type: @66      srcp: <internal>:0      
                         artificial     chan: @998     C             
                         undefined      extern        
@987    identifier_node  strg: __builtin_rindex        lngt: 16      
@988    function_decl    name: @764     type: @974     srcp: string.h:267    
                         chan: @999     C              undefined     
                         extern        
@989    identifier_node  strg: creal    lngt: 5       
@990    function_decl    name: @1000    type: @1001    scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1002    C              undefined     
                         extern        
@991    tree_list        valu: @797     chan: @1003   
@992    tree_list        valu: @797     chan: @1004   
@993    function_type    size: @25      algn: 64       retn: @483    
                         prms: @994    
@994    tree_list        valu: @483     chan: @1005   
@995    identifier_node  strg: __strtok_r              lngt: 10      
@996    function_decl    name: @1006    type: @595     srcp: string.h:192    
                         chan: @1007    C              undefined     
                         extern        
@997    identifier_node  strg: _exit    lngt: 5       
@998    function_decl    name: @1008    type: @1009    srcp: <internal>:0      
                         artificial     chan: @1010    C             
                         undefined      extern        
@999    function_decl    name: @1011    mngl: @764     type: @518    
                         srcp: <internal>:0            artificial    
                         chan: @1012    C              undefined     
                         extern        
@1000   identifier_node  strg: conjl    lngt: 5       
@1001   function_type    size: @25      algn: 64       retn: @254    
                         prms: @1013   
@1002   function_decl    name: @1014    type: @1015    scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1016    C              undefined     
                         extern        
@1003   tree_list        valu: @10      chan: @1017   
@1004   tree_list        valu: @290     chan: @54     
@1005   tree_list        valu: @170     chan: @1018   
@1006   identifier_node  strg: strtok   lngt: 6       
@1007   function_decl    name: @1019    type: @974     srcp: string.h:170    
                         chan: @1020    C              undefined     
                         extern        
@1008   identifier_node  strg: __builtin_expect        lngt: 16      
@1009   function_type    size: @25      algn: 64       retn: @213    
                         prms: @1021   
@1010   function_decl    name: @1022    type: @1023    srcp: <internal>:0      
                         artificial     chan: @1024    C             
                         undefined      extern        
@1011   identifier_node  strg: __builtin_index         lngt: 15      
@1012   function_decl    name: @785     type: @1025    srcp: string.h:274    
                         chan: @1026    C              undefined     
                         extern        
@1013   tree_list        valu: @254     chan: @54     
@1014   identifier_node  strg: conjf    lngt: 5       
@1015   function_type    size: @25      algn: 64       retn: @337    
                         prms: @1027   
@1016   function_decl    name: @1028    type: @1029    scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1030    C              undefined     
                         extern        
@1017   tree_list        valu: @290     chan: @54     
@1018   tree_list        valu: @675     chan: @54     
@1019   identifier_node  strg: strchrnul               lngt: 9       
@1020   function_decl    name: @1031    type: @1032    srcp: string.h:134    
                         chan: @1033    C              undefined     
                         extern        
@1021   tree_list        valu: @213     chan: @1034   
@1022   identifier_node  strg: __builtin_va_copy       lngt: 17      
@1023   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1035   
@1024   function_decl    name: @1036    type: @1037    srcp: <internal>:0      
                         artificial     chan: @1038    C             
                         undefined      extern        
@1025   function_type    unql: @786     size: @25      algn: 64      
                         retn: @10      prms: @809    
@1026   function_decl    name: @1039    mngl: @785     type: @786    
                         srcp: <internal>:0            artificial    
                         chan: @1040    C              undefined     
                         extern        
@1027   tree_list        valu: @337     chan: @54     
@1028   identifier_node  strg: conj     lngt: 4       
@1029   function_type    size: @25      algn: 64       retn: @295    
                         prms: @1041   
@1030   function_decl    name: @1042    type: @1043    scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1044    C              undefined     
                         extern        
@1031   identifier_node  strg: strndup  lngt: 7       
@1032   function_type    unql: @1045    size: @25      algn: 64      
                         retn: @483     prms: @1046   
@1033   function_decl    name: @1047    type: @528     srcp: string.h:126    
                         chan: @1048    C              undefined     
                         extern        
@1034   tree_list        valu: @213     chan: @54     
@1035   tree_list        valu: @1049    chan: @1050   
@1036   identifier_node  strg: __builtin_va_end        lngt: 16      
@1037   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1051   
@1038   function_decl    name: @1052    type: @1053    srcp: <internal>:0      
                         artificial     chan: @1054    C             
                         undefined      extern        
@1039   identifier_node  strg: __builtin_ffs           lngt: 13      
@1040   function_decl    name: @810     type: @870     srcp: string.h:264    
                         chan: @1055    C              undefined     
                         extern        
@1041   tree_list        valu: @295     chan: @54     
@1042   identifier_node  strg: imaxabs  lngt: 7       
@1043   function_type    size: @25      algn: 64       retn: @155    
                         prms: @1056   
@1044   function_decl    name: @1057    type: @1043    scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1058    C              undefined     
                         extern        
@1045   function_type    size: @25      algn: 64       retn: @483    
                         prms: @1046   
@1046   tree_list        valu: @170     chan: @1059   
@1047   identifier_node  strg: strdup   lngt: 6       
@1048   function_decl    name: @1060    type: @1061    srcp: string.h:121    
                         chan: @1062    C              undefined     
                         extern        
@1049   reference_type   size: @16      algn: 32       refd: @1063   
@1050   tree_list        valu: @1063    chan: @54     
@1051   tree_list        valu: @1049    chan: @54     
@1052   identifier_node  strg: __builtin_stdarg_start  lngt: 22      
@1053   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1064   
@1054   function_decl    name: @1065    type: @1037    srcp: <internal>:0      
                         artificial     chan: @1066    C             
                         undefined      extern        
@1055   function_decl    name: @1067    mngl: @810     type: @1068   
                         srcp: <internal>:0            artificial    
                         chan: @1069    C              undefined     
                         extern        
@1056   tree_list        valu: @155     chan: @54     
@1057   identifier_node  strg: llabs    lngt: 5       
@1058   function_decl    name: @1070    type: @282     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1071    C              undefined     
                         extern        
@1059   tree_list        valu: @290     chan: @54     
@1060   identifier_node  strg: strxfrm_l               lngt: 9       
@1061   function_type    unql: @1072    size: @25      algn: 64      
                         retn: @561     prms: @1073   
@1062   function_decl    name: @1074    type: @680     srcp: string.h:118    
                         chan: @1075    C              undefined     
                         extern        
@1063   pointer_type     name: @1076    unql: @483     size: @16     
                         algn: 32       ptd : @30     
@1064   tree_list        valu: @1049   
@1065   identifier_node  strg: __builtin_varargs_start lngt: 23      
@1066   function_decl    name: @1077    type: @786     srcp: <internal>:0      
                         artificial     chan: @1078    C             
                         undefined      extern        
@1067   identifier_node  strg: __builtin_bcmp          lngt: 14      
@1068   function_type    size: @25      algn: 64       retn: @10     
                         prms: @1079   
@1069   function_decl    name: @840     type: @774     srcp: string.h:260    
                         chan: @1080    C              undefined     
                         extern        
@1070   identifier_node  strg: fabsl    lngt: 5       
@1071   function_decl    name: @1081    type: @402     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1082    C              undefined     
                         extern        
@1072   function_type    size: @25      algn: 64       retn: @561    
                         prms: @1073   
@1073   tree_list        valu: @483     chan: @1083   
@1074   identifier_node  strg: strcoll_l               lngt: 9       
@1075   type_decl        name: @1084    type: @1085    srcp: xlocale.h:40     
                         chan: @879    
@1076   type_decl        name: @1086    type: @1063    srcp: <internal>:0      
                         chan: @1087   
@1077   identifier_node  strg: __builtin_eh_return_data_regno 
                         lngt: 30      
@1078   function_decl    name: @1088    type: @1089    srcp: <internal>:0      
                         artificial     chan: @1090    C             
                         undefined      extern        
@1079   tree_list        valu: @744     chan: @1091   
@1080   function_decl    name: @1092    mngl: @840     type: @1093   
                         srcp: <internal>:0            artificial    
                         chan: @1094    C              undefined     
                         extern        
@1081   identifier_node  strg: fabsf    lngt: 5       
@1082   function_decl    name: @1095    type: @467     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1096    C              undefined     
                         extern        
@1083   tree_list        valu: @170     chan: @1097   
@1084   identifier_node  strg: __locale_t              lngt: 10      
@1085   pointer_type     name: @1075    unql: @732     size: @16     
                         algn: 32       ptd : @749    
@1086   identifier_node  strg: __builtin_va_list       lngt: 17      
@1087   type_decl        name: @1098    type: @1099    srcp: <internal>:0      
                         chan: @86     
@1088   identifier_node  strg: __builtin_eh_return     lngt: 19      
@1089   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1100   
@1090   function_decl    name: @1101    type: @1102    srcp: <internal>:0      
                         artificial     chan: @1103    C             
                         undefined      extern        
@1091   tree_list        valu: @744     chan: @1104   
@1092   identifier_node  strg: __builtin_bzero         lngt: 15      
@1093   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1105   
@1094   function_decl    name: @872     type: @873     srcp: <internal>:0      
                         artificial     chan: @1106    C             
                         undefined      extern        
@1095   identifier_node  strg: fabs     lngt: 4       
@1096   function_decl    name: @1107    type: @1108    scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1109    C              undefined     
                         extern        
@1097   tree_list        valu: @290     chan: @1110   
@1098   identifier_node  strg: wchar_t  lngt: 7       
@1099   integer_type     name: @1087    size: @16      algn: 32      
                         prec: 32       min : @1111    max : @1112   
@1100   tree_list        valu: @10      chan: @1113   
@1101   identifier_node  strg: __builtin_extract_return_addr 
                         lngt: 29      
@1102   function_type    size: @25      algn: 64       retn: @141    
                         prms: @1114   
@1103   function_decl    name: @1115    type: @1102    srcp: <internal>:0      
                         artificial     chan: @1116    C             
                         undefined      extern        
@1104   tree_list        valu: @554     chan: @54     
@1105   tree_list        valu: @141     chan: @1117   
@1106   function_decl    name: @1118    mngl: @872     type: @873    
                         srcp: <internal>:0            artificial    
                         chan: @1119    C              undefined     
                         extern        
@1107   identifier_node  strg: labs     lngt: 4       
@1108   function_type    size: @25      algn: 64       retn: @213    
                         prms: @1120   
@1109   function_decl    name: @1121    type: @786     scpe: @19     
                         srcp: <internal>:0            artificial    
                         chan: @1122    C              undefined     
                         extern        
@1110   tree_list        valu: @732     chan: @54     
@1111   integer_cst      type: @1099    high: -1       low : -2147483648 
@1112   integer_cst      type: @1099    low : 2147483647 
@1113   tree_list        valu: @141     chan: @54     
@1114   tree_list        valu: @141     chan: @54     
@1115   identifier_node  strg: __builtin_frob_return_addr 
                         lngt: 26      
@1116   function_decl    name: @1123    type: @598     srcp: <internal>:0      
                         artificial     chan: @1124    C             
                         undefined      extern        
@1117   tree_list        valu: @554     chan: @54     
@1118   identifier_node  strg: __builtin_cimagl        lngt: 16      
@1119   function_decl    name: @905     type: @906     srcp: <internal>:0      
                         artificial     chan: @1125    C             
                         undefined      extern        
@1120   tree_list        valu: @213     chan: @54     
@1121   identifier_node  strg: abs      lngt: 3       
@1122   function_decl    name: @1126    type: @653     scpe: @19     
                         srcp: <internal>:0            artificial    
                         C              undefined      extern        
@1123   identifier_node  strg: __builtin_init_dwarf_reg_size_table 
                         lngt: 35      
@1124   function_decl    name: @1127    type: @1128    srcp: <internal>:0      
                         artificial     chan: @1129    C             
                         undefined      extern        
@1125   function_decl    name: @1130    mngl: @905     type: @906    
                         srcp: <internal>:0            artificial    
                         chan: @1131    C              undefined     
                         extern        
@1126   identifier_node  strg: alloca   lngt: 6       
@1127   identifier_node  strg: __builtin_dwarf_fp_regnum 
                         lngt: 25      
@1128   function_type    size: @25      algn: 64       retn: @290    
                         prms: @54     
@1129   function_decl    name: @1132    type: @1133    srcp: <internal>:0      
                         artificial     chan: @1134    C             
                         undefined      extern        
@1130   identifier_node  strg: __builtin_cimagf        lngt: 16      
@1131   function_decl    name: @936     type: @937     srcp: <internal>:0      
                         artificial     chan: @1135    C             
                         undefined      extern        
@1132   identifier_node  strg: __builtin_dwarf_cfa     lngt: 19      
@1133   function_type    size: @25      algn: 64       retn: @141    
                         prms: @54     
@1134   function_decl    name: @1136    type: @82      srcp: <internal>:0      
                         artificial     chan: @1137    C             
                         undefined      extern        
@1135   function_decl    name: @1138    mngl: @936     type: @937    
                         srcp: <internal>:0            artificial    
                         chan: @1139    C              undefined     
                         extern        
@1136   identifier_node  strg: __builtin_unwind_init   lngt: 21      
@1137   function_decl    name: @1140    type: @124     srcp: <internal>:0      
                         artificial     chan: @1141    C             
                         undefined      extern        
@1138   identifier_node  strg: __builtin_cimag         lngt: 15      
@1139   function_decl    name: @959     type: @873     srcp: <internal>:0      
                         artificial     chan: @1142    C             
                         undefined      extern        
@1140   identifier_node  strg: __builtin_isunordered   lngt: 21      
@1141   function_decl    name: @1143    type: @124     srcp: <internal>:0      
                         artificial     chan: @1144    C             
                         undefined      extern        
@1142   function_decl    name: @1145    mngl: @959     type: @873    
                         srcp: <internal>:0            artificial    
                         chan: @1146    C              undefined     
                         extern        
@1143   identifier_node  strg: __builtin_islessgreater lngt: 23      
@1144   function_decl    name: @1147    type: @124     srcp: <internal>:0      
                         artificial     chan: @1148    C             
                         undefined      extern        
@1145   identifier_node  strg: __builtin_creall        lngt: 16      
@1146   function_decl    name: @976     type: @906     srcp: <internal>:0      
                         artificial     chan: @1149    C             
                         undefined      extern        
@1147   identifier_node  strg: __builtin_islessequal   lngt: 21      
@1148   function_decl    name: @1150    type: @124     srcp: <internal>:0      
                         artificial     chan: @1151    C             
                         undefined      extern        
@1149   function_decl    name: @1152    mngl: @976     type: @906    
                         srcp: <internal>:0            artificial    
                         chan: @1153    C              undefined     
                         extern        
@1150   identifier_node  strg: __builtin_isless        lngt: 16      
@1151   function_decl    name: @1154    type: @124     srcp: <internal>:0      
                         artificial     chan: @1155    C             
                         undefined      extern        
@1152   identifier_node  strg: __builtin_crealf        lngt: 16      
@1153   function_decl    name: @989     type: @937     srcp: <internal>:0      
                         artificial     chan: @1156    C             
                         undefined      extern        
@1154   identifier_node  strg: __builtin_isgreaterequal 
                         lngt: 24      
@1155   function_decl    name: @1157    type: @124     srcp: <internal>:0      
                         artificial     chan: @1158    C             
                         undefined      extern        
@1156   function_decl    name: @1159    mngl: @989     type: @937    
                         srcp: <internal>:0            artificial    
                         chan: @1160    C              undefined     
                         extern        
@1157   identifier_node  strg: __builtin_isgreater     lngt: 19      
@1158   function_decl    name: @100     type: @101     srcp: <internal>:0      
                         artificial     chan: @1161    C             
                         undefined      extern        
@1159   identifier_node  strg: __builtin_creal         lngt: 15      
@1160   function_decl    name: @1000    type: @1001    srcp: <internal>:0      
                         artificial     chan: @1162    C             
                         undefined      extern        
@1161   function_decl    name: @1163    mngl: @100     type: @101    
                         srcp: <internal>:0            artificial    
                         chan: @1164    C              undefined     
                         extern        
@1162   function_decl    name: @1165    mngl: @1000    type: @1001   
                         srcp: <internal>:0            artificial    
                         chan: @1166    C              undefined     
                         extern        
@1163   identifier_node  strg: __builtin_fprintf_unlocked 
                         lngt: 26      
@1164   function_decl    name: @1167    mngl: @1168    type: @1169   
                         srcp: <internal>:0            artificial    
                         chan: @1170    C              undefined     
                         extern        
@1165   identifier_node  strg: __builtin_conjl         lngt: 15      
@1166   function_decl    name: @1014    type: @1015    srcp: <internal>:0      
                         artificial     chan: @1171    C             
                         undefined      extern        
@1167   identifier_node  strg: __builtin_fwrite_unlocked 
                         lngt: 25      
@1168   identifier_node  strg: fwrite_unlocked         lngt: 15      
@1169   function_type    size: @25      algn: 64       retn: @290    
                         prms: @1172   
@1170   function_decl    name: @123     type: @124     srcp: <internal>:0      
                         artificial     chan: @1173    C             
                         undefined      extern        
@1171   function_decl    name: @1174    mngl: @1014    type: @1015   
                         srcp: <internal>:0            artificial    
                         chan: @1175    C              undefined     
                         extern        
@1172   tree_list        valu: @744     chan: @1176   
@1173   function_decl    name: @1177    mngl: @123     type: @1178   
                         srcp: <internal>:0            artificial    
                         chan: @1179    C              undefined     
                         extern        
@1174   identifier_node  strg: __builtin_conjf         lngt: 15      
@1175   function_decl    name: @1028    type: @1029    srcp: <internal>:0      
                         artificial     chan: @1180    C             
                         undefined      extern        
@1176   tree_list        valu: @290     chan: @1181   
@1177   identifier_node  strg: __builtin_fputs_unlocked 
                         lngt: 24      
@1178   function_type    size: @25      algn: 64       retn: @10     
                         prms: @1182   
@1179   function_decl    name: @1183    mngl: @1184    type: @1185   
                         srcp: <internal>:0            artificial    
                         chan: @1186    C              undefined     
                         extern        
@1180   function_decl    name: @1187    mngl: @1028    type: @1029   
                         srcp: <internal>:0            artificial    
                         chan: @1188    C              undefined     
                         extern        
@1181   tree_list        valu: @290     chan: @1189   
@1182   tree_list        valu: @170     chan: @1190   
@1183   identifier_node  strg: __builtin_fputc_unlocked 
                         lngt: 24      
@1184   identifier_node  strg: fputc_unlocked          lngt: 14      
@1185   function_type    size: @25      algn: 64       retn: @10     
                         prms: @1191   
@1186   function_decl    name: @143     type: @144     srcp: <internal>:0      
                         artificial     chan: @1192    C             
                         undefined      extern        
@1187   identifier_node  strg: __builtin_conj          lngt: 14      
@1188   function_decl    name: @1042    type: @1043    srcp: <internal>:0      
                         artificial     chan: @1193    C             
                         undefined      extern        
@1189   tree_list        valu: @141     chan: @54     
@1190   tree_list        valu: @141     chan: @54     
@1191   tree_list        valu: @10      chan: @1194   
@1192   function_decl    name: @1195    mngl: @143     type: @144    
                         srcp: <internal>:0            artificial    
                         chan: @1196    C              undefined     
                         extern        
@1193   function_decl    name: @1197    mngl: @1042    type: @1043   
                         srcp: <internal>:0            artificial    
                         chan: @1198    C              undefined     
                         extern        
@1194   tree_list        valu: @141     chan: @54     
@1195   identifier_node  strg: __builtin_printf_unlocked 
                         lngt: 25      
@1196   function_decl    name: @1199    mngl: @1200    type: @1201   
                         srcp: <internal>:0            artificial    
                         chan: @1202    C              undefined     
                         extern        
@1197   identifier_node  strg: __builtin_imaxabs       lngt: 17      
@1198   function_decl    name: @1057    type: @1043    srcp: <internal>:0      
                         artificial     chan: @1203    C             
                         undefined      extern        
@1199   identifier_node  strg: __builtin_puts_unlocked lngt: 23      
@1200   identifier_node  strg: puts_unlocked           lngt: 13      
@1201   function_type    size: @25      algn: 64       retn: @10     
                         prms: @1204   
@1202   function_decl    name: @1205    mngl: @1206    type: @786    
                         srcp: <internal>:0            artificial    
                         chan: @1207    C              undefined     
                         extern        
@1203   function_decl    name: @1208    mngl: @1057    type: @1043   
                         srcp: <internal>:0            artificial    
                         chan: @1209    C              undefined     
                         extern        
@1204   tree_list        valu: @170     chan: @54     
@1205   identifier_node  strg: __builtin_putchar_unlocked 
                         lngt: 26      
@1206   identifier_node  strg: putchar_unlocked        lngt: 16      
@1207   function_decl    name: @172     type: @101     srcp: <internal>:0      
                         artificial     chan: @1210    C             
                         undefined      extern        
@1208   identifier_node  strg: __builtin_llabs         lngt: 15      
@1209   function_decl    name: @1070    type: @282     srcp: <internal>:0      
                         artificial     chan: @1211    C             
                         undefined      extern        
@1210   function_decl    name: @1212    mngl: @172     type: @101    
                         srcp: <internal>:0            artificial    
                         chan: @1213    C              undefined     
                         extern        
@1211   function_decl    name: @1214    type: @282     srcp: <internal>:0      
                         artificial     chan: @1215    C             
                         undefined      extern        
@1212   identifier_node  strg: __builtin_fprintf       lngt: 17      
@1213   function_decl    name: @1216    mngl: @1217    type: @1169   
                         srcp: <internal>:0            artificial    
                         chan: @1218    C              undefined     
                         extern        
@1214   identifier_node  strg: __builtin_fabsl         lngt: 15      
@1215   function_decl    name: @1081    type: @402     srcp: <internal>:0      
                         artificial     chan: @1219    C             
                         undefined      extern        
@1216   identifier_node  strg: __builtin_fwrite        lngt: 16      
@1217   identifier_node  strg: fwrite   lngt: 6       
@1218   function_decl    name: @201     type: @124     srcp: <internal>:0      
                         artificial     chan: @1220    C             
                         undefined      extern        
@1219   function_decl    name: @1221    type: @402     srcp: <internal>:0      
                         artificial     chan: @1222    C             
                         undefined      extern        
@1220   function_decl    name: @1223    mngl: @201     type: @1178   
                         srcp: <internal>:0            artificial    
                         chan: @1224    C              undefined     
                         extern        
@1221   identifier_node  strg: __builtin_fabsf         lngt: 15      
@1222   function_decl    name: @1095    type: @467     srcp: <internal>:0      
                         artificial     chan: @1225    C             
                         undefined      extern        
@1223   identifier_node  strg: __builtin_fputs         lngt: 15      
@1224   function_decl    name: @1226    mngl: @1227    type: @1185   
                         srcp: <internal>:0            artificial    
                         chan: @1228    C              undefined     
                         extern        
@1225   function_decl    name: @1229    type: @467     srcp: <internal>:0      
                         artificial     chan: @1230    C             
                         undefined      extern        
@1226   identifier_node  strg: __builtin_fputc         lngt: 15      
@1227   identifier_node  strg: fputc    lngt: 5       
@1228   function_decl    name: @241     type: @144     srcp: <internal>:0      
                         artificial     chan: @1231    C             
                         undefined      extern        
@1229   identifier_node  strg: __builtin_fabs          lngt: 14      
@1230   function_decl    name: @1107    type: @1108    srcp: <internal>:0      
                         artificial     chan: @1232    C             
                         undefined      extern        
@1231   function_decl    name: @1233    mngl: @241     type: @144    
                         srcp: <internal>:0            artificial    
                         chan: @1234    C              undefined     
                         extern        
@1232   function_decl    name: @1235    type: @1108    srcp: <internal>:0      
                         artificial     chan: @1236    C             
                         undefined      extern        
@1233   identifier_node  strg: __builtin_printf        lngt: 16      
@1234   function_decl    name: @1237    mngl: @1238    type: @1201   
                         srcp: <internal>:0            artificial    
                         chan: @1239    C              undefined     
                         extern        
@1235   identifier_node  strg: __builtin_labs          lngt: 14      
@1236   function_decl    name: @1121    type: @786     srcp: <internal>:0      
                         artificial     chan: @1240    C             
                         undefined      extern        
@1237   identifier_node  strg: __builtin_puts          lngt: 14      
@1238   identifier_node  strg: puts     lngt: 4       
@1239   function_decl    name: @1241    mngl: @1242    type: @786    
                         srcp: <internal>:0            artificial    
                         chan: @1243    C              undefined     
                         extern        
@1240   function_decl    name: @1244    type: @786     srcp: <internal>:0      
                         artificial     chan: @1245    C             
                         undefined      extern        
@1241   identifier_node  strg: __builtin_putchar       lngt: 17      
@1242   identifier_node  strg: putchar  lngt: 7       
@1243   function_decl    name: @1246    type: @1247    srcp: <internal>:0      
                         artificial     chan: @1248    C             
                         undefined      extern        
@1244   identifier_node  strg: __builtin_abs           lngt: 13      
@1245   function_decl    name: @1126    type: @653     srcp: <internal>:0      
                         artificial     chan: @1249    C             
                         undefined      extern        
@1246   identifier_node  strg: __builtin_prefetch      lngt: 18      
@1247   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1250   
@1248   function_decl    name: @1251    type: @82      srcp: <internal>:0      
                         artificial     chan: @1252    C             
                         undefined      extern        
@1249   function_decl    name: @1253    mngl: @1126    type: @653    
                         srcp: <internal>:0            artificial    
                         chan: @1254    C              undefined     
                         extern        
@1250   tree_list        valu: @744    
@1251   identifier_node  strg: __builtin_trap          lngt: 14      
@1252   function_decl    name: @1255    type: @1256    srcp: <internal>:0      
                         artificial     chan: @1257    C             
                         undefined      extern        
@1253   identifier_node  strg: __builtin_alloca        lngt: 16      
@1254   type_decl        name: @1258    type: @554     srcp: <internal>:0      
                         chan: @1259   
@1255   identifier_node  strg: __builtin_longjmp       lngt: 17      
@1256   function_type    size: @25      algn: 64       retn: @69     
                         prms: @1260   
@1257   function_decl    name: @1261    type: @1262    srcp: <internal>:0      
                         artificial     chan: @1263    C             
                         undefined      extern        
@1258   identifier_node  strg: __builtin_size_t        lngt: 16      
@1259   type_decl        name: @1264    type: @10      srcp: <internal>:0      
                         chan: @1076   
@1260   tree_list        valu: @141     chan: @1265   
@1261   identifier_node  strg: __builtin_setjmp        lngt: 16      
@1262   function_type    size: @25      algn: 64       retn: @10     
                         prms: @1266   
@1263   function_decl    name: @1267    type: @598     srcp: <internal>:0      
                         artificial     chan: @1268    C             
                         undefined      extern        
@1264   identifier_node  strg: __builtin_ptrdiff_t     lngt: 19      
@1265   tree_list        valu: @10      chan: @54     
@1266   tree_list        valu: @141     chan: @54     
@1267   identifier_node  strg: __builtin_return        lngt: 16      
@1268   function_decl    name: @1269    type: @1270    srcp: <internal>:0      
                         artificial     chan: @1271    C             
                         undefined      extern        
@1269   identifier_node  strg: __builtin_apply         lngt: 15      
@1270   function_type    size: @25      algn: 64       retn: @141    
                         prms: @1272   
@1271   function_decl    name: @1273    type: @1274    srcp: <internal>:0      
                         artificial     chan: @1275    C             
                         undefined      extern        
@1272   tree_list        valu: @1276    chan: @1277   
@1273   identifier_node  strg: __builtin_apply_args    lngt: 20      
@1274   function_type    size: @25      algn: 64       retn: @141    
@1275   function_decl    name: @1278    type: @1274    srcp: <internal>:0      
                         artificial     chan: @1279    C             
                         undefined      extern        
@1276   pointer_type     size: @16      algn: 32       ptd : @841    
@1277   tree_list        valu: @141     chan: @1280   
@1278   identifier_node  strg: __builtin_aggregate_incoming_address 
                         lngt: 36      
@1279   function_decl    name: @1281    type: @653     srcp: <internal>:0      
                         artificial     chan: @1282    C             
                         undefined      extern        
@1280   tree_list        valu: @290     chan: @54     
@1281   identifier_node  strg: __builtin_return_address 
                         lngt: 24      
@1282   function_decl    name: @1283    type: @653     srcp: <internal>:0      
                         artificial     chan: @1284    C             
                         undefined      extern        
@1283   identifier_node  strg: __builtin_frame_address lngt: 23      
@1284   function_decl    name: @1285    type: @124     srcp: <internal>:0      
                         artificial     chan: @1286    C             
                         undefined      extern        
@1285   identifier_node  strg: __builtin_constant_p    lngt: 20      
@1286   function_decl    name: @1287    type: @786     srcp: <internal>:0      
                         artificial     chan: @1288    C             
                         undefined      extern        
@1287   identifier_node  strg: __builtin_args_info     lngt: 19      
@1288   function_decl    name: @1289    type: @1274    srcp: <internal>:0      
                         artificial     chan: @1290    C             
                         undefined      extern        
@1289   identifier_node  strg: __builtin_next_arg      lngt: 18      
@1290   function_decl    name: @1291    type: @124     srcp: <internal>:0      
                         artificial     chan: @1292    C             
                         undefined      extern        
@1291   identifier_node  strg: __builtin_classify_type lngt: 23      
@1292   function_decl    name: @1293    type: @1274    srcp: <internal>:0      
                         artificial     chan: @1294    C             
                         undefined      extern        
@1293   identifier_node  strg: __builtin_saveregs      lngt: 18      
@1294   function_decl    name: @281     type: @282     srcp: <internal>:0      
                         artificial     chan: @1295    C             
                         undefined      extern        
@1295   function_decl    name: @1296    mngl: @281     type: @282    
                         srcp: <internal>:0            artificial    
                         chan: @1297    C              undefined     
                         extern        
@1296   identifier_node  strg: __builtin_cosl          lngt: 14      
@1297   function_decl    name: @326     type: @282     srcp: <internal>:0      
                         artificial     chan: @1298    C             
                         undefined      extern        
@1298   function_decl    name: @1299    mngl: @326     type: @282    
                         srcp: <internal>:0            artificial    
                         chan: @1300    C              undefined     
                         extern        
@1299   identifier_node  strg: __builtin_sinl          lngt: 14      
@1300   function_decl    name: @370     type: @282     srcp: <internal>:0      
                         artificial     chan: @1301    C             
                         undefined      extern        
@1301   function_decl    name: @1302    mngl: @370     type: @282    
                         srcp: <internal>:0            artificial    
                         chan: @1303    C              undefined     
                         extern        
@1302   identifier_node  strg: __builtin_sqrtl         lngt: 15      
@1303   function_decl    name: @401     type: @402     srcp: <internal>:0      
                         artificial     chan: @1304    C             
                         undefined      extern        
@1304   function_decl    name: @1305    mngl: @401     type: @402    
                         srcp: <internal>:0            artificial    
                         chan: @1306    C              undefined     
                         extern        
@1305   identifier_node  strg: __builtin_cosf          lngt: 14      
@1306   function_decl    name: @426     type: @402     srcp: <internal>:0      
                         artificial     chan: @1307    C             
                         undefined      extern        
@1307   function_decl    name: @1308    mngl: @426     type: @402    
                         srcp: <internal>:0            artificial    
                         chan: @1309    C              undefined     
                         extern        
@1308   identifier_node  strg: __builtin_sinf          lngt: 14      
@1309   function_decl    name: @447     type: @402     srcp: <internal>:0      
                         artificial     chan: @1310    C             
                         undefined      extern        
@1310   function_decl    name: @1311    mngl: @447     type: @402    
                         srcp: <internal>:0            artificial    
                         chan: @1312    C              undefined     
                         extern        
@1311   identifier_node  strg: __builtin_sqrtf         lngt: 15      
@1312   function_decl    name: @466     type: @467     srcp: <internal>:0      
                         artificial     chan: @1313    C             
                         undefined      extern        
@1313   function_decl    name: @1314    mngl: @466     type: @467    
                         srcp: <internal>:0            artificial    
                         chan: @1315    C              undefined     
                         extern        
@1314   identifier_node  strg: __builtin_cos           lngt: 13      
@1315   function_decl    name: @488     type: @467     srcp: <internal>:0      
                         artificial     chan: @1316    C             
                         undefined      extern        
@1316   function_decl    name: @1317    mngl: @488     type: @467    
                         srcp: <internal>:0            artificial    
                         chan: @1318    C              undefined     
                         extern        
@1317   identifier_node  strg: __builtin_sin           lngt: 13      
@1318   function_decl    name: @504     type: @467     srcp: <internal>:0      
                         artificial     chan: @1319    C             
                         undefined      extern        
@1319   function_decl    name: @1320    mngl: @504     type: @467    
                         srcp: <internal>:0            artificial    
                         chan: @1321    C              undefined     
                         extern        
@1320   identifier_node  strg: __builtin_sqrt          lngt: 14      
@1321   function_decl    name: @517     type: @974     srcp: string.h:164    
                         chan: @1322    C              undefined     
                         extern        
@1322   function_decl    name: @1323    mngl: @517     type: @518    
                         srcp: <internal>:0            artificial    
                         chan: @1324    C              undefined     
                         extern        
@1323   identifier_node  strg: __builtin_strrchr       lngt: 17      
@1324   function_decl    name: @533     type: @974     srcp: string.h:162    
                         chan: @1325    C              undefined     
                         extern        
@1325   function_decl    name: @1326    mngl: @533     type: @518    
                         srcp: <internal>:0            artificial    
                         chan: @1327    C              undefined     
                         extern        
@1326   identifier_node  strg: __builtin_strchr        lngt: 16      
@1327   function_decl    name: @551     type: @1328    srcp: string.h:177    
                         chan: @1329    C              undefined     
                         extern        
@1328   function_type    unql: @1330    size: @25      algn: 64      
                         retn: @561     prms: @1331   
@1329   function_decl    name: @1332    mngl: @551     type: @552    
                         srcp: <internal>:0            artificial    
                         chan: @1333    C              undefined     
                         extern        
@1330   function_type    size: @25      algn: 64       retn: @561    
                         prms: @1331   
@1331   tree_list        valu: @170     chan: @1334   
@1332   identifier_node  strg: __builtin_strcspn       lngt: 17      
@1333   function_decl    name: @565     type: @1328    srcp: string.h:181    
                         chan: @1335    C              undefined     
                         extern        
@1334   tree_list        valu: @170     chan: @54     
@1335   function_decl    name: @1336    mngl: @565     type: @552    
                         srcp: <internal>:0            artificial    
                         chan: @1337    C              undefined     
                         extern        
@1336   identifier_node  strg: __builtin_strspn        lngt: 16      
@1337   function_decl    name: @578     type: @971     srcp: string.h:184    
                         chan: @1338    C              undefined     
                         extern        
@1338   function_decl    name: @1339    mngl: @578     type: @579    
                         srcp: <internal>:0            artificial    
                         chan: @1340    C              undefined     
                         extern        
@1339   identifier_node  strg: __builtin_strpbrk       lngt: 17      
@1340   function_decl    name: @591     type: @971     srcp: string.h:187    
                         chan: @1341    C              undefined     
                         extern        
@1341   function_decl    name: @1342    mngl: @591     type: @579    
                         srcp: <internal>:0            artificial    
                         chan: @575     C              undefined     
                         extern        
@1342   identifier_node  strg: __builtin_strstr        lngt: 16      
