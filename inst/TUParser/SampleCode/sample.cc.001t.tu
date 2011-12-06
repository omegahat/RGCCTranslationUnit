@1      namespace_decl   name: @2       srcp: <built-in>:0      
                         dcls: @3      
@2      identifier_node  strg: ::       lngt: 2       
@3      function_decl    name: @4       type: @5       srcp: sample.cc:4      
                         chan: @6       lang: C        args: @7      
                         link: extern   body: @8      
@4      identifier_node  strg: main     lngt: 4       
@5      function_type    size: @9       algn: 8        retn: @10     
                         prms: @11     
@6      function_decl    name: @12      type: @13      srcp: string.h:131    
                         chan: @14      lang: C        args: @15     
                         body: undefined               link: extern  
@7      parm_decl        name: @16      type: @10      scpe: @3      
                         srcp: sample.cc:4             chan: @17     
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@8      bind_expr        type: @19      vars: @20      body: @21     
@9      integer_cst      type: @22      low : 8       
@10     integer_type     name: @23      size: @18      algn: 32      
                         prec: 32       sign: signed   min : @24     
                         max : @25     
@11     tree_list        valu: @10      chan: @26     
@12     identifier_node  strg: swab     lngt: 4       
@13     function_type    size: @9       algn: 8        retn: @19     
                         prms: @27     
@14     function_decl    name: @28      type: @29      srcp: string.h:130    
                         chan: @30      lang: C        args: @31     
                         body: undefined               link: extern  
@15     parm_decl        type: @32      srcp: string.h:131    
                         chan: @33      argt: @32      size: @18     
                         algn: 32       used: 0       
@16     identifier_node  strg: argc     lngt: 4       
@17     parm_decl        name: @34      type: @35      scpe: @3      
                         srcp: sample.cc:4             argt: @35     
                         size: @18      algn: 32       used: 0       
@18     integer_cst      type: @22      low : 32      
@19     void_type        name: @36      algn: 8       
@20     var_decl         type: @10      scpe: @3       srcp: sample.cc:0      
                         note: artificial              size: @18     
                         algn: 32       used: 1       
@21     statement_list   0   : @37      1   : @38      2   : @39     
@22     integer_type     name: @40      size: @41      algn: 64      
                         prec: 36       sign: unsigned min : @42     
                         max : @43     
@23     type_decl        name: @44      type: @10      srcp: <built-in>:0      
                         note: artificial 
@24     integer_cst      type: @10      high: -1       low : -2147483648 
@25     integer_cst      type: @10      low : 2147483647 
@26     tree_list        valu: @35      chan: @45     
@27     tree_list        valu: @32      chan: @46     
@28     identifier_node  strg: strsignal               lngt: 9       
@29     function_type    size: @9       algn: 8        retn: @47     
                         prms: @48     
@30     function_decl    name: @49      type: @50      srcp: string.h:129    
                         chan: @51      lang: C        args: @52     
                         body: undefined               link: extern  
@31     parm_decl        name: @53      type: @10      srcp: string.h:130    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@32     pointer_type     size: @18      algn: 32       ptd : @54     
@33     parm_decl        type: @55      srcp: string.h:131    
                         chan: @56      argt: @55      size: @18     
                         algn: 32       used: 0       
@34     identifier_node  strg: argv     lngt: 4       
@35     pointer_type     size: @18      algn: 32       ptd : @47     
@36     type_decl        name: @57      type: @19      srcp: <built-in>:0      
                         note: artificial 
@37     bind_expr        type: @19      vars: @58      body: @59     
@38     modify_expr      type: @10      op 0: @20      op 1: @60     
@39     return_expr      type: @19      expr: @61     
@40     identifier_node  strg: bit_size_type           lngt: 13      
@41     integer_cst      type: @22      low : 64      
@42     integer_cst      type: @22      low : 0       
@43     integer_cst      type: @22      low : -1      
@44     identifier_node  strg: int      lngt: 3       
@45     tree_list        valu: @19     
@46     tree_list        valu: @55      chan: @62     
@47     pointer_type     size: @18      algn: 32       ptd : @63     
@48     tree_list        valu: @10      chan: @45     
@49     identifier_node  strg: strsep   lngt: 6       
@50     function_type    size: @9       algn: 8        retn: @47     
                         prms: @64     
@51     function_decl    name: @65      type: @66      srcp: string.h:127    
                         chan: @67      lang: C        args: @68     
                         body: undefined               link: extern  
@52     parm_decl        type: @35      srcp: string.h:129    
                         chan: @69      argt: @35      size: @18     
                         algn: 32       used: 0       
@53     identifier_node  strg: sig      lngt: 3       
@54     void_type        qual: c        name: @36      unql: @19     
                         algn: 8       
@55     pointer_type     size: @18      algn: 32       ptd : @19     
@56     parm_decl        type: @70      srcp: string.h:131    
                         argt: @70      size: @18      algn: 32      
                         used: 0       
@57     identifier_node  strg: void     lngt: 4       
@58     var_decl         name: @71      type: @10      scpe: @3      
                         srcp: sample.cc:7             chan: @72     
                         size: @18      algn: 32       used: 1       
@59     statement_list   0   : @73      1   : @74      2   : @75     
                         3   : @76      4   : @77     
@60     integer_cst      type: @10      low : 0       
@61     modify_expr      type: @10      op 0: @78      op 1: @20     
@62     tree_list        valu: @70      chan: @45     
@63     integer_type     name: @79      size: @9       algn: 8       
                         prec: 8        sign: signed   min : @80     
                         max : @81     
@64     tree_list        valu: @35      chan: @82     
@65     identifier_node  strg: strmode  lngt: 7       
@66     function_type    size: @9       algn: 8        retn: @19     
                         prms: @83     
@67     function_decl    name: @84      type: @85      srcp: string.h:126    
                         chan: @86      lang: C        args: @87     
                         body: undefined               link: extern  
@68     parm_decl        type: @10      srcp: string.h:127    
                         chan: @88      argt: @10      size: @18     
                         algn: 32       used: 0       
@69     parm_decl        type: @89      srcp: string.h:129    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@70     integer_type     name: @90      unql: @91      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @92      max : @93     
@71     identifier_node  strg: x        lngt: 1       
@72     var_decl         name: @94      type: @10      scpe: @3      
                         srcp: sample.cc:7             chan: @95     
                         size: @18      algn: 32       used: 1       
@73     modify_expr      type: @10      op 0: @95      op 1: @96     
@74     modify_expr      type: @10      op 0: @95      op 1: @97     
@75     modify_expr      type: @10      op 0: @58      op 1: @98     
@76     modify_expr      type: @10      op 0: @58      op 1: @99     
@77     modify_expr      type: @100     op 0: @101     op 1: @102    
@78     result_decl      type: @10      scpe: @3       srcp: sample.cc:4      
                         note: artificial              size: @18     
                         algn: 32      
@79     type_decl        name: @103     type: @63      srcp: <built-in>:0      
                         note: artificial 
@80     integer_cst      type: @63      high: -1       low : -128    
@81     integer_cst      type: @63      low : 127     
@82     tree_list        valu: @89      chan: @45     
@83     tree_list        valu: @10      chan: @104    
@84     identifier_node  strg: strlcpy  lngt: 7       
@85     function_type    size: @9       algn: 8        retn: @105    
                         prms: @106    
@86     function_decl    name: @107     type: @85      srcp: string.h:125    
                         chan: @108     lang: C        args: @109    
                         body: undefined               link: extern  
@87     parm_decl        type: @47      srcp: string.h:126    
                         chan: @110     argt: @47      size: @18     
                         algn: 32       used: 0       
@88     parm_decl        type: @47      srcp: string.h:127    
                         argt: @47      size: @18      algn: 32      
                         used: 0       
@89     pointer_type     size: @18      algn: 32       ptd : @111    
@90     type_decl        name: @112     type: @70      srcp: string.h:70     
                         chan: @113    
@91     integer_type     name: @114     size: @18      algn: 32      
                         prec: 32       sign: signed   min : @92     
                         max : @93     
@92     integer_cst      type: @91      high: -1       low : -2147483648 
@93     integer_cst      type: @91      low : 2147483647 
@94     identifier_node  strg: y        lngt: 1       
@95     var_decl         name: @115     type: @10      scpe: @3      
                         srcp: sample.cc:8             chan: @101    
                         size: @18      algn: 32       used: 1       
@96     bit_ior_expr     type: @10      op 0: @58      op 1: @72     
@97     bit_xor_expr     type: @10      op 0: @58      op 1: @72     
@98     plus_expr        type: @10      op 0: @58      op 1: @116    
@99     minus_expr       type: @10      op 0: @58      op 1: @116    
@100    real_type        name: @117     size: @18      algn: 32      
                         prec: 32      
@101    var_decl         name: @118     type: @100     scpe: @3      
                         srcp: sample.cc:9             chan: @119    
                         size: @18      algn: 32       used: 1       
@102    plus_expr        type: @100     op 0: @101     op 1: @119    
@103    identifier_node  strg: char     lngt: 4       
@104    tree_list        valu: @47      chan: @45     
@105    integer_type     name: @113     unql: @120     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @121     max : @122    
@106    tree_list        valu: @47      chan: @123    
@107    identifier_node  strg: strlcat  lngt: 7       
@108    function_decl    name: @124     type: @125     srcp: string.h:115    
                         chan: @126     lang: C        args: @127    
                         body: undefined               link: extern  
@109    parm_decl        type: @47      srcp: string.h:125    
                         chan: @128     argt: @47      size: @18     
                         algn: 32       used: 0       
@110    parm_decl        type: @89      srcp: string.h:126    
                         chan: @129     argt: @89      size: @18     
                         algn: 32       used: 0       
@111    integer_type     qual: c        name: @79      unql: @63     
                         size: @9       algn: 8        prec: 8       
                         sign: signed   min : @80      max : @81     
@112    identifier_node  strg: ssize_t  lngt: 7       
@113    type_decl        name: @130     type: @105     srcp: string.h:64     
                         chan: @131    
@114    type_decl        name: @132     type: @91      srcp: <built-in>:0      
                         note: artificial 
@115    identifier_node  strg: val      lngt: 3       
@116    integer_cst      type: @10      low : 1       
@117    type_decl        name: @133     type: @100     srcp: <built-in>:0      
                         note: artificial 
@118    identifier_node  strg: a        lngt: 1       
@119    var_decl         name: @134     type: @100     scpe: @3      
                         srcp: sample.cc:9             chan: @135    
                         size: @18      algn: 32       used: 1       
@120    integer_type     name: @136     size: @18      algn: 32      
                         prec: 32       sign: unsigned min : @121    
                         max : @122    
@121    integer_cst      type: @120     low : 0       
@122    integer_cst      type: @120     low : -1      
@123    tree_list        valu: @89      chan: @137    
@124    identifier_node  strg: strtok_r lngt: 8       
@125    function_type    size: @9       algn: 8        retn: @47     
                         prms: @138    
@126    function_decl    name: @139     type: @140     srcp: string.h:114    
                         chan: @141     lang: C        args: @142    
                         body: undefined               link: extern  
@127    parm_decl        type: @47      srcp: string.h:115    
                         chan: @143     argt: @47      size: @18     
                         algn: 32       used: 0       
@128    parm_decl        type: @89      srcp: string.h:125    
                         chan: @144     argt: @89      size: @18     
                         algn: 32       used: 0       
@129    parm_decl        type: @105     srcp: string.h:126    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@130    identifier_node  strg: size_t   lngt: 6       
@131    type_decl        name: @145     type: @146     srcp: _types.h:34     
                         chan: @147    
@132    identifier_node  strg: long int lngt: 8       
@133    identifier_node  strg: float    lngt: 5       
@134    identifier_node  strg: b        lngt: 1       
@135    var_decl         name: @148     type: @149     scpe: @3      
                         srcp: sample.cc:12            algn: 8       
                         used: 1       
@136    type_decl        name: @150     type: @120     srcp: <built-in>:0      
                         note: artificial 
@137    tree_list        valu: @105     chan: @45     
@138    tree_list        valu: @47      chan: @151    
@139    identifier_node  strg: memccpy  lngt: 7       
@140    function_type    size: @9       algn: 8        retn: @55     
                         prms: @152    
@141    function_decl    name: @153     type: @85      srcp: string.h:110    
                         chan: @154     lang: C        args: @155    
                         body: undefined               link: extern  
@142    parm_decl        type: @55      srcp: string.h:114    
                         chan: @156     argt: @55      size: @18     
                         algn: 32       used: 0       
@143    parm_decl        type: @89      srcp: string.h:115    
                         chan: @157     argt: @89      size: @18     
                         algn: 32       used: 0       
@144    parm_decl        type: @105     srcp: string.h:125    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@145    identifier_node  strg: __darwin_wctype_t       lngt: 17      
@146    integer_type     name: @131     unql: @120     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @121     max : @122    
@147    type_decl        name: @158     type: @159     srcp: _types.h:30     
                         chan: @160    
@148    identifier_node  strg: abs      lngt: 3       
@149    error_mark       
@150    identifier_node  strg: long unsigned int       lngt: 17      
@151    tree_list        valu: @89      chan: @161    
@152    tree_list        valu: @55      chan: @162    
@153    identifier_node  strg: strxfrm  lngt: 7       
@154    function_decl    name: @163     type: @164     srcp: string.h:109    
                         chan: @165     lang: C        args: @166    
                         body: undefined               link: extern  
@155    parm_decl        type: @47      srcp: string.h:110    
                         chan: @167     argt: @47      size: @18     
                         algn: 32       used: 0       
@156    parm_decl        type: @32      srcp: string.h:114    
                         chan: @168     argt: @32      size: @18     
                         algn: 32       used: 0       
@157    parm_decl        type: @35      srcp: string.h:115    
                         argt: @35      size: @18      algn: 32      
                         used: 0       
@158    identifier_node  strg: __darwin_wctrans_t      lngt: 18      
@159    integer_type     name: @147     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@160    type_decl        name: @169     type: @170     srcp: _types.h:29     
                         chan: @171    
@161    tree_list        valu: @35      chan: @45     
@162    tree_list        valu: @32      chan: @172    
@163    identifier_node  strg: strtok   lngt: 6       
@164    function_type    size: @9       algn: 8        retn: @47     
                         prms: @173    
@165    function_decl    name: @174     type: @175     srcp: string.h:103    
                         chan: @176     lang: C        args: @177    
                         body: undefined               link: extern  
@166    parm_decl        type: @47      srcp: string.h:109    
                         chan: @178     argt: @47      size: @18     
                         algn: 32       used: 0       
@167    parm_decl        type: @89      srcp: string.h:110    
                         chan: @179     argt: @89      size: @18     
                         algn: 32       used: 0       
@168    parm_decl        type: @10      srcp: string.h:114    
                         chan: @180     argt: @10      size: @18     
                         algn: 32       used: 0       
@169    identifier_node  strg: __darwin_nl_item        lngt: 16      
@170    integer_type     name: @160     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@171    type_decl        name: @181     type: @182     srcp: _types.h:190    
                         chan: @183    
@172    tree_list        valu: @10      chan: @184    
@173    tree_list        valu: @47      chan: @185    
@174    identifier_node  strg: strnstr  lngt: 7       
@175    function_type    size: @9       algn: 8        retn: @47     
                         prms: @186    
@176    function_decl    name: @187     type: @188     srcp: string.h:97     
                         chan: @189     lang: C        args: @190    
                         body: undefined               link: extern  
@177    parm_decl        type: @89      srcp: string.h:103    
                         chan: @191     argt: @89      size: @18     
                         algn: 32       used: 0       
@178    parm_decl        type: @89      srcp: string.h:109    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@179    parm_decl        type: @105     srcp: string.h:110    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@180    parm_decl        type: @105     srcp: string.h:114    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@181    identifier_node  strg: __darwin_ucontext64_t   lngt: 21      
@182    record_type      name: @171     unql: @192     size: @193    
                         algn: 32       tag : struct   flds: @194    
                         binf: @195    
@183    type_decl        name: @196     type: @197     srcp: _types.h:176    
                         chan: @198    
@184    tree_list        valu: @105     chan: @45     
@185    tree_list        valu: @89      chan: @45     
@186    tree_list        valu: @89      chan: @199    
@187    identifier_node  strg: strerror_r              lngt: 10      
@188    function_type    size: @9       algn: 8        retn: @10     
                         prms: @200    
@189    function_decl    name: @201     type: @29      srcp: string.h:96     
                         chan: @202     lang: C        args: @203    
                         body: undefined               link: extern  
@190    parm_decl        type: @10      srcp: string.h:97     
                         chan: @204     argt: @10      size: @18     
                         algn: 32       used: 0       
@191    parm_decl        type: @89      srcp: string.h:103    
                         chan: @205     argt: @89      size: @18     
                         algn: 32       used: 0       
@192    record_type      name: @206     size: @193     algn: 32      
                         tag : struct   flds: @194     binf: @195    
@193    integer_cst      type: @22      low : 256     
@194    field_decl       name: @207     type: @10      scpe: @192    
                         srcp: _types.h:183            chan: @208    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@195    binfo            type: @192     bases: 0       
@196    identifier_node  strg: __darwin_ucontext_t     lngt: 19      
@197    record_type      name: @183     unql: @209     size: @193    
                         algn: 32       tag : struct   flds: @210    
                         binf: @211    
@198    type_decl        name: @212     type: @213     srcp: _types.h:152    
                         chan: @214    
@199    tree_list        valu: @89      chan: @215    
@200    tree_list        valu: @10      chan: @216    
@201    identifier_node  strg: strerror lngt: 8       
@202    function_decl    name: @217     type: @218     srcp: string.h:93     
                         chan: @219     lang: C        args: @220    
                         body: undefined               link: extern  
@203    parm_decl        type: @10      srcp: string.h:96     
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@204    parm_decl        type: @47      srcp: string.h:97     
                         chan: @221     argt: @47      size: @18     
                         algn: 32       used: 0       
@205    parm_decl        type: @105     srcp: string.h:103    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@206    type_decl        name: @222     type: @192     srcp: _types.h:182    
                         note: artificial 
@207    identifier_node  strg: uc_onstack              lngt: 10      
@208    field_decl       name: @223     type: @224     scpe: @192    
                         srcp: _types.h:184            chan: @225    
                         accs: pub      size: @18      algn: 32      
                         bpos: @18     
@209    record_type      name: @226     size: @193     algn: 32      
                         tag : struct   flds: @210     binf: @211    
@210    field_decl       name: @207     type: @10      scpe: @209    
                         srcp: _types.h:164            chan: @227    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@211    binfo            type: @209     bases: 0       
@212    identifier_node  strg: __darwin_stack_t        lngt: 16      
@213    record_type      name: @198     unql: @228     size: @229    
                         algn: 32       tag : struct   flds: @230    
                         binf: @231    
@214    type_decl        name: @232     type: @233     srcp: _types.h:138    
                         chan: @234    
@215    tree_list        valu: @105     chan: @45     
@216    tree_list        valu: @47      chan: @235    
@217    identifier_node  strg: strcoll  lngt: 7       
@218    function_type    size: @9       algn: 8        retn: @10     
                         prms: @236    
@219    function_decl    name: @237     type: @238     srcp: string.h:88     
                         chan: @239     lang: C        args: @240    
                         body: undefined               link: extern  
@220    parm_decl        type: @89      srcp: string.h:93     
                         chan: @241     argt: @89      size: @18     
                         algn: 32       used: 0       
@221    parm_decl        type: @105     srcp: string.h:97     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@222    identifier_node  strg: ucontext64              lngt: 10      
@223    identifier_node  strg: uc_sigmask              lngt: 10      
@224    integer_type     name: @242     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@225    field_decl       name: @246     type: @213     scpe: @192    
                         srcp: _types.h:185            chan: @247    
                         accs: pub      size: @229     algn: 32      
                         bpos: @41     
@226    type_decl        name: @248     type: @209     srcp: _types.h:163    
                         note: artificial 
@227    field_decl       name: @223     type: @224     scpe: @209    
                         srcp: _types.h:165            chan: @249    
                         accs: pub      size: @18      algn: 32      
                         bpos: @18     
@228    record_type      name: @250     size: @229     algn: 32      
                         tag : struct   flds: @230     binf: @231    
@229    integer_cst      type: @22      low : 96      
@230    field_decl       name: @251     type: @55      scpe: @228    
                         srcp: _types.h:147            chan: @252    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@231    binfo            type: @228     bases: 0       
@232    identifier_node  strg: __darwin_uuid_t         lngt: 15      
@233    array_type       name: @214     unql: @253     size: @254    
                         algn: 8        elts: @255     domn: @256    
@234    type_decl        name: @257     type: @258     srcp: _types.h:137    
                         chan: @259    
@235    tree_list        valu: @105     chan: @45     
@236    tree_list        valu: @89      chan: @260    
@237    identifier_node  strg: strcasestr              lngt: 10      
@238    function_type    size: @9       algn: 8        retn: @47     
                         prms: @261    
@239    function_decl    name: @262     type: @263     srcp: string.h:81     
                         chan: @90      lang: C        args: @264    
                         body: undefined               link: extern  
@240    parm_decl        type: @89      srcp: string.h:88     
                         chan: @265     argt: @89      size: @18     
                         algn: 32       used: 0       
@241    parm_decl        type: @89      srcp: string.h:93     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@242    type_decl        name: @266     type: @224     srcp: _types.h:134    
                         chan: @267    
@243    integer_type     name: @268     size: @18      algn: 32      
                         prec: 32       sign: unsigned min : @244    
                         max : @245    
@244    integer_cst      type: @243     low : 0       
@245    integer_cst      type: @243     low : -1      
@246    identifier_node  strg: uc_stack lngt: 8       
@247    field_decl       name: @269     type: @270     scpe: @192    
                         srcp: _types.h:186            chan: @271    
                         accs: pub      size: @18      algn: 32      
                         bpos: @272    
@248    identifier_node  strg: ucontext lngt: 8       
@249    field_decl       name: @246     type: @213     scpe: @209    
                         srcp: _types.h:166            chan: @273    
                         accs: pub      size: @229     algn: 32      
                         bpos: @41     
@250    type_decl        name: @274     type: @228     srcp: _types.h:146    
                         note: artificial 
@251    identifier_node  strg: ss_sp    lngt: 5       
@252    field_decl       name: @275     type: @276     scpe: @228    
                         srcp: _types.h:148            chan: @277    
                         accs: pub      size: @18      algn: 32      
                         bpos: @18     
@253    array_type       size: @254     algn: 8        elts: @255    
                         domn: @256    
@254    integer_cst      type: @22      low : 128     
@255    integer_type     name: @278     size: @9       algn: 8       
                         prec: 8        sign: unsigned min : @279    
                         max : @280    
@256    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @282    
@257    identifier_node  strg: __darwin_useconds_t     lngt: 19      
@258    integer_type     name: @234     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@259    type_decl        name: @283     type: @284     srcp: _types.h:136    
                         chan: @285    
@260    tree_list        valu: @89      chan: @45     
@261    tree_list        valu: @89      chan: @286    
@262    identifier_node  strg: memchr   lngt: 6       
@263    function_type    size: @9       algn: 8        retn: @55     
                         prms: @287    
@264    parm_decl        type: @32      srcp: string.h:81     
                         chan: @288     argt: @32      size: @18     
                         algn: 32       used: 0       
@265    parm_decl        type: @89      srcp: string.h:88     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@266    identifier_node  strg: __darwin_sigset_t       lngt: 17      
@267    type_decl        name: @289     type: @290     srcp: _types.h:133    
                         chan: @291    
@268    type_decl        name: @292     type: @243     srcp: <built-in>:0      
                         note: artificial 
@269    identifier_node  strg: uc_link  lngt: 7       
@270    pointer_type     size: @18      algn: 32       ptd : @192    
@271    field_decl       name: @293     type: @276     scpe: @192    
                         srcp: _types.h:187            chan: @294    
                         accs: pub      size: @18      algn: 32      
                         bpos: @295    
@272    integer_cst      type: @22      low : 160     
@273    field_decl       name: @269     type: @296     scpe: @209    
                         srcp: _types.h:168            chan: @297    
                         accs: pub      size: @18      algn: 32      
                         bpos: @272    
@274    identifier_node  strg: sigaltstack             lngt: 11      
@275    identifier_node  strg: ss_size  lngt: 7       
@276    integer_type     name: @298     unql: @120     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @121     max : @122    
@277    field_decl       name: @299     type: @10      scpe: @228    
                         srcp: _types.h:149            chan: @300    
                         accs: pub      size: @18      algn: 32      
                         bpos: @41     
@278    type_decl        name: @301     type: @255     srcp: <built-in>:0      
                         note: artificial 
@279    integer_cst      type: @255     low : 0       
@280    integer_cst      type: @255     low : 255     
@281    integer_cst      type: @302     low : 0       
@282    integer_cst      type: @302     low : 15      
@283    identifier_node  strg: __darwin_uid_t          lngt: 14      
@284    integer_type     name: @259     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@285    type_decl        name: @303     type: @304     srcp: _types.h:135    
                         chan: @242    
@286    tree_list        valu: @89      chan: @45     
@287    tree_list        valu: @32      chan: @305    
@288    parm_decl        type: @10      srcp: string.h:81     
                         chan: @306     argt: @10      size: @18     
                         algn: 32       used: 0       
@289    identifier_node  strg: __darwin_pthread_t      lngt: 18      
@290    pointer_type     name: @267     unql: @307     size: @18     
                         algn: 32       ptd : @308    
@291    type_decl        name: @309     type: @310     srcp: _types.h:131    
                         chan: @311    
@292    identifier_node  strg: unsigned int            lngt: 12      
@293    identifier_node  strg: uc_mcsize               lngt: 9       
@294    field_decl       name: @312     type: @313     scpe: @192    
                         srcp: _types.h:188            chan: @314    
                         accs: pub      size: @18      algn: 32      
                         bpos: @315    
@295    integer_cst      type: @22      low : 192     
@296    pointer_type     size: @18      algn: 32       ptd : @209    
@297    field_decl       name: @293     type: @276     scpe: @209    
                         srcp: _types.h:172            chan: @316    
                         accs: pub      size: @18      algn: 32      
                         bpos: @295    
@298    type_decl        name: @317     type: @276     srcp: _types.h:84     
                         chan: @318    
@299    identifier_node  strg: ss_flags lngt: 8       
@300    type_decl        name: @274     type: @228     scpe: @228    
                         srcp: _types.h:146            note: artificial 
@301    identifier_node  strg: unsigned char           lngt: 13      
@302    integer_type     name: @136     size: @18      algn: 32      
                         prec: 32       sign: unsigned min : @121    
                         max : @319    
@303    identifier_node  strg: __darwin_suseconds_t    lngt: 20      
@304    integer_type     name: @285     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@305    tree_list        valu: @10      chan: @320    
@306    parm_decl        type: @105     srcp: string.h:81     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@307    pointer_type     size: @18      algn: 32       ptd : @308    
@308    record_type      name: @321     size: @322     algn: 32      
                         tag : struct   flds: @323     binf: @324    
@309    identifier_node  strg: __darwin_pthread_rwlockattr_t 
                         lngt: 29      
@310    record_type      name: @291     unql: @325     size: @254    
                         algn: 32       tag : struct   flds: @326    
                         binf: @327    
@311    type_decl        name: @328     type: @329     srcp: _types.h:129    
                         chan: @330    
@312    identifier_node  strg: uc_mcontext64           lngt: 13      
@313    pointer_type     name: @331     unql: @332     size: @18     
                         algn: 32       ptd : @333    
@314    type_decl        name: @222     type: @192     scpe: @192    
                         srcp: _types.h:182            note: artificial 
@315    integer_cst      type: @22      low : 224     
@316    field_decl       name: @334     type: @335     scpe: @209    
                         srcp: _types.h:173            chan: @336    
                         accs: pub      size: @18      algn: 32      
                         bpos: @315    
@317    identifier_node  strg: __darwin_size_t         lngt: 15      
@318    type_decl        name: @337     type: @338     srcp: _types.h:78     
                         chan: @339    
@319    integer_cst      type: @302     high: -1       low : -1      
@320    tree_list        valu: @105     chan: @45     
@321    type_decl        name: @340     type: @308     srcp: _types.h:74     
                         note: artificial 
@322    integer_cst      type: @22      low : 4832    
@323    field_decl       name: @341     type: @91      scpe: @308    
                         srcp: _types.h:74             chan: @342    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@324    binfo            type: @308     bases: 0       
@325    record_type      name: @343     size: @254     algn: 32      
                         tag : struct   flds: @326     binf: @327    
@326    field_decl       name: @341     type: @91      scpe: @325    
                         srcp: _types.h:73             chan: @344    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@327    binfo            type: @325     bases: 0       
@328    identifier_node  strg: __darwin_pthread_rwlock_t 
                         lngt: 25      
@329    record_type      name: @311     unql: @345     size: @346    
                         algn: 32       tag : struct   flds: @347    
                         binf: @348    
@330    type_decl        name: @349     type: @350     srcp: _types.h:127    
                         chan: @351    
@331    type_decl        name: @352     type: @313     srcp: _types.h:108    
                         chan: @353    
@332    pointer_type     size: @18      algn: 32       ptd : @333    
@333    record_type      name: @354     algn: 8        tag : struct  
@334    identifier_node  strg: uc_mcontext             lngt: 11      
@335    pointer_type     name: @353     unql: @355     size: @18     
                         algn: 32       ptd : @356    
@336    type_decl        name: @248     type: @209     scpe: @209    
                         srcp: _types.h:163            note: artificial 
@337    identifier_node  strg: __darwin_ptrdiff_t      lngt: 18      
@338    integer_type     name: @318     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@339    type_decl        name: @357     type: @358     srcp: _types.h:75     
                         chan: @359    
@340    identifier_node  strg: _opaque_pthread_t       lngt: 17      
@341    identifier_node  strg: __sig    lngt: 5       
@342    field_decl       name: @360     type: @361     scpe: @308    
                         srcp: _types.h:74             chan: @362    
                         accs: pub      size: @18      algn: 32      
                         bpos: @18     
@343    type_decl        name: @363     type: @325     srcp: _types.h:73     
                         note: artificial 
@344    field_decl       name: @364     type: @365     scpe: @325    
                         srcp: _types.h:73             chan: @366    
                         accs: pub      size: @229     algn: 8       
                         bpos: @18     
@345    record_type      name: @367     size: @346     algn: 32      
                         tag : struct   flds: @347     binf: @348    
@346    integer_cst      type: @22      low : 1024    
@347    field_decl       name: @341     type: @91      scpe: @345    
                         srcp: _types.h:72             chan: @368    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@348    binfo            type: @345     bases: 0       
@349    identifier_node  strg: __darwin_pthread_once_t lngt: 23      
@350    record_type      name: @330     unql: @369     size: @41     
                         algn: 32       tag : struct   flds: @370    
                         binf: @371    
@351    type_decl        name: @372     type: @373     srcp: _types.h:125    
                         chan: @374    
@352    identifier_node  strg: __darwin_mcontext64_t   lngt: 21      
@353    type_decl        name: @375     type: @335     srcp: _types.h:107    
                         chan: @376    
@354    type_decl        name: @377     type: @333     srcp: _types.h:32     
                         note: artificial 
@355    pointer_type     size: @18      algn: 32       ptd : @356    
@356    record_type      name: @378     algn: 8        tag : struct  
@357    identifier_node  strg: __darwin_mbstate_t      lngt: 18      
@358    union_type       name: @339     unql: @379     size: @346    
                         algn: 32       tag : union    flds: @380    
                         binf: @381    
@359    type_decl        name: @382     type: @379     srcp: _types.h:73     
                         chan: @383    
@360    identifier_node  strg: __cleanup_stack         lngt: 15      
@361    pointer_type     size: @18      algn: 32       ptd : @384    
@362    field_decl       name: @364     type: @385     scpe: @308    
                         srcp: _types.h:74             chan: @386    
                         accs: pub      size: @387     algn: 8       
                         bpos: @41     
@363    identifier_node  strg: _opaque_pthread_rwlockattr_t 
                         lngt: 28      
@364    identifier_node  strg: __opaque lngt: 8       
@365    array_type       size: @229     algn: 8        elts: @63     
                         domn: @388    
@366    type_decl        name: @363     type: @325     scpe: @325    
                         srcp: _types.h:73             note: artificial 
@367    type_decl        name: @389     type: @345     srcp: _types.h:72     
                         note: artificial 
@368    field_decl       name: @364     type: @390     scpe: @345    
                         srcp: _types.h:72             chan: @391    
                         accs: pub      size: @392     algn: 8       
                         bpos: @18     
@369    record_type      name: @393     size: @41      algn: 32      
                         tag : struct   flds: @370     binf: @371    
@370    field_decl       name: @341     type: @91      scpe: @369    
                         srcp: _types.h:71             chan: @394    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@371    binfo            type: @369     bases: 0       
@372    identifier_node  strg: __darwin_pthread_mutexattr_t 
                         lngt: 28      
@373    record_type      name: @351     unql: @395     size: @229    
                         algn: 32       tag : struct   flds: @396    
                         binf: @397    
@374    type_decl        name: @398     type: @399     srcp: _types.h:123    
                         chan: @400    
@375    identifier_node  strg: __darwin_mcontext_t     lngt: 19      
@376    type_decl        name: @401     type: @402     srcp: _types.h:105    
                         chan: @403    
@377    identifier_node  strg: mcontext64              lngt: 10      
@378    type_decl        name: @404     type: @356     srcp: _types.h:31     
                         note: artificial 
@379    union_type       name: @359     size: @346     algn: 32      
                         tag : union    flds: @380     binf: @381    
@380    field_decl       name: @405     type: @406     scpe: @379    
                         srcp: _types.h:71             chan: @407    
                         accs: pub      size: @346     algn: 8       
                         bpos: @42     
@381    binfo            type: @379     bases: 0       
@382    identifier_node  strg: __mbstate_t             lngt: 11      
@383    type_decl        name: @408     type: @409     srcp: _types.h:64     
                         chan: @410    
@384    record_type      name: @411     size: @229     algn: 32      
                         tag : struct   flds: @412     binf: @413    
@385    array_type       size: @387     algn: 8        elts: @63     
                         domn: @414    
@386    type_decl        name: @340     type: @308     scpe: @308    
                         srcp: _types.h:74             note: artificial 
@387    integer_cst      type: @22      low : 4768    
@388    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @415    
@389    identifier_node  strg: _opaque_pthread_rwlock_t 
                         lngt: 24      
@390    array_type       size: @392     algn: 8        elts: @63     
                         domn: @416    
@391    type_decl        name: @389     type: @345     scpe: @345    
                         srcp: _types.h:72             note: artificial 
@392    integer_cst      type: @22      low : 992     
@393    type_decl        name: @417     type: @369     srcp: _types.h:71     
                         note: artificial 
@394    field_decl       name: @364     type: @418     scpe: @369    
                         srcp: _types.h:71             chan: @419    
                         accs: pub      size: @18      algn: 8       
                         bpos: @18     
@395    record_type      name: @420     size: @229     algn: 32      
                         tag : struct   flds: @396     binf: @397    
@396    field_decl       name: @341     type: @91      scpe: @395    
                         srcp: _types.h:70             chan: @421    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@397    binfo            type: @395     bases: 0       
@398    identifier_node  strg: __darwin_pthread_mutex_t 
                         lngt: 24      
@399    record_type      name: @374     unql: @422     size: @423    
                         algn: 32       tag : struct   flds: @424    
                         binf: @425    
@400    type_decl        name: @426     type: @427     srcp: _types.h:121    
                         chan: @428    
@401    identifier_node  strg: __darwin_mach_port_t    lngt: 20      
@402    integer_type     name: @376     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@403    type_decl        name: @429     type: @430     srcp: _types.h:104    
                         chan: @431    
@404    identifier_node  strg: mcontext lngt: 8       
@405    identifier_node  strg: __mbstate8              lngt: 10      
@406    array_type       size: @346     algn: 8        elts: @63     
                         domn: @432    
@407    field_decl       name: @433     type: @434     scpe: @379    
                         srcp: _types.h:72             chan: @435    
                         accs: pub      size: @41      algn: 32      
                         bpos: @42     
@408    identifier_node  strg: __darwin_ct_rune_t      lngt: 18      
@409    integer_type     name: @383     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@410    type_decl        name: @436     type: @437     srcp: _types.h:44     
                         chan: @438    
@411    type_decl        name: @439     type: @384     srcp: _types.h:61     
                         note: artificial 
@412    field_decl       name: @440     type: @441     scpe: @384    
                         srcp: _types.h:62             chan: @442    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@413    binfo            type: @384     bases: 0       
@414    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @443    
@415    integer_cst      type: @302     low : 11      
@416    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @444    
@417    identifier_node  strg: _opaque_pthread_once_t  lngt: 22      
@418    array_type       size: @18      algn: 8        elts: @63     
                         domn: @445    
@419    type_decl        name: @417     type: @369     scpe: @369    
                         srcp: _types.h:71             note: artificial 
@420    type_decl        name: @446     type: @395     srcp: _types.h:70     
                         note: artificial 
@421    field_decl       name: @364     type: @447     scpe: @395    
                         srcp: _types.h:70             chan: @448    
                         accs: pub      size: @41      algn: 8       
                         bpos: @18     
@422    record_type      name: @449     size: @423     algn: 32      
                         tag : struct   flds: @424     binf: @425    
@423    integer_cst      type: @22      low : 352     
@424    field_decl       name: @341     type: @91      scpe: @422    
                         srcp: _types.h:69             chan: @450    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@425    binfo            type: @422     bases: 0       
@426    identifier_node  strg: __darwin_pthread_key_t  lngt: 22      
@427    integer_type     name: @400     unql: @120     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @121     max : @122    
@428    type_decl        name: @451     type: @452     srcp: _types.h:120    
                         chan: @453    
@429    identifier_node  strg: __darwin_mach_port_name_t 
                         lngt: 25      
@430    integer_type     name: @403     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@431    type_decl        name: @454     type: @455     srcp: _types.h:103    
                         chan: @456    
@432    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @457    
@433    identifier_node  strg: _mbstateL               lngt: 9       
@434    integer_type     name: @458     size: @41      algn: 64      
                         prec: 64       sign: signed   min : @459    
                         max : @460    
@435    type_decl        name: @461     type: @379     scpe: @379    
                         srcp: _types.h:70             note: artificial 
@436    identifier_node  strg: __darwin_natural_t      lngt: 18      
@437    integer_type     name: @410     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@438    type_decl        name: @462     type: @463     srcp: _types.h:43     
                         chan: @464    
@439    identifier_node  strg: __darwin_pthread_handler_rec 
                         lngt: 28      
@440    identifier_node  strg: __routine               lngt: 9       
@441    pointer_type     size: @18      algn: 32       ptd : @465    
@442    field_decl       name: @466     type: @55      scpe: @384    
                         srcp: _types.h:63             chan: @467    
                         accs: pub      size: @18      algn: 32      
                         bpos: @18     
@443    integer_cst      type: @302     low : 595     
@444    integer_cst      type: @302     low : 123     
@445    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @468    
@446    identifier_node  strg: _opaque_pthread_mutexattr_t 
                         lngt: 27      
@447    array_type       size: @41      algn: 8        elts: @63     
                         domn: @469    
@448    type_decl        name: @446     type: @395     scpe: @395    
                         srcp: _types.h:70             note: artificial 
@449    type_decl        name: @470     type: @422     srcp: _types.h:69     
                         note: artificial 
@450    field_decl       name: @364     type: @471     scpe: @422    
                         srcp: _types.h:69             chan: @472    
                         accs: pub      size: @473     algn: 8       
                         bpos: @18     
@451    identifier_node  strg: __darwin_pthread_condattr_t 
                         lngt: 27      
@452    record_type      name: @428     unql: @474     size: @41     
                         algn: 32       tag : struct   flds: @475    
                         binf: @476    
@453    type_decl        name: @477     type: @478     srcp: _types.h:118    
                         chan: @479    
@454    identifier_node  strg: __darwin_ino_t          lngt: 14      
@455    integer_type     name: @431     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@456    type_decl        name: @480     type: @481     srcp: _types.h:102    
                         chan: @482    
@457    integer_cst      type: @302     low : 127     
@458    type_decl        name: @483     type: @434     srcp: <built-in>:0      
                         note: artificial 
@459    integer_cst      type: @434     high: -1       low : 0       
@460    integer_cst      type: @434     low : -1      
@461    identifier_node  strg: $_5      lngt: 3       
@462    identifier_node  strg: __darwin_intptr_t       lngt: 17      
@463    integer_type     name: @438     unql: @91      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @92      max : @93     
@464    type_decl        name: @484     type: @485     srcp: _types.h:41     
                         chan: @486    
@465    function_type    size: @9       algn: 8        retn: @19     
                         prms: @487    
@466    identifier_node  strg: __arg    lngt: 5       
@467    field_decl       name: @488     type: @361     scpe: @384    
                         srcp: _types.h:64             chan: @489    
                         accs: pub      size: @18      algn: 32      
                         bpos: @41     
@468    integer_cst      type: @302     low : 3       
@469    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @490    
@470    identifier_node  strg: _opaque_pthread_mutex_t lngt: 23      
@471    array_type       size: @473     algn: 8        elts: @63     
                         domn: @491    
@472    type_decl        name: @470     type: @422     scpe: @422    
                         srcp: _types.h:69             note: artificial 
@473    integer_cst      type: @22      low : 320     
@474    record_type      name: @492     size: @41      algn: 32      
                         tag : struct   flds: @475     binf: @476    
@475    field_decl       name: @341     type: @91      scpe: @474    
                         srcp: _types.h:68             chan: @493    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@476    binfo            type: @474     bases: 0       
@477    identifier_node  strg: __darwin_pthread_cond_t lngt: 23      
@478    record_type      name: @453     unql: @494     size: @315    
                         algn: 32       tag : struct   flds: @495    
                         binf: @496    
@479    type_decl        name: @497     type: @498     srcp: _types.h:116    
                         chan: @499    
@480    identifier_node  strg: __darwin_id_t           lngt: 13      
@481    integer_type     name: @456     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@482    type_decl        name: @500     type: @501     srcp: _types.h:101    
                         chan: @502    
@483    identifier_node  strg: long long int           lngt: 13      
@484    identifier_node  strg: __uint64_t              lngt: 10      
@485    integer_type     name: @464     unql: @503     size: @41     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @504     max : @505    
@486    type_decl        name: @506     type: @507     srcp: _types.h:40     
                         chan: @508    
@487    tree_list        valu: @55      chan: @45     
@488    identifier_node  strg: __next   lngt: 6       
@489    type_decl        name: @439     type: @384     scpe: @384    
                         srcp: _types.h:61             note: artificial 
@490    integer_cst      type: @302     low : 7       
@491    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @509    
@492    type_decl        name: @510     type: @474     srcp: _types.h:68     
                         note: artificial 
@493    field_decl       name: @364     type: @418     scpe: @474    
                         srcp: _types.h:68             chan: @511    
                         accs: pub      size: @18      algn: 8       
                         bpos: @18     
@494    record_type      name: @512     size: @315     algn: 32      
                         tag : struct   flds: @495     binf: @496    
@495    field_decl       name: @341     type: @91      scpe: @494    
                         srcp: _types.h:67             chan: @513    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@496    binfo            type: @494     bases: 0       
@497    identifier_node  strg: __darwin_pthread_attr_t lngt: 23      
@498    record_type      name: @479     unql: @514     size: @473    
                         algn: 32       tag : struct   flds: @515    
                         binf: @516    
@499    type_decl        name: @517     type: @518     srcp: _types.h:114    
                         chan: @519    
@500    identifier_node  strg: __darwin_gid_t          lngt: 14      
@501    integer_type     name: @482     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@502    type_decl        name: @520     type: @521     srcp: _types.h:100    
                         chan: @522    
@503    integer_type     name: @523     size: @41      algn: 64      
                         prec: 64       sign: unsigned min : @504    
                         max : @505    
@504    integer_cst      type: @503     low : 0       
@505    integer_cst      type: @503     low : -1      
@506    identifier_node  strg: __int64_t               lngt: 9       
@507    integer_type     name: @486     unql: @434     size: @41     
                         algn: 64       prec: 64       sign: signed  
                         min : @459     max : @460    
@508    type_decl        name: @524     type: @525     srcp: _types.h:39     
                         chan: @526    
@509    integer_cst      type: @302     low : 39      
@510    identifier_node  strg: _opaque_pthread_condattr_t 
                         lngt: 26      
@511    type_decl        name: @510     type: @474     scpe: @474    
                         srcp: _types.h:68             note: artificial 
@512    type_decl        name: @527     type: @494     srcp: _types.h:67     
                         note: artificial 
@513    field_decl       name: @364     type: @528     scpe: @494    
                         srcp: _types.h:67             chan: @529    
                         accs: pub      size: @295     algn: 8       
                         bpos: @18     
@514    record_type      name: @530     size: @473     algn: 32      
                         tag : struct   flds: @515     binf: @516    
@515    field_decl       name: @341     type: @91      scpe: @514    
                         srcp: _types.h:66             chan: @531    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@516    binfo            type: @514     bases: 0       
@517    identifier_node  strg: __darwin_pid_t          lngt: 14      
@518    integer_type     name: @499     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@519    type_decl        name: @532     type: @533     srcp: _types.h:113    
                         chan: @534    
@520    identifier_node  strg: __darwin_fsfilcnt_t     lngt: 19      
@521    integer_type     name: @502     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@522    type_decl        name: @535     type: @536     srcp: _types.h:99     
                         chan: @537    
@523    type_decl        name: @538     type: @503     srcp: <built-in>:0      
                         note: artificial 
@524    identifier_node  strg: __uint32_t              lngt: 10      
@525    integer_type     name: @508     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@526    type_decl        name: @539     type: @540     srcp: _types.h:38     
                         chan: @541    
@527    identifier_node  strg: _opaque_pthread_cond_t  lngt: 22      
@528    array_type       size: @295     algn: 8        elts: @63     
                         domn: @542    
@529    type_decl        name: @527     type: @494     scpe: @494    
                         srcp: _types.h:67             note: artificial 
@530    type_decl        name: @543     type: @514     srcp: _types.h:66     
                         note: artificial 
@531    field_decl       name: @364     type: @544     scpe: @514    
                         srcp: _types.h:66             chan: @545    
                         accs: pub      size: @546     algn: 8       
                         bpos: @18     
@532    identifier_node  strg: __darwin_off_t          lngt: 14      
@533    integer_type     name: @519     unql: @434     size: @41     
                         algn: 64       prec: 64       sign: signed  
                         min : @459     max : @460    
@534    type_decl        name: @547     type: @548     srcp: _types.h:112    
                         chan: @331    
@535    identifier_node  strg: __darwin_fsblkcnt_t     lngt: 19      
@536    integer_type     name: @522     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@537    type_decl        name: @549     type: @550     srcp: _types.h:98     
                         chan: @551    
@538    identifier_node  strg: long long unsigned int  lngt: 22      
@539    identifier_node  strg: __int32_t               lngt: 9       
@540    integer_type     name: @526     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@541    type_decl        name: @552     type: @553     srcp: _types.h:37     
                         chan: @554    
@542    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @555    
@543    identifier_node  strg: _opaque_pthread_attr_t  lngt: 22      
@544    array_type       size: @546     algn: 8        elts: @63     
                         domn: @556    
@545    type_decl        name: @543     type: @514     scpe: @514    
                         srcp: _types.h:66             note: artificial 
@546    integer_cst      type: @22      low : 288     
@547    identifier_node  strg: __darwin_mode_t         lngt: 15      
@548    integer_type     name: @534     unql: @557     size: @558    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @559     max : @560    
@549    identifier_node  strg: __darwin_dev_t          lngt: 14      
@550    integer_type     name: @537     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@551    type_decl        name: @561     type: @562     srcp: _types.h:97     
                         chan: @563    
@552    identifier_node  strg: __uint16_t              lngt: 10      
@553    integer_type     name: @541     unql: @557     size: @558    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @559     max : @560    
@554    type_decl        name: @564     type: @565     srcp: _types.h:36     
                         chan: @566    
@555    integer_cst      type: @302     low : 23      
@556    integer_type     size: @18      algn: 32       prec: 32      
                         sign: signed   min : @281     max : @567    
@557    integer_type     name: @568     size: @558     algn: 16      
                         prec: 16       sign: unsigned min : @559    
                         max : @560    
@558    integer_cst      type: @22      low : 16      
@559    integer_cst      type: @557     low : 0       
@560    integer_cst      type: @557     low : 65535   
@561    identifier_node  strg: __darwin_blksize_t      lngt: 18      
@562    integer_type     name: @551     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@563    type_decl        name: @569     type: @570     srcp: _types.h:96     
                         chan: @571    
@564    identifier_node  strg: __int16_t               lngt: 9       
@565    integer_type     name: @554     unql: @572     size: @558    
                         algn: 16       prec: 16       sign: signed  
                         min : @573     max : @574    
@566    type_decl        name: @575     type: @576     srcp: _types.h:35     
                         chan: @577    
@567    integer_cst      type: @302     low : 35      
@568    type_decl        name: @578     type: @557     srcp: <built-in>:0      
                         note: artificial 
@569    identifier_node  strg: __darwin_blkcnt_t       lngt: 17      
@570    integer_type     name: @563     unql: @434     size: @41     
                         algn: 64       prec: 64       sign: signed  
                         min : @459     max : @460    
@571    type_decl        name: @579     type: @580     srcp: _types.h:112    
                         chan: @581    
@572    integer_type     name: @582     size: @558     algn: 16      
                         prec: 16       sign: signed   min : @573    
                         max : @574    
@573    integer_cst      type: @572     high: -1       low : -32768  
@574    integer_cst      type: @572     low : 32767   
@575    identifier_node  strg: __uint8_t               lngt: 9       
@576    integer_type     name: @566     unql: @255     size: @9      
                         algn: 8        prec: 8        sign: unsigned 
                         min : @279     max : @280    
@577    type_decl        name: @583     type: @584     srcp: _types.h:31     
                         chan: @585    
@578    identifier_node  strg: short unsigned int      lngt: 18      
@579    identifier_node  strg: __darwin_time_t         lngt: 15      
@580    integer_type     name: @571     unql: @91      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @92      max : @93     
@581    type_decl        name: @586     type: @587     srcp: _types.h:111    
                         chan: @588    
@582    type_decl        name: @589     type: @572     srcp: <built-in>:0      
                         note: artificial 
@583    identifier_node  strg: __int8_t lngt: 8       
@584    integer_type     name: @577     unql: @590     size: @9      
                         algn: 8        prec: 8        sign: signed  
                         min : @591     max : @592    
@585    function_decl    name: @593     type: @594     srcp: math.h:544    
                         chan: @595     lang: C        args: @596    
                         body: undefined               link: extern  
@586    identifier_node  strg: __darwin_ssize_t        lngt: 16      
@587    integer_type     name: @581     unql: @91      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @92      max : @93     
@588    type_decl        name: @597     type: @598     srcp: _types.h:110    
                         chan: @599    
@589    identifier_node  strg: short int               lngt: 9       
@590    integer_type     name: @600     size: @9       algn: 8       
                         prec: 8        sign: signed   min : @591    
                         max : @592    
@591    integer_cst      type: @590     high: -1       low : -128    
@592    integer_cst      type: @590     low : 127     
@593    identifier_node  strg: roundtol lngt: 8       
@594    function_type    size: @9       algn: 8        retn: @91     
                         prms: @601    
@595    function_decl    name: @602     type: @594     srcp: math.h:542    
                         chan: @603     lang: C        args: @604    
                         body: undefined               link: extern  
@596    parm_decl        type: @605     srcp: math.h:544    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@597    identifier_node  strg: __darwin_socklen_t      lngt: 18      
@598    integer_type     name: @588     unql: @243     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @244     max : @245    
@599    type_decl        name: @606     type: @607     srcp: _types.h:109    
                         chan: @608    
@600    type_decl        name: @609     type: @590     srcp: <built-in>:0      
                         note: artificial 
@601    tree_list        valu: @605     chan: @45     
@602    identifier_node  strg: rinttol  lngt: 7       
@603    var_decl         name: @610     type: @10      srcp: math.h:528    
                         chan: @611     lang: C        size: @18     
                         algn: 32       used: 0       
@604    parm_decl        type: @605     srcp: math.h:542    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@605    real_type        name: @612     size: @41      algn: 64      
                         prec: 64      
@606    identifier_node  strg: __darwin_clock_t        lngt: 16      
@607    integer_type     name: @599     unql: @120     size: @18     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @121     max : @122    
@608    type_decl        name: @613     type: @614     srcp: _types.h:104    
                         chan: @615    
@609    identifier_node  strg: signed char             lngt: 11      
@610    identifier_node  strg: signgam  lngt: 7       
@611    function_decl    name: @616     type: @617     srcp: math.h:495    
                         chan: @618     lang: C        body: undefined 
                         link: extern  
@612    type_decl        name: @619     type: @605     srcp: <built-in>:0      
                         note: artificial 
@613    identifier_node  strg: __darwin_wint_t         lngt: 15      
@614    integer_type     name: @608     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@615    type_decl        name: @620     type: @621     srcp: _types.h:101    
                         chan: @622    
@616    identifier_node  strg: __nan    lngt: 5       
@617    function_type    size: @9       algn: 8        retn: @100    
                         prms: @45     
@618    function_decl    name: @623     type: @624     srcp: math.h:494    
                         chan: @625     lang: C        body: undefined 
                         link: extern  
@619    identifier_node  strg: double   lngt: 6       
@620    identifier_node  strg: __darwin_rune_t         lngt: 15      
@621    integer_type     name: @615     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@622    type_decl        name: @626     type: @627     srcp: _types.h:96     
                         chan: @628    
@623    identifier_node  strg: __infl   lngt: 6       
@624    function_type    size: @9       algn: 8        retn: @629    
                         prms: @45     
@625    function_decl    name: @630     type: @617     srcp: math.h:493    
                         chan: @631     lang: C        body: undefined 
                         link: extern  
@626    identifier_node  strg: __darwin_wchar_t        lngt: 16      
@627    integer_type     name: @622     unql: @10      size: @18     
                         algn: 32       prec: 32       sign: signed  
                         min : @24      max : @25     
@628    type_decl        name: @632     type: @633     srcp: _types.h:90     
                         chan: @298    
@629    real_type        name: @634     size: @254     algn: 128     
                         prec: 80      
@630    identifier_node  strg: __inff   lngt: 6       
@631    function_decl    name: @635     type: @636     srcp: math.h:492    
                         chan: @637     lang: C        body: undefined 
                         link: extern  
@632    identifier_node  strg: __darwin_va_list        lngt: 16      
@633    pointer_type     name: @628     unql: @47      size: @18     
                         algn: 32       ptd : @63     
@634    type_decl        name: @638     type: @629     srcp: <built-in>:0      
                         note: artificial 
@635    identifier_node  strg: __inf    lngt: 5       
@636    function_type    size: @9       algn: 8        retn: @605    
                         prms: @45     
@637    function_decl    name: @639     type: @640     srcp: math.h:475    
                         chan: @641     lang: C        args: @642    
                         body: undefined               link: extern  
@638    identifier_node  strg: long double             lngt: 11      
@639    identifier_node  strg: nanl     lngt: 4       
@640    function_type    size: @9       algn: 8        retn: @629    
                         prms: @643    
@641    function_decl    name: @644     type: @645     srcp: math.h:408    
                         chan: @646     lang: C        args: @647    
                         body: undefined               link: extern  
@642    parm_decl        type: @89      srcp: math.h:475    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@643    tree_list        valu: @89      chan: @45     
@644    identifier_node  strg: nanf     lngt: 4       
@645    function_type    size: @9       algn: 8        retn: @100    
                         prms: @648    
@646    function_decl    name: @649     type: @650     srcp: math.h:407    
                         chan: @651     lang: C        args: @652    
                         body: undefined               link: extern  
@647    parm_decl        type: @89      srcp: math.h:408    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@648    tree_list        valu: @89      chan: @45     
@649    identifier_node  strg: nan      lngt: 3       
@650    function_type    size: @9       algn: 8        retn: @605    
                         prms: @653    
@651    function_decl    name: @654     type: @655     srcp: math.h:194    
                         chan: @656     lang: C        args: @657    
                         link: static   body: @658    
@652    parm_decl        type: @89      srcp: math.h:407    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@653    tree_list        valu: @89      chan: @45     
@654    identifier_node  strg: __inline_signbit        lngt: 16      
@655    function_type    size: @9       algn: 8        retn: @10     
                         prms: @659    
@656    function_decl    name: @660     type: @661     srcp: math.h:193    
                         chan: @662     lang: C        args: @663    
                         link: static   body: @664    
@657    parm_decl        name: @665     type: @629     scpe: @651    
                         srcp: math.h:194              argt: @629    
                         size: @254     algn: 128      used: 1       
@658    bind_expr        type: @19      vars: @666     body: @667    
@659    tree_list        valu: @629     chan: @45     
@660    identifier_node  strg: __inline_signbitd       lngt: 17      
@661    function_type    size: @9       algn: 8        retn: @10     
                         prms: @668    
@662    function_decl    name: @669     type: @670     srcp: math.h:192    
                         chan: @671     lang: C        args: @672    
                         link: static   body: @673    
@663    parm_decl        name: @665     type: @605     scpe: @656    
                         srcp: math.h:193              argt: @605    
                         size: @41      algn: 64       used: 1       
@664    bind_expr        type: @19      vars: @674     body: @675    
@665    identifier_node  strg: __x      lngt: 3       
@666    var_decl         type: @10      scpe: @651     srcp: math.h:194    
                         note: artificial              chan: @676    
                         size: @18      algn: 32       used: 1       
@667    statement_list   0   : @677     1   : @678     2   : @679    
                         3   : @680     4   : @681     5   : @682    
                         6   : @683    
@668    tree_list        valu: @605     chan: @45     
@669    identifier_node  strg: __inline_signbitf       lngt: 17      
@670    function_type    size: @9       algn: 8        retn: @10     
                         prms: @684    
@671    function_decl    name: @685     type: @655     srcp: math.h:197    
                         chan: @686     lang: C        args: @687    
                         link: static   body: @688    
@672    parm_decl        name: @665     type: @100     scpe: @662    
                         srcp: math.h:192              argt: @100    
                         size: @18      algn: 32       used: 1       
@673    bind_expr        type: @19      vars: @689     body: @690    
@674    var_decl         type: @10      scpe: @656     srcp: math.h:193    
                         note: artificial              chan: @691    
                         size: @18      algn: 32       used: 1       
@675    statement_list   0   : @692     1   : @693     2   : @694    
                         3   : @695     4   : @696     5   : @697    
@676    var_decl         type: @572     scpe: @651     srcp: math.h:194    
                         note: artificial              chan: @698    
                         size: @558     algn: 16       used: 1       
@677    modify_expr      type: @19      op 0: @699     op 1: @700    
@678    modify_expr      type: @629     op 0: @701     op 1: @657    
@679    modify_expr      type: @572     op 0: @676     op 1: @702    
@680    modify_expr      type: @572     op 0: @698     op 1: @703    
@681    modify_expr      type: @243     op 0: @704     op 1: @705    
@682    modify_expr      type: @10      op 0: @666     op 1: @706    
@683    return_expr      type: @19      expr: @707    
@684    tree_list        valu: @100     chan: @45     
@685    identifier_node  strg: __inline_isnormal       lngt: 17      
@686    function_decl    name: @708     type: @661     srcp: math.h:196    
                         chan: @709     lang: C        args: @710    
                         link: static   body: @711    
@687    parm_decl        name: @665     type: @629     scpe: @671    
                         srcp: math.h:197              argt: @629    
                         size: @254     algn: 128      used: 1       
@688    bind_expr        type: @19      vars: @712     body: @713    
@689    var_decl         type: @10      scpe: @662     srcp: math.h:192    
                         note: artificial              chan: @714    
                         size: @18      algn: 32       used: 1       
@690    statement_list   0   : @715     1   : @716     2   : @717    
                         3   : @718     4   : @719     5   : @720    
@691    var_decl         type: @503     scpe: @656     srcp: math.h:193    
                         note: artificial              chan: @721    
                         size: @41      algn: 64       used: 1       
@692    modify_expr      type: @19      op 0: @722     op 1: @723    
@693    modify_expr      type: @605     op 0: @724     op 1: @663    
@694    modify_expr      type: @503     op 0: @691     op 1: @725    
@695    modify_expr      type: @503     op 0: @721     op 1: @726    
@696    modify_expr      type: @10      op 0: @674     op 1: @727    
@697    return_expr      type: @19      expr: @728    
@698    var_decl         type: @572     scpe: @651     srcp: math.h:194    
                         note: artificial              chan: @704    
                         size: @558     algn: 16       used: 1       
@699    var_decl         name: @729     type: @730     scpe: @651    
                         srcp: math.h:194              size: @254    
                         algn: 128      used: 1       
@700    constructor      lngt: 0       
@701    component_ref    type: @629     op 0: @699     op 1: @731    
@702    component_ref    type: @572     op 0: @732     op 1: @733    
@703    rshift_expr      type: @572     op 0: @676     op 1: @734    
@704    var_decl         type: @243     scpe: @651     srcp: math.h:194    
                         note: artificial              chan: @735    
                         size: @18      algn: 32       used: 1       
@705    nop_expr         type: @243     op 0: @698    
@706    nop_expr         type: @10      op 0: @704    
@707    modify_expr      type: @10      op 0: @736     op 1: @666    
@708    identifier_node  strg: __inline_isnormald      lngt: 18      
@709    function_decl    name: @737     type: @670     srcp: math.h:195    
                         chan: @738     lang: C        args: @739    
                         link: static   body: @740    
@710    parm_decl        name: @665     type: @605     scpe: @686    
                         srcp: math.h:196              argt: @605    
                         size: @41      algn: 64       used: 1       
@711    bind_expr        type: @19      vars: @741     body: @742    
@712    var_decl         type: @10      scpe: @671     srcp: math.h:197    
                         note: artificial              chan: @743    
                         size: @18      algn: 32       used: 1       
@713    statement_list   0   : @744     1   : @745     2   : @746    
                         3   : @747     4   : @748     5   : @749    
                         6   : @750     7   : @751     8   : @752    
                         9   : @753     10  : @754     11  : @755    
                         12  : @756     13  : @757     14  : @758    
@714    var_decl         type: @243     scpe: @662     srcp: math.h:192    
                         note: artificial              chan: @759    
                         size: @18      algn: 32       used: 1       
@715    modify_expr      type: @19      op 0: @760     op 1: @761    
@716    modify_expr      type: @100     op 0: @762     op 1: @672    
@717    modify_expr      type: @243     op 0: @714     op 1: @763    
@718    modify_expr      type: @243     op 0: @759     op 1: @764    
@719    modify_expr      type: @10      op 0: @689     op 1: @765    
@720    return_expr      type: @19      expr: @766    
@721    var_decl         type: @503     scpe: @656     srcp: math.h:193    
                         note: artificial              chan: @767    
                         size: @41      algn: 64       used: 1       
@722    var_decl         name: @729     type: @768     scpe: @656    
                         srcp: math.h:193              size: @41     
                         algn: 32       used: 1       
@723    constructor      lngt: 0       
@724    component_ref    type: @605     op 0: @722     op 1: @769    
@725    component_ref    type: @503     op 0: @722     op 1: @770    
@726    rshift_expr      type: @503     op 0: @691     op 1: @771    
@727    convert_expr     type: @10      op 0: @721    
@728    modify_expr      type: @10      op 0: @772     op 1: @674    
@729    identifier_node  strg: __u      lngt: 3       
@730    union_type       name: @735     size: @254     algn: 128     
                         tag : union    flds: @731     fncs: @773    
                         binf: @774    
@731    field_decl       name: @775     type: @629     scpe: @730    
                         srcp: math.h:194              chan: @776    
                         accs: pub      size: @254     algn: 128     
                         bpos: @42     
@732    component_ref    type: @777     op 0: @699     op 1: @776    
@733    field_decl       name: @778     type: @572     scpe: @777    
                         srcp: math.h:194              chan: @779    
                         accs: pub      size: @558     algn: 16      
                         bpos: @41     
@734    integer_cst      type: @10      low : 15      
@735    type_decl        name: @780     type: @730     scpe: @651    
                         srcp: math.h:194              note: artificial 
                         chan: @699    
@736    result_decl      type: @10      scpe: @651     srcp: math.h:194    
                         note: artificial              size: @18     
                         algn: 32      
@737    identifier_node  strg: __inline_isnormalf      lngt: 18      
@738    function_decl    name: @781     type: @655     srcp: math.h:191    
                         chan: @782     lang: C        args: @783    
                         link: static   body: @784    
@739    parm_decl        name: @665     type: @100     scpe: @709    
                         srcp: math.h:195              argt: @100    
                         size: @18      algn: 32       used: 1       
@740    bind_expr        type: @19      vars: @785     body: @786    
@741    var_decl         type: @10      scpe: @686     srcp: math.h:196    
                         note: artificial              chan: @787    
                         size: @18      algn: 32       used: 1       
@742    statement_list   0   : @788     1   : @789     2   : @790    
                         3   : @791     4   : @792     5   : @793    
                         6   : @794     7   : @795     8   : @796    
                         9   : @797     10  : @798     11  : @799    
                         12  : @800     13  : @801     14  : @802    
@743    var_decl         name: @803     type: @804     scpe: @671    
                         srcp: math.h:197              note: artificial 
                         chan: @805     size: @9       algn: 8       
                         used: 1       
@744    modify_expr      type: @629     op 0: @806     op 1: @807    
@745    cond_expr        type: @19      op 0: @808     op 1: @809    
                         op 2: @810    
@746    modify_expr      type: @804     op 0: @805     op 1: @811    
@747    modify_expr      type: @804     op 0: @812     op 1: @813    
@748    cond_expr        type: @19      op 0: @812     op 1: @814    
                         op 2: @815    
@749    modify_expr      type: @804     op 0: @816     op 1: @817    
@750    modify_expr      type: @804     op 0: @818     op 1: @819    
@751    cond_expr        type: @19      op 0: @818     op 1: @820    
                         op 2: @821    
@752    modify_expr      type: @19      op 0: @743     op 1: @822    
@753    goto_expr        type: @19      labl: @823    
@754    label_expr       type: @19      name: @824    
@755    modify_expr      type: @19      op 0: @743     op 1: @825    
@756    label_expr       type: @19      name: @823    
@757    modify_expr      type: @10      op 0: @712     op 1: @826    
@758    return_expr      type: @19      expr: @827    
@759    var_decl         type: @243     scpe: @662     srcp: math.h:192    
                         note: artificial              chan: @828    
                         size: @18      algn: 32       used: 1       
@760    var_decl         name: @729     type: @829     scpe: @662    
                         srcp: math.h:192              size: @18     
                         algn: 32       used: 1       
@761    constructor      lngt: 0       
@762    component_ref    type: @100     op 0: @760     op 1: @830    
@763    component_ref    type: @243     op 0: @760     op 1: @831    
@764    rshift_expr      type: @243     op 0: @714     op 1: @832    
@765    nop_expr         type: @10      op 0: @759    
@766    modify_expr      type: @10      op 0: @833     op 1: @689    
@767    type_decl        name: @834     type: @768     scpe: @656    
                         srcp: math.h:193              note: artificial 
                         chan: @722    
@768    union_type       name: @767     size: @41      algn: 32      
                         tag : union    flds: @769     fncs: @835    
                         binf: @836    
@769    field_decl       name: @837     type: @605     scpe: @768    
                         srcp: math.h:193              chan: @770    
                         accs: pub      size: @41      algn: 32      
                         bpos: @42     
@770    field_decl       name: @729     type: @503     scpe: @768    
                         srcp: math.h:193              chan: @838    
                         accs: pub      size: @41      algn: 32      
                         bpos: @42     
@771    integer_cst      type: @10      low : 63      
@772    result_decl      type: @10      scpe: @656     srcp: math.h:193    
                         note: artificial              size: @18     
                         algn: 32      
@773    function_decl    name: @780     type: @839     scpe: @730    
                         srcp: math.h:194              note: artificial 
                         chan: @840     note: member   accs: pub     
                         note: constructor             args: @841    
                         link: static  
@774    binfo            type: @730     bases: 0       
@775    identifier_node  strg: __ld     lngt: 4       
@776    field_decl       name: @842     type: @777     scpe: @730    
                         srcp: math.h:194              chan: @843    
                         accs: pub      size: @229     algn: 32      
                         bpos: @42     
@777    record_type      name: @844     size: @229     algn: 32      
                         tag : struct   flds: @845     fncs: @846    
                         binf: @847    
@778    identifier_node  strg: __sexp   lngt: 6       
@779    type_decl        name: @848     type: @777     scpe: @777    
                         srcp: math.h:194              note: artificial 
@780    identifier_node  strg: $_3      lngt: 3       
@781    identifier_node  strg: __inline_isnan          lngt: 14      
@782    function_decl    name: @849     type: @661     srcp: math.h:190    
                         chan: @850     lang: C        args: @851    
                         link: static   body: @852    
@783    parm_decl        name: @665     type: @629     scpe: @738    
                         srcp: math.h:191              argt: @629    
                         size: @254     algn: 128      used: 1       
@784    bind_expr        type: @19      vars: @853     body: @854    
@785    var_decl         type: @10      scpe: @709     srcp: math.h:195    
                         note: artificial              chan: @855    
                         size: @18      algn: 32       used: 1       
@786    statement_list   0   : @856     1   : @857     2   : @858    
                         3   : @859     4   : @860     5   : @861    
                         6   : @862     7   : @863     8   : @864    
                         9   : @865     10  : @866     11  : @867    
                         12  : @868     13  : @869     14  : @870    
@787    var_decl         name: @871     type: @804     scpe: @686    
                         srcp: math.h:196              note: artificial 
                         chan: @872     size: @9       algn: 8       
                         used: 1       
@788    modify_expr      type: @605     op 0: @873     op 1: @874    
@789    cond_expr        type: @19      op 0: @875     op 1: @876    
                         op 2: @877    
@790    modify_expr      type: @804     op 0: @872     op 1: @878    
@791    modify_expr      type: @804     op 0: @879     op 1: @880    
@792    cond_expr        type: @19      op 0: @879     op 1: @881    
                         op 2: @882    
@793    modify_expr      type: @804     op 0: @883     op 1: @884    
@794    modify_expr      type: @804     op 0: @885     op 1: @886    
@795    cond_expr        type: @19      op 0: @885     op 1: @887    
                         op 2: @888    
@796    modify_expr      type: @19      op 0: @787     op 1: @822    
@797    goto_expr        type: @19      labl: @889    
@798    label_expr       type: @19      name: @890    
@799    modify_expr      type: @19      op 0: @787     op 1: @825    
@800    label_expr       type: @19      name: @889    
@801    modify_expr      type: @10      op 0: @741     op 1: @891    
@802    return_expr      type: @19      expr: @892    
@803    identifier_node  strg: iftmp.5  lngt: 7       
@804    boolean_type     name: @893     size: @9       algn: 8       
@805    var_decl         type: @804     scpe: @671     srcp: math.h:197    
                         note: artificial              chan: @812    
                         size: @9       algn: 8        used: 1       
@806    var_decl         name: @894     type: @629     scpe: @671    
                         srcp: math.h:197              size: @254    
                         algn: 128      used: 1       
@807    abs_expr         type: @629     op 0: @687    
@808    ne_expr          type: @804     op 0: @687     op 1: @687    
@809    statement_list   0   : @895     1   : @896    
@810    statement_list   
@811    le_expr          type: @804     op 0: @806     op 1: @897    
@812    var_decl         type: @804     scpe: @671     srcp: math.h:197    
                         note: artificial              chan: @816    
                         size: @9       algn: 8        used: 1       
@813    truth_not_expr   type: @804     op 0: @805    
@814    statement_list   0   : @898    
@815    statement_list   
@816    var_decl         type: @804     scpe: @671     srcp: math.h:197    
                         note: artificial              chan: @818    
                         size: @9       algn: 8        used: 1       
@817    ge_expr          type: @804     op 0: @806     op 1: @899    
@818    var_decl         type: @804     scpe: @671     srcp: math.h:197    
                         note: artificial              chan: @806    
                         size: @9       algn: 8        used: 1       
@819    truth_not_expr   type: @804     op 0: @816    
@820    statement_list   0   : @900    
@821    statement_list   
@822    integer_cst      type: @804     low : 1       
@823    label_decl       type: @19      scpe: @671     srcp: math.h:197    
                         note: artificial 
@824    label_decl       type: @19      scpe: @671     srcp: math.h:197    
                         note: artificial 
@825    integer_cst      type: @804     low : 0       
@826    convert_expr     type: @10      op 0: @743    
@827    modify_expr      type: @10      op 0: @901     op 1: @712    
@828    type_decl        name: @902     type: @829     scpe: @662    
                         srcp: math.h:192              note: artificial 
                         chan: @760    
@829    union_type       name: @828     size: @18      algn: 32      
                         tag : union    flds: @830     fncs: @903    
                         binf: @904    
@830    field_decl       name: @837     type: @100     scpe: @829    
                         srcp: math.h:192              chan: @831    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@831    field_decl       name: @729     type: @243     scpe: @829    
                         srcp: math.h:192              chan: @905    
                         accs: pub      size: @18      algn: 32      
                         bpos: @42     
@832    integer_cst      type: @10      low : 31      
@833    result_decl      type: @10      scpe: @662     srcp: math.h:192    
                         note: artificial              size: @18     
                         algn: 32      
@834    identifier_node  strg: $_2      lngt: 3       
@835    function_decl    name: @834     type: @906     scpe: @768    
                         srcp: math.h:193              note: artificial 
                         chan: @907     note: member   accs: pub     
                         note: constructor             args: @908    
                         link: static  
@836    binfo            type: @768     bases: 0       
@837    identifier_node  strg: __f      lngt: 3       
@838    type_decl        name: @834     type: @768     scpe: @768    
                         srcp: math.h:193              note: artificial 
@839    method_type      unql: @909     size: @9       algn: 8       
                         clas: @730     retn: @19      prms: @910    
@840    function_decl    name: @911     orig: @773     type: @839    
                         scpe: @730     srcp: math.h:194    
                         note: artificial              chan: @912    
                         note: member   accs: pub      note: constructor 
                         args: @913     link: static  
@841    parm_decl        name: @914     type: @915     srcp: math.h:194    
                         note: artificial              chan: @916    
                         argt: @915     size: @18      algn: 32      
                         used: 0       
@842    identifier_node  strg: __p      lngt: 3       
@843    type_decl        name: @780     type: @730     scpe: @730    
                         srcp: math.h:194              note: artificial 
                         chan: @844    
@844    type_decl        name: @848     type: @777     scpe: @730    
                         srcp: math.h:194              note: artificial 
@845    field_decl       name: @917     type: @503     scpe: @777    
                         srcp: math.h:194              chan: @733    
                         accs: pub      size: @41      algn: 32      
                         bpos: @42     
@846    function_decl    name: @848     type: @918     scpe: @777    
                         srcp: math.h:194              note: artificial 
                         chan: @919     note: member   accs: pub     
                         note: constructor             args: @920    
                         link: static  
@847    binfo            type: @777     bases: 0       
@848    identifier_node  strg: $_4      lngt: 3       
@849    identifier_node  strg: __inline_isnand         lngt: 15      
@850    function_decl    name: @921     type: @670     srcp: math.h:189    
                         chan: @922     lang: C        args: @923    
                         link: static   body: @924    
@851    parm_decl        name: @665     type: @605     scpe: @782    
                         srcp: math.h:190              argt: @605    
                         size: @41      algn: 64       used: 1       
@852    bind_expr        type: @19      vars: @925     body: @926    
@853    var_decl         type: @10      scpe: @738     srcp: math.h:191    
                         note: artificial              size: @18     
                         algn: 32       used: 1       
@854    statement_list   0   : @927     1   : @928    
@855    var_decl         name: @929     type: @804     scpe: @709    
                         srcp: math.h:195              note: artificial 
                         chan: @930     size: @9       algn: 8       
                         used: 1       
@856    modify_expr      type: @100     op 0: @931     op 1: @932    
@857    cond_expr        type: @19      op 0: @933     op 1: @934    
                         op 2: @935    
@858    modify_expr      type: @804     op 0: @930     op 1: @936    
@859    modify_expr      type: @804     op 0: @937     op 1: @938    
@860    cond_expr        type: @19      op 0: @937     op 1: @939    
                         op 2: @940    
@861    modify_expr      type: @804     op 0: @941     op 1: @942    
@862    modify_expr      type: @804     op 0: @943     op 1: @944    
@863    cond_expr        type: @19      op 0: @943     op 1: @945    
                         op 2: @946    
@864    modify_expr      type: @19      op 0: @855     op 1: @822    
@865    goto_expr        type: @19      labl: @947    
@866    label_expr       type: @19      name: @948    
@867    modify_expr      type: @19      op 0: @855     op 1: @825    
@868    label_expr       type: @19      name: @947    
@869    modify_expr      type: @10      op 0: @785     op 1: @949    
@870    return_expr      type: @19      expr: @950    
@871    identifier_node  strg: iftmp.4  lngt: 7       
@872    var_decl         type: @804     scpe: @686     srcp: math.h:196    
                         note: artificial              chan: @879    
                         size: @9       algn: 8        used: 1       
@873    var_decl         name: @894     type: @605     scpe: @686    
                         srcp: math.h:196              size: @41     
                         algn: 64       used: 1       
@874    abs_expr         type: @605     op 0: @710    
@875    ne_expr          type: @804     op 0: @710     op 1: @710    
@876    statement_list   0   : @951     1   : @952    
@877    statement_list   
@878    le_expr          type: @804     op 0: @873     op 1: @953    
@879    var_decl         type: @804     scpe: @686     srcp: math.h:196    
                         note: artificial              chan: @883    
                         size: @9       algn: 8        used: 1       
@880    truth_not_expr   type: @804     op 0: @872    
@881    statement_list   0   : @954    
@882    statement_list   
@883    var_decl         type: @804     scpe: @686     srcp: math.h:196    
                         note: artificial              chan: @885    
                         size: @9       algn: 8        used: 1       
@884    ge_expr          type: @804     op 0: @873     op 1: @955    
@885    var_decl         type: @804     scpe: @686     srcp: math.h:196    
                         note: artificial              chan: @873    
                         size: @9       algn: 8        used: 1       
@886    truth_not_expr   type: @804     op 0: @883    
@887    statement_list   0   : @956    
@888    statement_list   
@889    label_decl       type: @19      scpe: @686     srcp: math.h:196    
                         note: artificial 
@890    label_decl       type: @19      scpe: @686     srcp: math.h:196    
                         note: artificial 
@891    convert_expr     type: @10      op 0: @787    
@892    modify_expr      type: @10      op 0: @957     op 1: @741    
@893    type_decl        name: @958     type: @804     srcp: <built-in>:0      
                         note: artificial 
@894    identifier_node  strg: fabsf    lngt: 5       
@895    modify_expr      type: @10      op 0: @712     op 1: @60     
@896    return_expr      type: @19      expr: @959    
@897    real_cst         type: @629     valu: 1.189731495357231765021e+4932 
@898    goto_expr        type: @19      labl: @824    
@899    real_cst         type: @629     valu: 3.362103143112093506263e-4932 
@900    goto_expr        type: @19      labl: @824    
@901    result_decl      type: @10      scpe: @671     srcp: math.h:197    
                         note: artificial              size: @18     
                         algn: 32      
@902    identifier_node  strg: $_1      lngt: 3       
@903    function_decl    name: @902     type: @960     scpe: @829    
                         srcp: math.h:192              note: artificial 
                         chan: @961     note: member   accs: pub     
                         note: constructor             args: @962    
                         link: static  
@904    binfo            type: @829     bases: 0       
@905    type_decl        name: @902     type: @829     scpe: @829    
                         srcp: math.h:192              note: artificial 
@906    method_type      unql: @963     size: @9       algn: 8       
                         clas: @768     retn: @19      prms: @964    
@907    function_decl    name: @911     orig: @835     type: @906    
                         scpe: @768     srcp: math.h:193    
                         note: artificial              chan: @965    
                         note: member   accs: pub      note: constructor 
                         args: @966     link: static  
@908    parm_decl        name: @914     type: @967     srcp: math.h:193    
                         note: artificial              chan: @968    
                         argt: @967     size: @18      algn: 32      
                         used: 0       
@909    method_type      size: @9       algn: 8        clas: @730    
                         retn: @19      prms: @910    
@910    tree_list        valu: @969     chan: @970    
@911    identifier_node  strg: __base_ctor             lngt: 12      
@912    function_decl    name: @971     orig: @773     type: @839    
                         scpe: @730     srcp: math.h:194    
                         note: artificial              chan: @972    
                         note: member   accs: pub      note: constructor 
                         args: @973     link: static  
@913    parm_decl        name: @914     type: @915     scpe: @840    
                         srcp: math.h:194              note: artificial 
                         chan: @974     argt: @915     size: @18     
                         algn: 32       used: 0       
@914    identifier_node  strg: this     lngt: 4       
@915    pointer_type     qual: c        unql: @969     size: @18     
                         algn: 32       ptd : @730    
@916    parm_decl        type: @975     srcp: math.h:194    
                         argt: @975     size: @18      algn: 32      
                         used: 0       
@917    identifier_node  strg: __m      lngt: 3       
@918    method_type      unql: @976     size: @9       algn: 8       
                         clas: @777     retn: @19      prms: @977    
@919    function_decl    name: @911     orig: @846     type: @918    
                         scpe: @777     srcp: math.h:194    
                         note: artificial              chan: @978    
                         note: member   accs: pub      note: constructor 
                         args: @979     link: static  
@920    parm_decl        name: @914     type: @980     srcp: math.h:194    
                         note: artificial              chan: @981    
                         argt: @980     size: @18      algn: 32      
                         used: 0       
@921    identifier_node  strg: __inline_isnanf         lngt: 15      
@922    function_decl    name: @982     type: @655     srcp: math.h:185    
                         chan: @983     lang: C        args: @984    
                         link: static   body: @985    
@923    parm_decl        name: @665     type: @100     scpe: @850    
                         srcp: math.h:189              argt: @100    
                         size: @18      algn: 32       used: 1       
@924    bind_expr        type: @19      vars: @986     body: @987    
@925    var_decl         type: @10      scpe: @782     srcp: math.h:190    
                         note: artificial              size: @18     
                         algn: 32       used: 1       
@926    statement_list   0   : @988     1   : @989    
@927    modify_expr      type: @10      op 0: @853     op 1: @990    
@928    return_expr      type: @19      expr: @991    
@929    identifier_node  strg: iftmp.3  lngt: 7       
@930    var_decl         type: @804     scpe: @709     srcp: math.h:195    
                         note: artificial              chan: @937    
                         size: @9       algn: 8        used: 1       
@931    var_decl         name: @894     type: @100     scpe: @709    
                         srcp: math.h:195              size: @18     
                         algn: 32       used: 1       
@932    abs_expr         type: @100     op 0: @739    
@933    ne_expr          type: @804     op 0: @739     op 1: @739    
@934    statement_list   0   : @992     1   : @993    
@935    statement_list   
@936    le_expr          type: @804     op 0: @931     op 1: @994    
@937    var_decl         type: @804     scpe: @709     srcp: math.h:195    
                         note: artificial              chan: @941    
                         size: @9       algn: 8        used: 1       
@938    truth_not_expr   type: @804     op 0: @930    
@939    statement_list   0   : @995    
@940    statement_list   
@941    var_decl         type: @804     scpe: @709     srcp: math.h:195    
                         note: artificial              chan: @943    
                         size: @9       algn: 8        used: 1       
@942    ge_expr          type: @804     op 0: @931     op 1: @996    
@943    var_decl         type: @804     scpe: @709     srcp: math.h:195    
                         note: artificial              chan: @931    
                         size: @9       algn: 8        used: 1       
@944    truth_not_expr   type: @804     op 0: @941    
@945    statement_list   0   : @997    
@946    statement_list   
@947    label_decl       type: @19      scpe: @709     srcp: math.h:195    
                         note: artificial 
@948    label_decl       type: @19      scpe: @709     srcp: math.h:195    
                         note: artificial 
@949    convert_expr     type: @10      op 0: @855    
@950    modify_expr      type: @10      op 0: @998     op 1: @785    
@951    modify_expr      type: @10      op 0: @741     op 1: @60     
@952    return_expr      type: @19      expr: @999    
@953    real_cst         type: @605     valu: 1.7976931348623157081453e+308 
@954    goto_expr        type: @19      labl: @890    
@955    real_cst         type: @605     valu: 2.2250738585072013830902e-308 
@956    goto_expr        type: @19      labl: @890    
@957    result_decl      type: @10      scpe: @686     srcp: math.h:196    
                         note: artificial              size: @18     
                         algn: 32      
@958    identifier_node  strg: bool     lngt: 4       
@959    modify_expr      type: @10      op 0: @901     op 1: @712    
@960    method_type      unql: @1000    size: @9       algn: 8       
                         clas: @829     retn: @19      prms: @1001   
@961    function_decl    name: @911     orig: @903     type: @960    
                         scpe: @829     srcp: math.h:192    
                         note: artificial              chan: @1002   
                         note: member   accs: pub      note: constructor 
                         args: @1003    link: static  
@962    parm_decl        name: @914     type: @1004    srcp: math.h:192    
                         note: artificial              chan: @1005   
                         argt: @1004    size: @18      algn: 32      
                         used: 0       
@963    method_type      size: @9       algn: 8        clas: @768    
                         retn: @19      prms: @964    
@964    tree_list        valu: @1006    chan: @1007   
@965    function_decl    name: @971     orig: @835     type: @906    
                         scpe: @768     srcp: math.h:193    
                         note: artificial              chan: @1008   
                         note: member   accs: pub      note: constructor 
                         args: @1009    link: static  
@966    parm_decl        name: @914     type: @967     scpe: @907    
                         srcp: math.h:193              note: artificial 
                         chan: @1010    argt: @967     size: @18     
                         algn: 32       used: 0       
@967    pointer_type     qual: c        unql: @1006    size: @18     
                         algn: 32       ptd : @768    
@968    parm_decl        type: @1011    srcp: math.h:193    
                         argt: @1011    size: @18      algn: 32      
                         used: 0       
@969    pointer_type     size: @18      algn: 32       ptd : @730    
@970    tree_list        valu: @975     chan: @45     
@971    identifier_node  strg: __comp_ctor             lngt: 12      
@972    function_decl    name: @780     type: @1012    scpe: @730    
                         srcp: math.h:194              note: artificial 
                         chan: @1013    note: member   accs: pub     
                         note: constructor             args: @1014   
                         link: static  
@973    parm_decl        name: @914     type: @915     scpe: @912    
                         srcp: math.h:194              note: artificial 
                         chan: @1015    argt: @915     size: @18     
                         algn: 32       used: 0       
@974    parm_decl        type: @975     scpe: @840     srcp: math.h:194    
                         argt: @975     size: @18      algn: 32      
                         used: 0       
@975    reference_type   size: @18      algn: 32       refd: @1016   
@976    method_type      size: @9       algn: 8        clas: @777    
                         retn: @19      prms: @977    
@977    tree_list        valu: @1017    chan: @1018   
@978    function_decl    name: @971     orig: @846     type: @918    
                         scpe: @777     srcp: math.h:194    
                         note: artificial              chan: @1019   
                         note: member   accs: pub      note: constructor 
                         args: @1020    link: static  
@979    parm_decl        name: @914     type: @980     scpe: @919    
                         srcp: math.h:194              note: artificial 
                         chan: @1021    argt: @980     size: @18     
                         algn: 32       used: 0       
@980    pointer_type     qual: c        unql: @1017    size: @18     
                         algn: 32       ptd : @777    
@981    parm_decl        type: @1022    srcp: math.h:194    
                         argt: @1022    size: @18      algn: 32      
                         used: 0       
@982    identifier_node  strg: __inline_isinf          lngt: 14      
@983    function_decl    name: @1023    type: @661     srcp: math.h:184    
                         chan: @1024    lang: C        args: @1025   
                         link: static   body: @1026   
@984    parm_decl        name: @665     type: @629     scpe: @922    
                         srcp: math.h:185              argt: @629    
                         size: @254     algn: 128      used: 1       
@985    bind_expr        type: @19      vars: @1027    body: @1028   
@986    var_decl         type: @10      scpe: @850     srcp: math.h:189    
                         note: artificial              size: @18     
                         algn: 32       used: 1       
@987    statement_list   0   : @1029    1   : @1030   
@988    modify_expr      type: @10      op 0: @925     op 1: @1031   
@989    return_expr      type: @19      expr: @1032   
@990    ne_expr          type: @10      op 0: @783     op 1: @783    
@991    modify_expr      type: @10      op 0: @1033    op 1: @853    
@992    modify_expr      type: @10      op 0: @785     op 1: @60     
@993    return_expr      type: @19      expr: @1034   
@994    real_cst         type: @100     valu: 3.40282346638528859811704e+38 
@995    goto_expr        type: @19      labl: @948    
@996    real_cst         type: @100     valu: 1.17549435082228750796874e-38 
@997    goto_expr        type: @19      labl: @948    
@998    result_decl      type: @10      scpe: @709     srcp: math.h:195    
                         note: artificial              size: @18     
                         algn: 32      
@999    modify_expr      type: @10      op 0: @957     op 1: @741    
@1000   method_type      size: @9       algn: 8        clas: @829    
                         retn: @19      prms: @1001   
@1001   tree_list        valu: @1035    chan: @1036   
@1002   function_decl    name: @971     orig: @903     type: @960    
                         scpe: @829     srcp: math.h:192    
                         note: artificial              chan: @1037   
                         note: member   accs: pub      note: constructor 
                         args: @1038    link: static  
@1003   parm_decl        name: @914     type: @1004    scpe: @961    
                         srcp: math.h:192              note: artificial 
                         chan: @1039    argt: @1004    size: @18     
                         algn: 32       used: 0       
@1004   pointer_type     qual: c        unql: @1035    size: @18     
                         algn: 32       ptd : @829    
@1005   parm_decl        type: @1040    srcp: math.h:192    
                         argt: @1040    size: @18      algn: 32      
                         used: 0       
@1006   pointer_type     size: @18      algn: 32       ptd : @768    
@1007   tree_list        valu: @1011    chan: @45     
@1008   function_decl    name: @834     type: @1041    scpe: @768    
                         srcp: math.h:193              note: artificial 
                         chan: @1042    note: member   accs: pub     
                         note: constructor             args: @1043   
                         link: static  
@1009   parm_decl        name: @914     type: @967     scpe: @965    
                         srcp: math.h:193              note: artificial 
                         chan: @1044    argt: @967     size: @18     
                         algn: 32       used: 0       
@1010   parm_decl        type: @1011    scpe: @907     srcp: math.h:193    
                         argt: @1011    size: @18      algn: 32      
                         used: 0       
@1011   reference_type   size: @18      algn: 32       refd: @1045   
@1012   method_type      unql: @1046    size: @9       algn: 8       
                         clas: @730     retn: @19      prms: @1047   
@1013   function_decl    name: @911     orig: @972     type: @1012   
                         scpe: @730     srcp: math.h:194    
                         note: artificial              chan: @1048   
                         note: member   accs: pub      note: constructor 
                         args: @1049    link: static  
@1014   parm_decl        name: @914     type: @915     srcp: math.h:194    
                         note: artificial              argt: @915    
                         size: @18      algn: 32       used: 0       
@1015   parm_decl        type: @975     scpe: @912     srcp: math.h:194    
                         argt: @975     size: @18      algn: 32      
                         used: 0       
@1016   union_type       qual: c        name: @735     unql: @730    
                         size: @254     algn: 128      tag : union   
                         flds: @731     fncs: @972     binf: @774    
@1017   pointer_type     size: @18      algn: 32       ptd : @777    
@1018   tree_list        valu: @1022    chan: @45     
@1019   function_decl    name: @848     type: @1050    scpe: @777    
                         srcp: math.h:194              note: artificial 
                         chan: @1051    note: member   accs: pub     
                         note: constructor             args: @1052   
                         link: static  
@1020   parm_decl        name: @914     type: @980     scpe: @978    
                         srcp: math.h:194              note: artificial 
                         chan: @1053    argt: @980     size: @18     
                         algn: 32       used: 0       
@1021   parm_decl        type: @1022    scpe: @919     srcp: math.h:194    
                         argt: @1022    size: @18      algn: 32      
                         used: 0       
@1022   reference_type   size: @18      algn: 32       refd: @1054   
@1023   identifier_node  strg: __inline_isinfd         lngt: 15      
@1024   function_decl    name: @1055    type: @670     srcp: math.h:183    
                         chan: @1056    lang: C        args: @1057   
                         link: static   body: @1058   
@1025   parm_decl        name: @665     type: @605     scpe: @983    
                         srcp: math.h:184              argt: @605    
                         size: @41      algn: 64       used: 1       
@1026   bind_expr        type: @19      vars: @1059    body: @1060   
@1027   var_decl         type: @10      scpe: @922     srcp: math.h:185    
                         note: artificial              chan: @1061   
                         size: @18      algn: 32       used: 1       
@1028   statement_list   0   : @1062    1   : @1063    2   : @1064   
@1029   modify_expr      type: @10      op 0: @986     op 1: @1065   
@1030   return_expr      type: @19      expr: @1066   
@1031   ne_expr          type: @10      op 0: @851     op 1: @851    
@1032   modify_expr      type: @10      op 0: @1067    op 1: @925    
@1033   result_decl      type: @10      scpe: @738     srcp: math.h:191    
                         note: artificial              size: @18     
                         algn: 32      
@1034   modify_expr      type: @10      op 0: @998     op 1: @785    
@1035   pointer_type     size: @18      algn: 32       ptd : @829    
@1036   tree_list        valu: @1040    chan: @45     
@1037   function_decl    name: @902     type: @1068    scpe: @829    
                         srcp: math.h:192              note: artificial 
                         chan: @1069    note: member   accs: pub     
                         note: constructor             args: @1070   
                         link: static  
@1038   parm_decl        name: @914     type: @1004    scpe: @1002   
                         srcp: math.h:192              note: artificial 
                         chan: @1071    argt: @1004    size: @18     
                         algn: 32       used: 0       
@1039   parm_decl        type: @1040    scpe: @961     srcp: math.h:192    
                         argt: @1040    size: @18      algn: 32      
                         used: 0       
@1040   reference_type   size: @18      algn: 32       refd: @1072   
@1041   method_type      unql: @1073    size: @9       algn: 8       
                         clas: @768     retn: @19      prms: @1074   
@1042   function_decl    name: @911     orig: @1008    type: @1041   
                         scpe: @768     srcp: math.h:193    
                         note: artificial              chan: @1075   
                         note: member   accs: pub      note: constructor 
                         args: @1076    link: static  
@1043   parm_decl        name: @914     type: @967     srcp: math.h:193    
                         note: artificial              argt: @967    
                         size: @18      algn: 32       used: 0       
@1044   parm_decl        type: @1011    scpe: @965     srcp: math.h:193    
                         argt: @1011    size: @18      algn: 32      
                         used: 0       
@1045   union_type       qual: c        name: @767     unql: @768    
                         size: @41      algn: 32       tag : union   
                         flds: @769     fncs: @1008    binf: @836    
@1046   method_type      size: @9       algn: 8        clas: @730    
                         retn: @19      prms: @1047   
@1047   tree_list        valu: @969     chan: @45     
@1048   function_decl    name: @971     orig: @972     type: @1012   
                         scpe: @730     srcp: math.h:194    
                         note: artificial              note: member  
                         accs: pub      note: constructor 
                         args: @1077    link: static  
@1049   parm_decl        name: @914     type: @915     scpe: @1013   
                         srcp: math.h:194              note: artificial 
                         argt: @915     size: @18      algn: 32      
                         used: 0       
@1050   method_type      unql: @1078    size: @9       algn: 8       
                         clas: @777     retn: @19      prms: @1079   
@1051   function_decl    name: @911     orig: @1019    type: @1050   
                         scpe: @777     srcp: math.h:194    
                         note: artificial              chan: @1080   
                         note: member   accs: pub      note: constructor 
                         args: @1081    link: static  
@1052   parm_decl        name: @914     type: @980     srcp: math.h:194    
                         note: artificial              argt: @980    
                         size: @18      algn: 32       used: 0       
@1053   parm_decl        type: @1022    scpe: @978     srcp: math.h:194    
                         argt: @1022    size: @18      algn: 32      
                         used: 0       
@1054   record_type      qual: c        name: @844     unql: @777    
                         size: @229     algn: 32       tag : struct  
                         flds: @845     fncs: @1019    binf: @847    
@1055   identifier_node  strg: __inline_isinff         lngt: 15      
@1056   function_decl    name: @1082    type: @655     srcp: math.h:188    
                         chan: @1083    lang: C        args: @1084   
                         link: static   body: @1085   
@1057   parm_decl        name: @665     type: @100     scpe: @1024   
                         srcp: math.h:183              argt: @100    
                         size: @18      algn: 32       used: 1       
@1058   bind_expr        type: @19      vars: @1086    body: @1087   
@1059   var_decl         type: @10      scpe: @983     srcp: math.h:184    
                         note: artificial              chan: @1088   
                         size: @18      algn: 32       used: 1       
@1060   statement_list   0   : @1089    1   : @1090    2   : @1091   
@1061   var_decl         type: @629     scpe: @922     srcp: math.h:185    
                         note: artificial              size: @254    
                         algn: 128      used: 1       
@1062   modify_expr      type: @629     op 0: @1061    op 1: @1092   
@1063   modify_expr      type: @10      op 0: @1027    op 1: @1093   
@1064   return_expr      type: @19      expr: @1094   
@1065   ne_expr          type: @10      op 0: @923     op 1: @923    
@1066   modify_expr      type: @10      op 0: @1095    op 1: @986    
@1067   result_decl      type: @10      scpe: @782     srcp: math.h:190    
                         note: artificial              size: @18     
                         algn: 32      
@1068   method_type      unql: @1096    size: @9       algn: 8       
                         clas: @829     retn: @19      prms: @1097   
@1069   function_decl    name: @911     orig: @1037    type: @1068   
                         scpe: @829     srcp: math.h:192    
                         note: artificial              chan: @1098   
                         note: member   accs: pub      note: constructor 
                         args: @1099    link: static  
@1070   parm_decl        name: @914     type: @1004    srcp: math.h:192    
                         note: artificial              argt: @1004   
                         size: @18      algn: 32       used: 0       
@1071   parm_decl        type: @1040    scpe: @1002    srcp: math.h:192    
                         argt: @1040    size: @18      algn: 32      
                         used: 0       
@1072   union_type       qual: c        name: @828     unql: @829    
                         size: @18      algn: 32       tag : union   
                         flds: @830     fncs: @1037    binf: @904    
@1073   method_type      size: @9       algn: 8        clas: @768    
                         retn: @19      prms: @1074   
@1074   tree_list        valu: @1006    chan: @45     
@1075   function_decl    name: @971     orig: @1008    type: @1041   
                         scpe: @768     srcp: math.h:193    
                         note: artificial              note: member  
                         accs: pub      note: constructor 
                         args: @1100    link: static  
@1076   parm_decl        name: @914     type: @967     scpe: @1042   
                         srcp: math.h:193              note: artificial 
                         argt: @967     size: @18      algn: 32      
                         used: 0       
@1077   parm_decl        name: @914     type: @915     scpe: @1048   
                         srcp: math.h:194              note: artificial 
                         argt: @915     size: @18      algn: 32      
                         used: 0       
@1078   method_type      size: @9       algn: 8        clas: @777    
                         retn: @19      prms: @1079   
@1079   tree_list        valu: @1017    chan: @45     
@1080   function_decl    name: @971     orig: @1019    type: @1050   
                         scpe: @777     srcp: math.h:194    
                         note: artificial              note: member  
                         accs: pub      note: constructor 
                         args: @1101    link: static  
@1081   parm_decl        name: @914     type: @980     scpe: @1051   
                         srcp: math.h:194              note: artificial 
                         argt: @980     size: @18      algn: 32      
                         used: 0       
@1082   identifier_node  strg: __inline_isfinite       lngt: 17      
@1083   function_decl    name: @1102    type: @661     srcp: math.h:187    
                         chan: @1103    lang: C        args: @1104   
                         link: static   body: @1105   
@1084   parm_decl        name: @665     type: @629     scpe: @1056   
                         srcp: math.h:188              argt: @629    
                         size: @254     algn: 128      used: 1       
@1085   bind_expr        type: @19      vars: @1106    body: @1107   
@1086   var_decl         type: @10      scpe: @1024    srcp: math.h:183    
                         note: artificial              chan: @1108   
                         size: @18      algn: 32       used: 1       
@1087   statement_list   0   : @1109    1   : @1110    2   : @1111   
@1088   var_decl         type: @605     scpe: @983     srcp: math.h:184    
                         note: artificial              size: @41     
                         algn: 64       used: 1       
@1089   modify_expr      type: @605     op 0: @1088    op 1: @1112   
@1090   modify_expr      type: @10      op 0: @1059    op 1: @1113   
@1091   return_expr      type: @19      expr: @1114   
@1092   abs_expr         type: @629     op 0: @984    
@1093   gt_expr          type: @10      op 0: @1061    op 1: @1115   
@1094   modify_expr      type: @10      op 0: @1116    op 1: @1027   
@1095   result_decl      type: @10      scpe: @850     srcp: math.h:189    
                         note: artificial              size: @18     
                         algn: 32      
@1096   method_type      size: @9       algn: 8        clas: @829    
                         retn: @19      prms: @1097   
@1097   tree_list        valu: @1035    chan: @45     
@1098   function_decl    name: @971     orig: @1037    type: @1068   
                         scpe: @829     srcp: math.h:192    
                         note: artificial              note: member  
                         accs: pub      note: constructor 
                         args: @1117    link: static  
@1099   parm_decl        name: @914     type: @1004    scpe: @1069   
                         srcp: math.h:192              note: artificial 
                         argt: @1004    size: @18      algn: 32      
                         used: 0       
@1100   parm_decl        name: @914     type: @967     scpe: @1075   
                         srcp: math.h:193              note: artificial 
                         argt: @967     size: @18      algn: 32      
                         used: 0       
@1101   parm_decl        name: @914     type: @980     scpe: @1080   
                         srcp: math.h:194              note: artificial 
                         argt: @980     size: @18      algn: 32      
                         used: 0       
@1102   identifier_node  strg: __inline_isfinited      lngt: 18      
@1103   function_decl    name: @1118    type: @670     srcp: math.h:186    
                         chan: @1119    lang: C        args: @1120   
                         link: static   body: @1121   
@1104   parm_decl        name: @665     type: @605     scpe: @1083   
                         srcp: math.h:187              argt: @605    
                         size: @41      algn: 64       used: 1       
@1105   bind_expr        type: @19      vars: @1122    body: @1123   
@1106   var_decl         type: @10      scpe: @1056    srcp: math.h:188    
                         note: artificial              chan: @1124   
                         size: @18      algn: 32       used: 1       
@1107   statement_list   0   : @1125    1   : @1126    2   : @1127   
                         3   : @1128    4   : @1129    5   : @1130   
                         6   : @1131    7   : @1132    8   : @1133   
                         9   : @1134    10  : @1135    11  : @1136   
                         12  : @1137    13  : @1138    14  : @1139   
@1108   var_decl         type: @100     scpe: @1024    srcp: math.h:183    
                         note: artificial              size: @18     
                         algn: 32       used: 1       
@1109   modify_expr      type: @100     op 0: @1108    op 1: @1140   
@1110   modify_expr      type: @10      op 0: @1086    op 1: @1141   
@1111   return_expr      type: @19      expr: @1142   
@1112   abs_expr         type: @605     op 0: @1025   
@1113   gt_expr          type: @10      op 0: @1088    op 1: @1143   
@1114   modify_expr      type: @10      op 0: @1144    op 1: @1059   
@1115   real_cst         type: @629     valu: 1.189731495357231765021e+4932 
@1116   result_decl      type: @10      scpe: @922     srcp: math.h:185    
                         note: artificial              size: @18     
                         algn: 32      
@1117   parm_decl        name: @914     type: @1004    scpe: @1098   
                         srcp: math.h:192              note: artificial 
                         argt: @1004    size: @18      algn: 32      
                         used: 0       
@1118   identifier_node  strg: __inline_isfinitef      lngt: 18      
@1119   function_decl    name: @1145    type: @655     srcp: math.h:139    
                         chan: @1146    lang: C        args: @1147   
                         body: undefined               link: extern  
@1120   parm_decl        name: @665     type: @100     scpe: @1103   
                         srcp: math.h:186              argt: @100    
                         size: @18      algn: 32       used: 1       
@1121   bind_expr        type: @19      vars: @1148    body: @1149   
@1122   var_decl         type: @10      scpe: @1083    srcp: math.h:187    
                         note: artificial              chan: @1150   
                         size: @18      algn: 32       used: 1       
@1123   statement_list   0   : @1151    1   : @1152    2   : @1153   
                         3   : @1154    4   : @1155    5   : @1156   
                         6   : @1157    7   : @1158    8   : @1159   
                         9   : @1160    10  : @1161    11  : @1162   
                         12  : @1163    13  : @1164    14  : @1165   
@1124   var_decl         name: @1166    type: @804     scpe: @1056   
                         srcp: math.h:188              note: artificial 
                         chan: @1167    size: @9       algn: 8       
                         used: 1       
@1125   modify_expr      type: @804     op 0: @1167    op 1: @1168   
@1126   modify_expr      type: @804     op 0: @1169    op 1: @1170   
@1127   cond_expr        type: @19      op 0: @1169    op 1: @1171   
                         op 2: @1172   
@1128   modify_expr      type: @629     op 0: @1173    op 1: @1174   
@1129   modify_expr      type: @804     op 0: @1175    op 1: @1176   
@1130   modify_expr      type: @804     op 0: @1177    op 1: @1178   
@1131   modify_expr      type: @804     op 0: @1179    op 1: @1180   
@1132   cond_expr        type: @19      op 0: @1179    op 1: @1181   
                         op 2: @1182   
@1133   modify_expr      type: @19      op 0: @1124    op 1: @822    
@1134   goto_expr        type: @19      labl: @1183   
@1135   label_expr       type: @19      name: @1184   
@1136   modify_expr      type: @19      op 0: @1124    op 1: @825    
@1137   label_expr       type: @19      name: @1183   
@1138   modify_expr      type: @10      op 0: @1106    op 1: @1185   
@1139   return_expr      type: @19      expr: @1186   
@1140   abs_expr         type: @100     op 0: @1057   
@1141   gt_expr          type: @10      op 0: @1108    op 1: @1187   
@1142   modify_expr      type: @10      op 0: @1188    op 1: @1086   
@1143   real_cst         type: @605     valu: 1.7976931348623157081453e+308 
@1144   result_decl      type: @10      scpe: @983     srcp: math.h:184    
                         note: artificial              size: @18     
                         algn: 32      
@1145   identifier_node  strg: __fpclassify            lngt: 12      
@1146   function_decl    name: @1189    type: @661     srcp: math.h:138    
                         chan: @1190    lang: C        args: @1191   
                         body: undefined               link: extern  
@1147   parm_decl        type: @629     srcp: math.h:139    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@1148   var_decl         type: @10      scpe: @1103    srcp: math.h:186    
                         note: artificial              chan: @1192   
                         size: @18      algn: 32       used: 1       
@1149   statement_list   0   : @1193    1   : @1194    2   : @1195   
                         3   : @1196    4   : @1197    5   : @1198   
                         6   : @1199    7   : @1200    8   : @1201   
                         9   : @1202    10  : @1203    11  : @1204   
                         12  : @1205    13  : @1206    14  : @1207   
@1150   var_decl         name: @1208    type: @804     scpe: @1083   
                         srcp: math.h:187              note: artificial 
                         chan: @1209    size: @9       algn: 8       
                         used: 1       
@1151   modify_expr      type: @804     op 0: @1209    op 1: @1210   
@1152   modify_expr      type: @804     op 0: @1211    op 1: @1212   
@1153   cond_expr        type: @19      op 0: @1211    op 1: @1213   
                         op 2: @1214   
@1154   modify_expr      type: @605     op 0: @1215    op 1: @1216   
@1155   modify_expr      type: @804     op 0: @1217    op 1: @1218   
@1156   modify_expr      type: @804     op 0: @1219    op 1: @1220   
@1157   modify_expr      type: @804     op 0: @1221    op 1: @1222   
@1158   cond_expr        type: @19      op 0: @1221    op 1: @1223   
                         op 2: @1224   
@1159   modify_expr      type: @19      op 0: @1150    op 1: @822    
@1160   goto_expr        type: @19      labl: @1225   
@1161   label_expr       type: @19      name: @1226   
@1162   modify_expr      type: @19      op 0: @1150    op 1: @825    
@1163   label_expr       type: @19      name: @1225   
@1164   modify_expr      type: @10      op 0: @1122    op 1: @1227   
@1165   return_expr      type: @19      expr: @1228   
@1166   identifier_node  strg: iftmp.2  lngt: 7       
@1167   var_decl         type: @804     scpe: @1056    srcp: math.h:188    
                         note: artificial              chan: @1169   
                         size: @9       algn: 8        used: 1       
@1168   eq_expr          type: @804     op 0: @1084    op 1: @1084   
@1169   var_decl         type: @804     scpe: @1056    srcp: math.h:188    
                         note: artificial              chan: @1173   
                         size: @9       algn: 8        used: 1       
@1170   truth_not_expr   type: @804     op 0: @1167   
@1171   statement_list   0   : @1229   
@1172   statement_list   
@1173   var_decl         type: @629     scpe: @1056    srcp: math.h:188    
                         note: artificial              chan: @1175   
                         size: @254     algn: 128      used: 1       
@1174   abs_expr         type: @629     op 0: @1084   
@1175   var_decl         type: @804     scpe: @1056    srcp: math.h:188    
                         note: artificial              chan: @1177   
                         size: @9       algn: 8        used: 1       
@1176   gt_expr          type: @804     op 0: @1173    op 1: @1230   
@1177   var_decl         type: @804     scpe: @1056    srcp: math.h:188    
                         note: artificial              chan: @1179   
                         size: @9       algn: 8        used: 1       
@1178   truth_not_expr   type: @804     op 0: @1175   
@1179   var_decl         type: @804     scpe: @1056    srcp: math.h:188    
                         note: artificial              size: @9      
                         algn: 8        used: 1       
@1180   truth_not_expr   type: @804     op 0: @1177   
@1181   statement_list   0   : @1231   
@1182   statement_list   
@1183   label_decl       type: @19      scpe: @1056    srcp: math.h:188    
                         note: artificial 
@1184   label_decl       type: @19      scpe: @1056    srcp: math.h:188    
                         note: artificial 
@1185   convert_expr     type: @10      op 0: @1124   
@1186   modify_expr      type: @10      op 0: @1232    op 1: @1106   
@1187   real_cst         type: @100     valu: 3.40282346638528859811704e+38 
@1188   result_decl      type: @10      scpe: @1024    srcp: math.h:183    
                         note: artificial              size: @18     
                         algn: 32      
@1189   identifier_node  strg: __fpclassifyd           lngt: 13      
@1190   function_decl    name: @1233    type: @670     srcp: math.h:137    
                         chan: @1234    lang: C        args: @1235   
                         body: undefined               link: extern  
@1191   parm_decl        type: @605     srcp: math.h:138    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@1192   var_decl         name: @1236    type: @804     scpe: @1103   
                         srcp: math.h:186              note: artificial 
                         chan: @1237    size: @9       algn: 8       
                         used: 1       
@1193   modify_expr      type: @804     op 0: @1237    op 1: @1238   
@1194   modify_expr      type: @804     op 0: @1239    op 1: @1240   
@1195   cond_expr        type: @19      op 0: @1239    op 1: @1241   
                         op 2: @1242   
@1196   modify_expr      type: @100     op 0: @1243    op 1: @1244   
@1197   modify_expr      type: @804     op 0: @1245    op 1: @1246   
@1198   modify_expr      type: @804     op 0: @1247    op 1: @1248   
@1199   modify_expr      type: @804     op 0: @1249    op 1: @1250   
@1200   cond_expr        type: @19      op 0: @1249    op 1: @1251   
                         op 2: @1252   
@1201   modify_expr      type: @19      op 0: @1192    op 1: @822    
@1202   goto_expr        type: @19      labl: @1253   
@1203   label_expr       type: @19      name: @1254   
@1204   modify_expr      type: @19      op 0: @1192    op 1: @825    
@1205   label_expr       type: @19      name: @1253   
@1206   modify_expr      type: @10      op 0: @1148    op 1: @1255   
@1207   return_expr      type: @19      expr: @1256   
@1208   identifier_node  strg: iftmp.1  lngt: 7       
@1209   var_decl         type: @804     scpe: @1083    srcp: math.h:187    
                         note: artificial              chan: @1211   
                         size: @9       algn: 8        used: 1       
@1210   eq_expr          type: @804     op 0: @1104    op 1: @1104   
@1211   var_decl         type: @804     scpe: @1083    srcp: math.h:187    
                         note: artificial              chan: @1215   
                         size: @9       algn: 8        used: 1       
@1212   truth_not_expr   type: @804     op 0: @1209   
@1213   statement_list   0   : @1257   
@1214   statement_list   
@1215   var_decl         type: @605     scpe: @1083    srcp: math.h:187    
                         note: artificial              chan: @1217   
                         size: @41      algn: 64       used: 1       
@1216   abs_expr         type: @605     op 0: @1104   
@1217   var_decl         type: @804     scpe: @1083    srcp: math.h:187    
                         note: artificial              chan: @1219   
                         size: @9       algn: 8        used: 1       
@1218   gt_expr          type: @804     op 0: @1215    op 1: @1258   
@1219   var_decl         type: @804     scpe: @1083    srcp: math.h:187    
                         note: artificial              chan: @1221   
                         size: @9       algn: 8        used: 1       
@1220   truth_not_expr   type: @804     op 0: @1217   
@1221   var_decl         type: @804     scpe: @1083    srcp: math.h:187    
                         note: artificial              size: @9      
                         algn: 8        used: 1       
@1222   truth_not_expr   type: @804     op 0: @1219   
@1223   statement_list   0   : @1259   
@1224   statement_list   
@1225   label_decl       type: @19      scpe: @1083    srcp: math.h:187    
                         note: artificial 
@1226   label_decl       type: @19      scpe: @1083    srcp: math.h:187    
                         note: artificial 
@1227   convert_expr     type: @10      op 0: @1150   
@1228   modify_expr      type: @10      op 0: @1260    op 1: @1122   
@1229   goto_expr        type: @19      labl: @1184   
@1230   real_cst         type: @629     valu: 1.189731495357231765021e+4932 
@1231   goto_expr        type: @19      labl: @1184   
@1232   result_decl      type: @10      scpe: @1056    srcp: math.h:188    
                         note: artificial              size: @18     
                         algn: 32      
@1233   identifier_node  strg: __fpclassifyf           lngt: 13      
@1234   function_decl    name: @1261    type: @1262    srcp: math.h:117    
                         chan: @1263    lang: C        body: undefined 
                         link: extern  
@1235   parm_decl        type: @100     srcp: math.h:137    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@1236   identifier_node  strg: iftmp.0  lngt: 7       
@1237   var_decl         type: @804     scpe: @1103    srcp: math.h:186    
                         note: artificial              chan: @1239   
                         size: @9       algn: 8        used: 1       
@1238   eq_expr          type: @804     op 0: @1120    op 1: @1120   
@1239   var_decl         type: @804     scpe: @1103    srcp: math.h:186    
                         note: artificial              chan: @1243   
                         size: @9       algn: 8        used: 1       
@1240   truth_not_expr   type: @804     op 0: @1237   
@1241   statement_list   0   : @1264   
@1242   statement_list   
@1243   var_decl         type: @100     scpe: @1103    srcp: math.h:186    
                         note: artificial              chan: @1245   
                         size: @18      algn: 32       used: 1       
@1244   abs_expr         type: @100     op 0: @1120   
@1245   var_decl         type: @804     scpe: @1103    srcp: math.h:186    
                         note: artificial              chan: @1247   
                         size: @9       algn: 8        used: 1       
@1246   gt_expr          type: @804     op 0: @1243    op 1: @1265   
@1247   var_decl         type: @804     scpe: @1103    srcp: math.h:186    
                         note: artificial              chan: @1249   
                         size: @9       algn: 8        used: 1       
@1248   truth_not_expr   type: @804     op 0: @1245   
@1249   var_decl         type: @804     scpe: @1103    srcp: math.h:186    
                         note: artificial              size: @9      
                         algn: 8        used: 1       
@1250   truth_not_expr   type: @804     op 0: @1247   
@1251   statement_list   0   : @1266   
@1252   statement_list   
@1253   label_decl       type: @19      scpe: @1103    srcp: math.h:186    
                         note: artificial 
@1254   label_decl       type: @19      scpe: @1103    srcp: math.h:186    
                         note: artificial 
@1255   convert_expr     type: @10      op 0: @1192   
@1256   modify_expr      type: @10      op 0: @1267    op 1: @1148   
@1257   goto_expr        type: @19      labl: @1226   
@1258   real_cst         type: @605     valu: 1.7976931348623157081453e+308 
@1259   goto_expr        type: @19      labl: @1226   
@1260   result_decl      type: @10      scpe: @1083    srcp: math.h:187    
                         note: artificial              size: @18     
                         algn: 32      
@1261   identifier_node  strg: __math_errhandling      lngt: 18      
@1262   function_type    size: @9       algn: 8        retn: @243    
                         prms: @45     
@1263   const_decl       name: @1268    type: @1269    srcp: math.h:89     
                         chan: @1270    cnst: @1271   
@1264   goto_expr        type: @19      labl: @1254   
@1265   real_cst         type: @100     valu: 3.40282346638528859811704e+38 
@1266   goto_expr        type: @19      labl: @1254   
@1267   result_decl      type: @10      scpe: @1103    srcp: math.h:186    
                         note: artificial              size: @18     
                         algn: 32      
@1268   identifier_node  strg: _FP_SUPERNORMAL         lngt: 15      
@1269   enumeral_type    name: @1272    size: @18      algn: 32      
                         prec: 32       sign: unsigned min : @1273   
                         max : @1274    csts: @1275   
@1270   const_decl       name: @1276    type: @1269    srcp: math.h:88     
                         chan: @1277    cnst: @1278   
@1271   integer_cst      type: @1269    low : 6       
@1272   type_decl        name: @1279    type: @1269    srcp: math.h:83     
                         note: artificial 
@1273   integer_cst      type: @1269    low : 0       
@1274   integer_cst      type: @1269    low : 7       
@1275   tree_list        purp: @1280    valu: @1281    chan: @1282   
@1276   identifier_node  strg: _FP_SUBNORMAL           lngt: 13      
@1277   const_decl       name: @1283    type: @1269    srcp: math.h:87     
                         chan: @1284    cnst: @1285   
@1278   integer_cst      type: @1269    low : 5       
@1279   identifier_node  strg: $_0      lngt: 3       
@1280   identifier_node  strg: _FP_NAN  lngt: 7       
@1281   integer_cst      type: @1269    low : 1       
@1282   tree_list        purp: @1286    valu: @1287    chan: @1288   
@1283   identifier_node  strg: _FP_NORMAL              lngt: 10      
@1284   const_decl       name: @1289    type: @1269    srcp: math.h:86     
                         chan: @1290    cnst: @1291   
@1285   integer_cst      type: @1269    low : 4       
@1286   identifier_node  strg: _FP_INFINITE            lngt: 12      
@1287   integer_cst      type: @1269    low : 2       
@1288   tree_list        purp: @1289    valu: @1291    chan: @1292   
@1289   identifier_node  strg: _FP_ZERO lngt: 8       
@1290   const_decl       name: @1286    type: @1269    srcp: math.h:85     
                         chan: @1293    cnst: @1287   
@1291   integer_cst      type: @1269    low : 3       
@1292   tree_list        purp: @1283    valu: @1285    chan: @1294   
@1293   const_decl       name: @1280    type: @1269    srcp: math.h:84     
                         chan: @1295    cnst: @1281   
@1294   tree_list        purp: @1276    valu: @1278    chan: @1296   
@1295   type_decl        name: @1297    type: @1298    srcp: math.h:50     
                         chan: @1299   
@1296   tree_list        purp: @1268    valu: @1271   
@1297   identifier_node  strg: double_t lngt: 8       
@1298   real_type        name: @1295    unql: @605     size: @41     
                         algn: 64       prec: 64      
@1299   type_decl        name: @1300    type: @1301    srcp: math.h:49     
                         chan: @1302   
@1300   identifier_node  strg: float_t  lngt: 7       
@1301   real_type        name: @1299    unql: @100     size: @18     
                         algn: 32       prec: 32      
@1302   function_decl    name: @1303    type: @465     srcp: <built-in>:0      
                         note: artificial              chan: @1304   
                         lang: C        body: undefined 
                         link: extern  
@1303   identifier_node  strg: __cxa_call_unexpected   lngt: 21      
@1304   function_decl    name: @1305    type: @1306    srcp: <built-in>:0      
                         note: artificial              chan: @1307   
                         note: operator vecdelete      body: undefined 
                         link: extern  
@1305   identifier_node  note: operator 
@1306   function_type    unql: @465     size: @9       algn: 8       
                         retn: @19      prms: @487    
@1307   function_decl    name: @1308    type: @1306    srcp: <built-in>:0      
                         note: artificial              chan: @1309   
                         note: operator delete         body: undefined 
                         link: extern  
@1308   identifier_node  note: operator 
@1309   function_decl    name: @1310    type: @1311    srcp: <built-in>:0      
                         note: artificial              chan: @1312   
                         note: operator vecnew         body: undefined 
                         link: extern  
@1310   identifier_node  note: operator 
@1311   function_type    unql: @1313    size: @9       algn: 8       
                         retn: @55      prms: @1314   
@1312   function_decl    name: @1315    type: @1311    srcp: <built-in>:0      
                         note: artificial              chan: @1316   
                         note: operator new            body: undefined 
                         link: extern  
@1313   function_type    size: @9       algn: 8        retn: @55     
                         prms: @1314   
@1314   tree_list        valu: @120     chan: @45     
@1315   identifier_node  note: operator 
@1316   type_decl        name: @1317    type: @1318    srcp: <built-in>:0      
                         chan: @1319   
@1317   identifier_node  strg: global type             lngt: 11      
@1318   lang_type        name: @1316    algn: 1       
@1319   type_decl        name: @1320    type: @1321    srcp: <built-in>:0      
                         chan: @1322   
@1320   identifier_node  strg: unknown type            lngt: 12      
@1321   lang_type        name: @1319    algn: 1       
@1322   function_decl    name: @1323    type: @1324    srcp: <built-in>:0      
                         note: artificial              chan: @1325   
                         lang: C        body: undefined 
                         link: extern  
@1323   identifier_node  strg: __builtin_ia32_vec_set_v4hi 
                         lngt: 27      
@1324   function_type    size: @9       algn: 8        retn: @1326   
                         prms: @1327   
@1325   function_decl    name: @1328    type: @1329    srcp: <built-in>:0      
                         note: artificial              chan: @1330   
                         lang: C        body: undefined 
                         link: extern  
@1326   vector_type      size: @41      algn: 64      
@1327   tree_list        valu: @1326    chan: @1331   
@1328   identifier_node  strg: __builtin_ia32_vec_set_v8hi 
                         lngt: 27      
@1329   function_type    size: @9       algn: 8        retn: @1332   
                         prms: @1333   
@1330   function_decl    name: @1334    type: @1335    srcp: <built-in>:0      
                         note: artificial              chan: @1336   
                         lang: C        body: undefined 
                         link: extern  
@1331   tree_list        valu: @572     chan: @1337   
@1332   vector_type      size: @254     algn: 128     
@1333   tree_list        valu: @1332    chan: @1338   
@1334   identifier_node  strg: __builtin_ia32_vec_ext_v16qi 
                         lngt: 28      
@1335   function_type    size: @9       algn: 8        retn: @590    
                         prms: @1339   
@1336   function_decl    name: @1340    type: @1341    srcp: <built-in>:0      
                         note: artificial              chan: @1342   
                         lang: C        body: undefined 
                         link: extern  
@1337   tree_list        valu: @10      chan: @45     
@1338   tree_list        valu: @572     chan: @1343   
@1339   tree_list        valu: @1344    chan: @1345   
@1340   identifier_node  strg: __builtin_ia32_vec_ext_v2si 
                         lngt: 27      
@1341   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1346   
@1342   function_decl    name: @1347    type: @1348    srcp: <built-in>:0      
                         note: artificial              chan: @1349   
                         lang: C        body: undefined 
                         link: extern  
@1343   tree_list        valu: @10      chan: @45     
@1344   vector_type      size: @254     algn: 128     
@1345   tree_list        valu: @10      chan: @45     
@1346   tree_list        valu: @1350    chan: @1351   
@1347   identifier_node  strg: __builtin_ia32_vec_ext_v4hi 
                         lngt: 27      
@1348   function_type    size: @9       algn: 8        retn: @572    
                         prms: @1352   
@1349   function_decl    name: @1353    type: @1354    srcp: <built-in>:0      
                         note: artificial              chan: @1355   
                         lang: C        body: undefined 
                         link: extern  
@1350   vector_type      size: @41      algn: 64      
@1351   tree_list        valu: @10      chan: @45     
@1352   tree_list        valu: @1326    chan: @1356   
@1353   identifier_node  strg: __builtin_ia32_vec_ext_v8hi 
                         lngt: 27      
@1354   function_type    size: @9       algn: 8        retn: @572    
                         prms: @1357   
@1355   function_decl    name: @1358    type: @1359    srcp: <built-in>:0      
                         note: artificial              chan: @1360   
                         lang: C        body: undefined 
                         link: extern  
@1356   tree_list        valu: @10      chan: @45     
@1357   tree_list        valu: @1332    chan: @1361   
@1358   identifier_node  strg: __builtin_ia32_vec_ext_v4si 
                         lngt: 27      
@1359   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1362   
@1360   function_decl    name: @1363    type: @1364    srcp: <built-in>:0      
                         note: artificial              chan: @1365   
                         lang: C        body: undefined 
                         link: extern  
@1361   tree_list        valu: @10      chan: @45     
@1362   tree_list        valu: @1366    chan: @1367   
@1363   identifier_node  strg: __builtin_ia32_vec_ext_v4sf 
                         lngt: 27      
@1364   function_type    size: @9       algn: 8        retn: @100    
                         prms: @1368   
@1365   function_decl    name: @1369    type: @1370    srcp: <built-in>:0      
                         note: artificial              chan: @1371   
                         lang: C        body: undefined 
                         link: extern  
@1366   vector_type      size: @254     algn: 128     
@1367   tree_list        valu: @10      chan: @45     
@1368   tree_list        valu: @1372    chan: @1373   
@1369   identifier_node  strg: __builtin_ia32_vec_ext_v2di 
                         lngt: 27      
@1370   function_type    size: @9       algn: 8        retn: @434    
                         prms: @1374   
@1371   function_decl    name: @1375    type: @1376    srcp: <built-in>:0      
                         note: artificial              chan: @1377   
                         lang: C        body: undefined 
                         link: extern  
@1372   vector_type      size: @254     algn: 128     
@1373   tree_list        valu: @10      chan: @45     
@1374   tree_list        valu: @1378    chan: @1379   
@1375   identifier_node  strg: __builtin_ia32_vec_ext_v2df 
                         lngt: 27      
@1376   function_type    size: @9       algn: 8        retn: @605    
                         prms: @1380   
@1377   function_decl    name: @1381    type: @1382    srcp: <built-in>:0      
                         note: artificial              chan: @1383   
                         lang: C        body: undefined 
                         link: extern  
@1378   vector_type      size: @254     algn: 128     
@1379   tree_list        valu: @10      chan: @45     
@1380   tree_list        valu: @1384    chan: @1385   
@1381   identifier_node  strg: __builtin_ia32_vec_init_v8qi 
                         lngt: 28      
@1382   function_type    size: @9       algn: 8        retn: @1386   
                         prms: @1387   
@1383   function_decl    name: @1388    type: @1389    srcp: <built-in>:0      
                         note: artificial              chan: @1390   
                         lang: C        body: undefined 
                         link: extern  
@1384   vector_type      size: @254     algn: 128     
@1385   tree_list        valu: @10      chan: @45     
@1386   vector_type      size: @41      algn: 64      
@1387   tree_list        valu: @63      chan: @1391   
@1388   identifier_node  strg: __builtin_ia32_vec_init_v4hi 
                         lngt: 28      
@1389   function_type    size: @9       algn: 8        retn: @1326   
                         prms: @1392   
@1390   function_decl    name: @1393    type: @1394    srcp: <built-in>:0      
                         note: artificial              chan: @1395   
                         lang: C        body: undefined 
                         link: extern  
@1391   tree_list        valu: @63      chan: @1396   
@1392   tree_list        valu: @572     chan: @1397   
@1393   identifier_node  strg: __builtin_ia32_vec_init_v2si 
                         lngt: 28      
@1394   function_type    size: @9       algn: 8        retn: @1350   
                         prms: @1398   
@1395   function_decl    name: @1399    type: @1400    srcp: <built-in>:0      
                         note: artificial              chan: @1401   
                         lang: C        body: undefined 
                         link: extern  
@1396   tree_list        valu: @63      chan: @1402   
@1397   tree_list        valu: @572     chan: @1403   
@1398   tree_list        valu: @10      chan: @1404   
@1399   identifier_node  strg: __builtin_ia32_lddqu    lngt: 20      
@1400   function_type    size: @9       algn: 8        retn: @1344   
                         prms: @1405   
@1401   function_decl    name: @1406    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1408   
                         lang: C        body: undefined 
                         link: extern  
@1402   tree_list        valu: @63      chan: @1409   
@1403   tree_list        valu: @572     chan: @1410   
@1404   tree_list        valu: @10      chan: @45     
@1405   tree_list        valu: @89      chan: @45     
@1406   identifier_node  strg: __builtin_ia32_movsldup lngt: 23      
@1407   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1411   
@1408   function_decl    name: @1412    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1413   
                         lang: C        body: undefined 
                         link: extern  
@1409   tree_list        valu: @63      chan: @1414   
@1410   tree_list        valu: @572     chan: @45     
@1411   tree_list        valu: @1372    chan: @45     
@1412   identifier_node  strg: __builtin_ia32_movshdup lngt: 23      
@1413   function_decl    name: @1415    type: @1416    srcp: <built-in>:0      
                         note: artificial              chan: @1417   
                         lang: C        body: undefined 
                         link: extern  
@1414   tree_list        valu: @63      chan: @1418   
@1415   identifier_node  strg: __builtin_ia32_mwait    lngt: 20      
@1416   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1419   
@1417   function_decl    name: @1420    type: @1421    srcp: <built-in>:0      
                         note: artificial              chan: @1422   
                         lang: C        body: undefined 
                         link: extern  
@1418   tree_list        valu: @63      chan: @1423   
@1419   tree_list        valu: @243     chan: @1424   
@1420   identifier_node  strg: __builtin_ia32_monitor  lngt: 22      
@1421   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1425   
@1422   function_decl    name: @1426    type: @1427    srcp: <built-in>:0      
                         note: artificial              chan: @1428   
                         lang: C        body: undefined 
                         link: extern  
@1423   tree_list        valu: @63      chan: @45     
@1424   tree_list        valu: @243     chan: @45     
@1425   tree_list        valu: @1429    chan: @1430   
@1426   identifier_node  strg: __builtin_ia32_pmaddwd128 
                         lngt: 25      
@1427   function_type    size: @9       algn: 8        retn: @1366   
                         prms: @1431   
@1428   function_decl    name: @1432    type: @1433    srcp: <built-in>:0      
                         note: artificial              chan: @1434   
                         lang: C        body: undefined 
                         link: extern  
@1429   pointer_type     size: @18      algn: 32       ptd : @1435   
@1430   tree_list        valu: @243     chan: @1436   
@1431   tree_list        valu: @1332    chan: @1437   
@1432   identifier_node  strg: __builtin_ia32_psradi128 
                         lngt: 24      
@1433   function_type    size: @9       algn: 8        retn: @1366   
                         prms: @1438   
@1434   function_decl    name: @1439    type: @1440    srcp: <built-in>:0      
                         note: artificial              chan: @1441   
                         lang: C        body: undefined 
                         link: extern  
@1435   void_type        qual: c        unql: @19      algn: 8       
@1436   tree_list        valu: @243     chan: @45     
@1437   tree_list        valu: @1332    chan: @45     
@1438   tree_list        valu: @1366    chan: @1442   
@1439   identifier_node  strg: __builtin_ia32_psrawi128 
                         lngt: 24      
@1440   function_type    size: @9       algn: 8        retn: @1332   
                         prms: @1443   
@1441   function_decl    name: @1444    type: @1445    srcp: <built-in>:0      
                         note: artificial              chan: @1446   
                         lang: C        body: undefined 
                         link: extern  
@1442   tree_list        valu: @10      chan: @45     
@1443   tree_list        valu: @1332    chan: @1447   
@1444   identifier_node  strg: __builtin_ia32_psrlqi128 
                         lngt: 24      
@1445   function_type    size: @9       algn: 8        retn: @1378   
                         prms: @1448   
@1446   function_decl    name: @1449    type: @1433    srcp: <built-in>:0      
                         note: artificial              chan: @1450   
                         lang: C        body: undefined 
                         link: extern  
@1447   tree_list        valu: @10      chan: @45     
@1448   tree_list        valu: @1378    chan: @1451   
@1449   identifier_node  strg: __builtin_ia32_psrldi128 
                         lngt: 24      
@1450   function_decl    name: @1452    type: @1440    srcp: <built-in>:0      
                         note: artificial              chan: @1453   
                         lang: C        body: undefined 
                         link: extern  
@1451   tree_list        valu: @10      chan: @45     
@1452   identifier_node  strg: __builtin_ia32_psrlwi128 
                         lngt: 24      
@1453   function_decl    name: @1454    type: @1445    srcp: <built-in>:0      
                         note: artificial              chan: @1455   
                         lang: C        body: undefined 
                         link: extern  
@1454   identifier_node  strg: __builtin_ia32_psrldqi128 
                         lngt: 25      
@1455   function_decl    name: @1456    type: @1445    srcp: <built-in>:0      
                         note: artificial              chan: @1457   
                         lang: C        body: undefined 
                         link: extern  
@1456   identifier_node  strg: __builtin_ia32_psllqi128 
                         lngt: 24      
@1457   function_decl    name: @1458    type: @1433    srcp: <built-in>:0      
                         note: artificial              chan: @1459   
                         lang: C        body: undefined 
                         link: extern  
@1458   identifier_node  strg: __builtin_ia32_pslldi128 
                         lngt: 24      
@1459   function_decl    name: @1460    type: @1440    srcp: <built-in>:0      
                         note: artificial              chan: @1461   
                         lang: C        body: undefined 
                         link: extern  
@1460   identifier_node  strg: __builtin_ia32_psllwi128 
                         lngt: 24      
@1461   function_decl    name: @1462    type: @1445    srcp: <built-in>:0      
                         note: artificial              chan: @1463   
                         lang: C        body: undefined 
                         link: extern  
@1462   identifier_node  strg: __builtin_ia32_pslldqi128 
                         lngt: 25      
@1463   function_decl    name: @1464    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1466   
                         lang: C        body: undefined 
                         link: extern  
@1464   identifier_node  strg: __builtin_ia32_psrad128 lngt: 23      
@1465   function_type    size: @9       algn: 8        retn: @1366   
                         prms: @1467   
@1466   function_decl    name: @1468    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1470   
                         lang: C        body: undefined 
                         link: extern  
@1467   tree_list        valu: @1366    chan: @1471   
@1468   identifier_node  strg: __builtin_ia32_psraw128 lngt: 23      
@1469   function_type    size: @9       algn: 8        retn: @1332   
                         prms: @1472   
@1470   function_decl    name: @1473    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1475   
                         lang: C        body: undefined 
                         link: extern  
@1471   tree_list        valu: @1366    chan: @45     
@1472   tree_list        valu: @1332    chan: @1476   
@1473   identifier_node  strg: __builtin_ia32_psrlq128 lngt: 23      
@1474   function_type    size: @9       algn: 8        retn: @1378   
                         prms: @1477   
@1475   function_decl    name: @1478    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1479   
                         lang: C        body: undefined 
                         link: extern  
@1476   tree_list        valu: @1332    chan: @45     
@1477   tree_list        valu: @1378    chan: @1480   
@1478   identifier_node  strg: __builtin_ia32_psrld128 lngt: 23      
@1479   function_decl    name: @1481    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1482   
                         lang: C        body: undefined 
                         link: extern  
@1480   tree_list        valu: @1378    chan: @45     
@1481   identifier_node  strg: __builtin_ia32_psrlw128 lngt: 23      
@1482   function_decl    name: @1483    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1484   
                         lang: C        body: undefined 
                         link: extern  
@1483   identifier_node  strg: __builtin_ia32_psllq128 lngt: 23      
@1484   function_decl    name: @1485    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1486   
                         lang: C        body: undefined 
                         link: extern  
@1485   identifier_node  strg: __builtin_ia32_pslld128 lngt: 23      
@1486   function_decl    name: @1487    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1488   
                         lang: C        body: undefined 
                         link: extern  
@1487   identifier_node  strg: __builtin_ia32_psllw128 lngt: 23      
@1488   function_decl    name: @1489    type: @1490    srcp: <built-in>:0      
                         note: artificial              chan: @1491   
                         lang: C        body: undefined 
                         link: extern  
@1489   identifier_node  strg: __builtin_ia32_pmuludq128 
                         lngt: 25      
@1490   function_type    size: @9       algn: 8        retn: @1378   
                         prms: @1492   
@1491   function_decl    name: @1493    type: @1494    srcp: <built-in>:0      
                         note: artificial              chan: @1495   
                         lang: C        body: undefined 
                         link: extern  
@1492   tree_list        valu: @1366    chan: @1496   
@1493   identifier_node  strg: __builtin_ia32_pmuludq  lngt: 22      
@1494   function_type    size: @9       algn: 8        retn: @503    
                         prms: @1497   
@1495   function_decl    name: @1498    type: @1499    srcp: <built-in>:0      
                         note: artificial              chan: @1500   
                         lang: C        body: undefined 
                         link: extern  
@1496   tree_list        valu: @1366    chan: @45     
@1497   tree_list        valu: @1350    chan: @1501   
@1498   identifier_node  strg: __builtin_ia32_storedqu lngt: 23      
@1499   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1502   
@1500   function_decl    name: @1503    type: @1400    srcp: <built-in>:0      
                         note: artificial              chan: @1504   
                         lang: C        body: undefined 
                         link: extern  
@1501   tree_list        valu: @1350    chan: @45     
@1502   tree_list        valu: @47      chan: @1505   
@1503   identifier_node  strg: __builtin_ia32_loaddqu  lngt: 22      
@1504   function_decl    name: @1506    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @1508   
                         lang: C        body: undefined 
                         link: extern  
@1505   tree_list        valu: @1344    chan: @45     
@1506   identifier_node  strg: __builtin_ia32_mfence   lngt: 21      
@1507   function_type    size: @9       algn: 8        retn: @19     
                         prms: @45     
@1508   function_decl    name: @1509    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @1510   
                         lang: C        body: undefined 
                         link: extern  
@1509   identifier_node  strg: __builtin_ia32_lfence   lngt: 21      
@1510   function_decl    name: @1511    type: @1512    srcp: <built-in>:0      
                         note: artificial              chan: @1513   
                         lang: C        body: undefined 
                         link: extern  
@1511   identifier_node  strg: __builtin_ia32_clflush  lngt: 22      
@1512   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1514   
@1513   function_decl    name: @1515    type: @1516    srcp: <built-in>:0      
                         note: artificial              chan: @1517   
                         lang: C        body: undefined 
                         link: extern  
@1514   tree_list        valu: @1429    chan: @45     
@1515   identifier_node  strg: __builtin_ia32_cvtss2sd lngt: 23      
@1516   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1518   
@1517   function_decl    name: @1519    type: @1520    srcp: <built-in>:0      
                         note: artificial              chan: @1521   
                         lang: C        body: undefined 
                         link: extern  
@1518   tree_list        valu: @1384    chan: @1522   
@1519   identifier_node  strg: __builtin_ia32_cvtsd2ss lngt: 23      
@1520   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1523   
@1521   function_decl    name: @1524    type: @1525    srcp: <built-in>:0      
                         note: artificial              chan: @1526   
                         lang: C        body: undefined 
                         link: extern  
@1522   tree_list        valu: @1372    chan: @45     
@1523   tree_list        valu: @1372    chan: @1527   
@1524   identifier_node  strg: __builtin_ia32_cvtsi2sd lngt: 23      
@1525   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1528   
@1526   function_decl    name: @1529    type: @1530    srcp: <built-in>:0      
                         note: artificial              chan: @1531   
                         lang: C        body: undefined 
                         link: extern  
@1527   tree_list        valu: @1384    chan: @45     
@1528   tree_list        valu: @1384    chan: @1532   
@1529   identifier_node  strg: __builtin_ia32_cvttps2dq 
                         lngt: 24      
@1530   function_type    size: @9       algn: 8        retn: @1366   
                         prms: @1533   
@1531   function_decl    name: @1534    type: @1535    srcp: <built-in>:0      
                         note: artificial              chan: @1536   
                         lang: C        body: undefined 
                         link: extern  
@1532   tree_list        valu: @10      chan: @45     
@1533   tree_list        valu: @1372    chan: @45     
@1534   identifier_node  strg: __builtin_ia32_cvtps2pd lngt: 23      
@1535   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1537   
@1536   function_decl    name: @1538    type: @1530    srcp: <built-in>:0      
                         note: artificial              chan: @1539   
                         lang: C        body: undefined 
                         link: extern  
@1537   tree_list        valu: @1372    chan: @45     
@1538   identifier_node  strg: __builtin_ia32_cvtps2dq lngt: 23      
@1539   function_decl    name: @1540    type: @1541    srcp: <built-in>:0      
                         note: artificial              chan: @1542   
                         lang: C        body: undefined 
                         link: extern  
@1540   identifier_node  strg: __builtin_ia32_cvttsd2si 
                         lngt: 24      
@1541   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1543   
@1542   function_decl    name: @1544    type: @1541    srcp: <built-in>:0      
                         note: artificial              chan: @1545   
                         lang: C        body: undefined 
                         link: extern  
@1543   tree_list        valu: @1384    chan: @45     
@1544   identifier_node  strg: __builtin_ia32_cvtsd2si lngt: 23      
@1545   function_decl    name: @1546    type: @1547    srcp: <built-in>:0      
                         note: artificial              chan: @1548   
                         lang: C        body: undefined 
                         link: extern  
@1546   identifier_node  strg: __builtin_ia32_cvtpi2pd lngt: 23      
@1547   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1549   
@1548   function_decl    name: @1550    type: @1551    srcp: <built-in>:0      
                         note: artificial              chan: @1552   
                         lang: C        body: undefined 
                         link: extern  
@1549   tree_list        valu: @1350    chan: @45     
@1550   identifier_node  strg: __builtin_ia32_cvttpd2pi 
                         lngt: 24      
@1551   function_type    size: @9       algn: 8        retn: @1350   
                         prms: @1553   
@1552   function_decl    name: @1554    type: @1555    srcp: <built-in>:0      
                         note: artificial              chan: @1556   
                         lang: C        body: undefined 
                         link: extern  
@1553   tree_list        valu: @1384    chan: @45     
@1554   identifier_node  strg: __builtin_ia32_cvttpd2dq 
                         lngt: 24      
@1555   function_type    size: @9       algn: 8        retn: @1366   
                         prms: @1557   
@1556   function_decl    name: @1558    type: @1559    srcp: <built-in>:0      
                         note: artificial              chan: @1560   
                         lang: C        body: undefined 
                         link: extern  
@1557   tree_list        valu: @1384    chan: @45     
@1558   identifier_node  strg: __builtin_ia32_cvtpd2ps lngt: 23      
@1559   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1561   
@1560   function_decl    name: @1562    type: @1551    srcp: <built-in>:0      
                         note: artificial              chan: @1563   
                         lang: C        body: undefined 
                         link: extern  
@1561   tree_list        valu: @1384    chan: @45     
@1562   identifier_node  strg: __builtin_ia32_cvtpd2pi lngt: 23      
@1563   function_decl    name: @1564    type: @1555    srcp: <built-in>:0      
                         note: artificial              chan: @1565   
                         lang: C        body: undefined 
                         link: extern  
@1564   identifier_node  strg: __builtin_ia32_cvtpd2dq lngt: 23      
@1565   function_decl    name: @1566    type: @1567    srcp: <built-in>:0      
                         note: artificial              chan: @1568   
                         lang: C        body: undefined 
                         link: extern  
@1566   identifier_node  strg: __builtin_ia32_cvtdq2ps lngt: 23      
@1567   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1569   
@1568   function_decl    name: @1570    type: @1571    srcp: <built-in>:0      
                         note: artificial              chan: @1572   
                         lang: C        body: undefined 
                         link: extern  
@1569   tree_list        valu: @1366    chan: @45     
@1570   identifier_node  strg: __builtin_ia32_cvtdq2pd lngt: 23      
@1571   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1573   
@1572   function_decl    name: @1574    type: @1575    srcp: <built-in>:0      
                         note: artificial              chan: @1576   
                         lang: C        body: undefined 
                         link: extern  
@1573   tree_list        valu: @1366    chan: @45     
@1574   identifier_node  strg: __builtin_ia32_shufpd   lngt: 21      
@1575   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1577   
@1576   function_decl    name: @1578    type: @1579    srcp: <built-in>:0      
                         note: artificial              chan: @1580   
                         lang: C        body: undefined 
                         link: extern  
@1577   tree_list        valu: @1384    chan: @1581   
@1578   identifier_node  strg: __builtin_ia32_sqrtsd   lngt: 21      
@1579   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1582   
@1580   function_decl    name: @1583    type: @1579    srcp: <built-in>:0      
                         note: artificial              chan: @1584   
                         lang: C        body: undefined 
                         link: extern  
@1581   tree_list        valu: @1384    chan: @1585   
@1582   tree_list        valu: @1384    chan: @45     
@1583   identifier_node  strg: __builtin_ia32_sqrtpd   lngt: 21      
@1584   function_decl    name: @1586    type: @1587    srcp: <built-in>:0      
                         note: artificial              chan: @1588   
                         lang: C        body: undefined 
                         link: extern  
@1585   tree_list        valu: @10      chan: @45     
@1586   identifier_node  strg: __builtin_ia32_psadbw128 
                         lngt: 24      
@1587   function_type    size: @9       algn: 8        retn: @1378   
                         prms: @1589   
@1588   function_decl    name: @1590    type: @1440    srcp: <built-in>:0      
                         note: artificial              chan: @1591   
                         lang: C        body: undefined 
                         link: extern  
@1589   tree_list        valu: @1344    chan: @1592   
@1590   identifier_node  strg: __builtin_ia32_pshufhw  lngt: 22      
@1591   function_decl    name: @1593    type: @1440    srcp: <built-in>:0      
                         note: artificial              chan: @1594   
                         lang: C        body: undefined 
                         link: extern  
@1592   tree_list        valu: @1344    chan: @45     
@1593   identifier_node  strg: __builtin_ia32_pshuflw  lngt: 22      
@1594   function_decl    name: @1595    type: @1433    srcp: <built-in>:0      
                         note: artificial              chan: @1596   
                         lang: C        body: undefined 
                         link: extern  
@1595   identifier_node  strg: __builtin_ia32_pshufd   lngt: 21      
@1596   function_decl    name: @1597    type: @1598    srcp: <built-in>:0      
                         note: artificial              chan: @1599   
                         lang: C        body: undefined 
                         link: extern  
@1597   identifier_node  strg: __builtin_ia32_movntdq  lngt: 22      
@1598   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1600   
@1599   function_decl    name: @1601    type: @1602    srcp: <built-in>:0      
                         note: artificial              chan: @1603   
                         lang: C        body: undefined 
                         link: extern  
@1600   tree_list        valu: @1604    chan: @1605   
@1601   identifier_node  strg: __builtin_ia32_movntpd  lngt: 22      
@1602   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1606   
@1603   function_decl    name: @1607    type: @1608    srcp: <built-in>:0      
                         note: artificial              chan: @1609   
                         lang: C        body: undefined 
                         link: extern  
@1604   pointer_type     size: @18      algn: 32       ptd : @1378   
@1605   tree_list        valu: @1378    chan: @45     
@1606   tree_list        valu: @1610    chan: @1611   
@1607   identifier_node  strg: __builtin_ia32_movnti   lngt: 21      
@1608   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1612   
@1609   function_decl    name: @1613    type: @1614    srcp: <built-in>:0      
                         note: artificial              chan: @1615   
                         lang: C        body: undefined 
                         link: extern  
@1610   pointer_type     size: @18      algn: 32       ptd : @605    
@1611   tree_list        valu: @1384    chan: @45     
@1612   tree_list        valu: @1616    chan: @1617   
@1613   identifier_node  strg: __builtin_ia32_pmovmskb128 
                         lngt: 26      
@1614   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1618   
@1615   function_decl    name: @1619    type: @1541    srcp: <built-in>:0      
                         note: artificial              chan: @1620   
                         lang: C        body: undefined 
                         link: extern  
@1616   pointer_type     size: @18      algn: 32       ptd : @10     
@1617   tree_list        valu: @10      chan: @45     
@1618   tree_list        valu: @1344    chan: @45     
@1619   identifier_node  strg: __builtin_ia32_movmskpd lngt: 23      
@1620   function_decl    name: @1621    type: @1622    srcp: <built-in>:0      
                         note: artificial              chan: @1623   
                         lang: C        body: undefined 
                         link: extern  
@1621   identifier_node  strg: __builtin_ia32_loadlpd  lngt: 22      
@1622   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1624   
@1623   function_decl    name: @1625    type: @1622    srcp: <built-in>:0      
                         note: artificial              chan: @1626   
                         lang: C        body: undefined 
                         link: extern  
@1624   tree_list        valu: @1384    chan: @1627   
@1625   identifier_node  strg: __builtin_ia32_loadhpd  lngt: 22      
@1626   function_decl    name: @1628    type: @1602    srcp: <built-in>:0      
                         note: artificial              chan: @1629   
                         lang: C        body: undefined 
                         link: extern  
@1627   tree_list        valu: @1630    chan: @45     
@1628   identifier_node  strg: __builtin_ia32_storeupd lngt: 23      
@1629   function_decl    name: @1631    type: @1632    srcp: <built-in>:0      
                         note: artificial              chan: @1633   
                         lang: C        body: undefined 
                         link: extern  
@1630   pointer_type     size: @18      algn: 32       ptd : @1634   
@1631   identifier_node  strg: __builtin_ia32_loadupd  lngt: 22      
@1632   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1635   
@1633   function_decl    name: @1636    type: @1637    srcp: <built-in>:0      
                         note: artificial              chan: @1638   
                         lang: C        body: undefined 
                         link: extern  
@1634   real_type        qual: c        name: @612     unql: @605    
                         size: @41      algn: 64       prec: 64      
@1635   tree_list        valu: @1630    chan: @45     
@1636   identifier_node  strg: __builtin_ia32_maskmovdqu 
                         lngt: 25      
@1637   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1639   
@1638   function_decl    name: @1640    type: @1641    srcp: <built-in>:0      
                         note: artificial              chan: @1642   
                         lang: C        body: undefined 
                         link: extern  
@1639   tree_list        valu: @1344    chan: @1643   
@1640   identifier_node  strg: __builtin_ia32_shufps   lngt: 21      
@1641   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1644   
@1642   function_decl    name: @1645    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1646   
                         lang: C        body: undefined 
                         link: extern  
@1643   tree_list        valu: @1344    chan: @1647   
@1644   tree_list        valu: @1372    chan: @1648   
@1645   identifier_node  strg: __builtin_ia32_sqrtss   lngt: 21      
@1646   function_decl    name: @1649    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1650   
                         lang: C        body: undefined 
                         link: extern  
@1647   tree_list        valu: @47      chan: @45     
@1648   tree_list        valu: @1372    chan: @1651   
@1649   identifier_node  strg: __builtin_ia32_sqrtps   lngt: 21      
@1650   function_decl    name: @1652    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1653   
                         lang: C        body: undefined 
                         link: extern  
@1651   tree_list        valu: @10      chan: @45     
@1652   identifier_node  strg: __builtin_ia32_rsqrtss  lngt: 22      
@1653   function_decl    name: @1654    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1655   
                         lang: C        body: undefined 
                         link: extern  
@1654   identifier_node  strg: __builtin_ia32_rsqrtps  lngt: 22      
@1655   function_decl    name: @1656    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1657   
                         lang: C        body: undefined 
                         link: extern  
@1656   identifier_node  strg: __builtin_ia32_rcpss    lngt: 20      
@1657   function_decl    name: @1658    type: @1407    srcp: <built-in>:0      
                         note: artificial              chan: @1659   
                         lang: C        body: undefined 
                         link: extern  
@1658   identifier_node  strg: __builtin_ia32_rcpps    lngt: 20      
@1659   function_decl    name: @1660    type: @1661    srcp: <built-in>:0      
                         note: artificial              chan: @1662   
                         lang: C        body: undefined 
                         link: extern  
@1660   identifier_node  strg: __builtin_ia32_psadbw   lngt: 21      
@1661   function_type    size: @9       algn: 8        retn: @503    
                         prms: @1663   
@1662   function_decl    name: @1664    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @1665   
                         lang: C        body: undefined 
                         link: extern  
@1663   tree_list        valu: @1386    chan: @1666   
@1664   identifier_node  strg: __builtin_ia32_sfence   lngt: 21      
@1665   function_decl    name: @1667    type: @1668    srcp: <built-in>:0      
                         note: artificial              chan: @1669   
                         lang: C        body: undefined 
                         link: extern  
@1666   tree_list        valu: @1386    chan: @45     
@1667   identifier_node  strg: __builtin_ia32_movntq   lngt: 21      
@1668   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1670   
@1669   function_decl    name: @1671    type: @1672    srcp: <built-in>:0      
                         note: artificial              chan: @1673   
                         lang: C        body: undefined 
                         link: extern  
@1670   tree_list        valu: @1674    chan: @1675   
@1671   identifier_node  strg: __builtin_ia32_movntps  lngt: 22      
@1672   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1676   
@1673   function_decl    name: @1677    type: @1678    srcp: <built-in>:0      
                         note: artificial              chan: @1679   
                         lang: C        body: undefined 
                         link: extern  
@1674   pointer_type     size: @18      algn: 32       ptd : @503    
@1675   tree_list        valu: @503     chan: @45     
@1676   tree_list        valu: @1680    chan: @1681   
@1677   identifier_node  strg: __builtin_ia32_pmovmskb lngt: 23      
@1678   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1682   
@1679   function_decl    name: @1683    type: @1684    srcp: <built-in>:0      
                         note: artificial              chan: @1685   
                         lang: C        body: undefined 
                         link: extern  
@1680   pointer_type     size: @18      algn: 32       ptd : @100    
@1681   tree_list        valu: @1372    chan: @45     
@1682   tree_list        valu: @1386    chan: @45     
@1683   identifier_node  strg: __builtin_ia32_movmskps lngt: 23      
@1684   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1686   
@1685   function_decl    name: @1687    type: @1688    srcp: <built-in>:0      
                         note: artificial              chan: @1689   
                         lang: C        body: undefined 
                         link: extern  
@1686   tree_list        valu: @1372    chan: @45     
@1687   identifier_node  strg: __builtin_ia32_storelps lngt: 23      
@1688   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1690   
@1689   function_decl    name: @1691    type: @1688    srcp: <built-in>:0      
                         note: artificial              chan: @1692   
                         lang: C        body: undefined 
                         link: extern  
@1690   tree_list        valu: @1693    chan: @1694   
@1691   identifier_node  strg: __builtin_ia32_storehps lngt: 23      
@1692   function_decl    name: @1695    type: @1696    srcp: <built-in>:0      
                         note: artificial              chan: @1697   
                         lang: C        body: undefined 
                         link: extern  
@1693   pointer_type     size: @18      algn: 32       ptd : @1350   
@1694   tree_list        valu: @1372    chan: @45     
@1695   identifier_node  strg: __builtin_ia32_loadlps  lngt: 22      
@1696   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1698   
@1697   function_decl    name: @1699    type: @1696    srcp: <built-in>:0      
                         note: artificial              chan: @1700   
                         lang: C        body: undefined 
                         link: extern  
@1698   tree_list        valu: @1372    chan: @1701   
@1699   identifier_node  strg: __builtin_ia32_loadhps  lngt: 22      
@1700   function_decl    name: @1702    type: @1672    srcp: <built-in>:0      
                         note: artificial              chan: @1703   
                         lang: C        body: undefined 
                         link: extern  
@1701   tree_list        valu: @1693    chan: @45     
@1702   identifier_node  strg: __builtin_ia32_storeups lngt: 23      
@1703   function_decl    name: @1704    type: @1705    srcp: <built-in>:0      
                         note: artificial              chan: @1706   
                         lang: C        body: undefined 
                         link: extern  
@1704   identifier_node  strg: __builtin_ia32_loadups  lngt: 22      
@1705   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1707   
@1706   function_decl    name: @1708    type: @1709    srcp: <built-in>:0      
                         note: artificial              chan: @1710   
                         lang: C        body: undefined 
                         link: extern  
@1707   tree_list        valu: @1711    chan: @45     
@1708   identifier_node  strg: __builtin_ia32_maskmovq lngt: 23      
@1709   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1712   
@1710   function_decl    name: @1713    type: @1684    srcp: <built-in>:0      
                         note: artificial              chan: @1714   
                         lang: C        body: undefined 
                         link: extern  
@1711   pointer_type     size: @18      algn: 32       ptd : @1715   
@1712   tree_list        valu: @1386    chan: @1716   
@1713   identifier_node  strg: __builtin_ia32_cvttss2si 
                         lngt: 24      
@1714   function_decl    name: @1717    type: @1718    srcp: <built-in>:0      
                         note: artificial              chan: @1719   
                         lang: C        body: undefined 
                         link: extern  
@1715   real_type        qual: c        name: @117     unql: @100    
                         size: @18      algn: 32       prec: 32      
@1716   tree_list        valu: @1386    chan: @1720   
@1717   identifier_node  strg: __builtin_ia32_cvttps2pi 
                         lngt: 24      
@1718   function_type    size: @9       algn: 8        retn: @1350   
                         prms: @1721   
@1719   function_decl    name: @1722    type: @1684    srcp: <built-in>:0      
                         note: artificial              chan: @1723   
                         lang: C        body: undefined 
                         link: extern  
@1720   tree_list        valu: @47      chan: @45     
@1721   tree_list        valu: @1372    chan: @45     
@1722   identifier_node  strg: __builtin_ia32_cvtss2si lngt: 23      
@1723   function_decl    name: @1724    type: @1725    srcp: <built-in>:0      
                         note: artificial              chan: @1726   
                         lang: C        body: undefined 
                         link: extern  
@1724   identifier_node  strg: __builtin_ia32_cvtsi2ss lngt: 23      
@1725   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1727   
@1726   function_decl    name: @1728    type: @1718    srcp: <built-in>:0      
                         note: artificial              chan: @1729   
                         lang: C        body: undefined 
                         link: extern  
@1727   tree_list        valu: @1372    chan: @1730   
@1728   identifier_node  strg: __builtin_ia32_cvtps2pi lngt: 23      
@1729   function_decl    name: @1731    type: @1732    srcp: <built-in>:0      
                         note: artificial              chan: @1733   
                         lang: C        body: undefined 
                         link: extern  
@1730   tree_list        valu: @10      chan: @45     
@1731   identifier_node  strg: __builtin_ia32_cvtpi2ps lngt: 23      
@1732   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1734   
@1733   function_decl    name: @1735    type: @1262    srcp: <built-in>:0      
                         note: artificial              chan: @1736   
                         lang: C        body: undefined 
                         link: extern  
@1734   tree_list        valu: @1372    chan: @1737   
@1735   identifier_node  strg: __builtin_ia32_stmxcsr  lngt: 22      
@1736   function_decl    name: @1738    type: @1739    srcp: <built-in>:0      
                         note: artificial              chan: @1740   
                         lang: C        body: undefined 
                         link: extern  
@1737   tree_list        valu: @1350    chan: @45     
@1738   identifier_node  strg: __builtin_ia32_ldmxcsr  lngt: 22      
@1739   function_type    size: @9       algn: 8        retn: @19     
                         prms: @1741   
@1740   function_decl    name: @1742    type: @1743    srcp: <built-in>:0      
                         note: artificial              chan: @1744   
                         lang: C        body: undefined 
                         link: extern  
@1741   tree_list        valu: @243     chan: @45     
@1742   identifier_node  strg: __builtin_ia32_packuswb lngt: 23      
@1743   function_type    size: @9       algn: 8        retn: @1386   
                         prms: @1745   
@1744   function_decl    name: @1746    type: @1747    srcp: <built-in>:0      
                         note: artificial              chan: @1748   
                         lang: C        body: undefined 
                         link: extern  
@1745   tree_list        valu: @1326    chan: @1749   
@1746   identifier_node  strg: __builtin_ia32_packssdw lngt: 23      
@1747   function_type    size: @9       algn: 8        retn: @1326   
                         prms: @1750   
@1748   function_decl    name: @1751    type: @1743    srcp: <built-in>:0      
                         note: artificial              chan: @1752   
                         lang: C        body: undefined 
                         link: extern  
@1749   tree_list        valu: @1326    chan: @45     
@1750   tree_list        valu: @1350    chan: @1753   
@1751   identifier_node  strg: __builtin_ia32_packsswb lngt: 23      
@1752   function_decl    name: @1754    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1756   
                         lang: C        body: undefined 
                         link: extern  
@1753   tree_list        valu: @1350    chan: @45     
@1754   identifier_node  strg: __builtin_ia32_ucomisdneq 
                         lngt: 25      
@1755   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1757   
@1756   function_decl    name: @1758    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1759   
                         lang: C        body: undefined 
                         link: extern  
@1757   tree_list        valu: @1384    chan: @1760   
@1758   identifier_node  strg: __builtin_ia32_ucomisdge 
                         lngt: 24      
@1759   function_decl    name: @1761    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1762   
                         lang: C        body: undefined 
                         link: extern  
@1760   tree_list        valu: @1384    chan: @45     
@1761   identifier_node  strg: __builtin_ia32_ucomisdgt 
                         lngt: 24      
@1762   function_decl    name: @1763    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1764   
                         lang: C        body: undefined 
                         link: extern  
@1763   identifier_node  strg: __builtin_ia32_ucomisdle 
                         lngt: 24      
@1764   function_decl    name: @1765    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1766   
                         lang: C        body: undefined 
                         link: extern  
@1765   identifier_node  strg: __builtin_ia32_ucomisdlt 
                         lngt: 24      
@1766   function_decl    name: @1767    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1768   
                         lang: C        body: undefined 
                         link: extern  
@1767   identifier_node  strg: __builtin_ia32_ucomisdeq 
                         lngt: 24      
@1768   function_decl    name: @1769    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1770   
                         lang: C        body: undefined 
                         link: extern  
@1769   identifier_node  strg: __builtin_ia32_comisdneq 
                         lngt: 24      
@1770   function_decl    name: @1771    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1772   
                         lang: C        body: undefined 
                         link: extern  
@1771   identifier_node  strg: __builtin_ia32_comisdge lngt: 23      
@1772   function_decl    name: @1773    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1774   
                         lang: C        body: undefined 
                         link: extern  
@1773   identifier_node  strg: __builtin_ia32_comisdgt lngt: 23      
@1774   function_decl    name: @1775    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1776   
                         lang: C        body: undefined 
                         link: extern  
@1775   identifier_node  strg: __builtin_ia32_comisdle lngt: 23      
@1776   function_decl    name: @1777    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1778   
                         lang: C        body: undefined 
                         link: extern  
@1777   identifier_node  strg: __builtin_ia32_comisdlt lngt: 23      
@1778   function_decl    name: @1779    type: @1755    srcp: <built-in>:0      
                         note: artificial              chan: @1780   
                         lang: C        body: undefined 
                         link: extern  
@1779   identifier_node  strg: __builtin_ia32_comisdeq lngt: 23      
@1780   function_decl    name: @1781    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1783   
                         lang: C        body: undefined 
                         link: extern  
@1781   identifier_node  strg: __builtin_ia32_ucomineq lngt: 23      
@1782   function_type    size: @9       algn: 8        retn: @10     
                         prms: @1784   
@1783   function_decl    name: @1785    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1786   
                         lang: C        body: undefined 
                         link: extern  
@1784   tree_list        valu: @1372    chan: @1787   
@1785   identifier_node  strg: __builtin_ia32_ucomige  lngt: 22      
@1786   function_decl    name: @1788    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1789   
                         lang: C        body: undefined 
                         link: extern  
@1787   tree_list        valu: @1372    chan: @45     
@1788   identifier_node  strg: __builtin_ia32_ucomigt  lngt: 22      
@1789   function_decl    name: @1790    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1791   
                         lang: C        body: undefined 
                         link: extern  
@1790   identifier_node  strg: __builtin_ia32_ucomile  lngt: 22      
@1791   function_decl    name: @1792    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1793   
                         lang: C        body: undefined 
                         link: extern  
@1792   identifier_node  strg: __builtin_ia32_ucomilt  lngt: 22      
@1793   function_decl    name: @1794    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1795   
                         lang: C        body: undefined 
                         link: extern  
@1794   identifier_node  strg: __builtin_ia32_ucomieq  lngt: 22      
@1795   function_decl    name: @1796    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1797   
                         lang: C        body: undefined 
                         link: extern  
@1796   identifier_node  strg: __builtin_ia32_comineq  lngt: 22      
@1797   function_decl    name: @1798    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1799   
                         lang: C        body: undefined 
                         link: extern  
@1798   identifier_node  strg: __builtin_ia32_comige   lngt: 21      
@1799   function_decl    name: @1800    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1801   
                         lang: C        body: undefined 
                         link: extern  
@1800   identifier_node  strg: __builtin_ia32_comigt   lngt: 21      
@1801   function_decl    name: @1802    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1803   
                         lang: C        body: undefined 
                         link: extern  
@1802   identifier_node  strg: __builtin_ia32_comile   lngt: 21      
@1803   function_decl    name: @1804    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1805   
                         lang: C        body: undefined 
                         link: extern  
@1804   identifier_node  strg: __builtin_ia32_comilt   lngt: 21      
@1805   function_decl    name: @1806    type: @1782    srcp: <built-in>:0      
                         note: artificial              chan: @1807   
                         lang: C        body: undefined 
                         link: extern  
@1806   identifier_node  strg: __builtin_ia32_comieq   lngt: 21      
@1807   function_decl    name: @1808    type: @1809    srcp: <built-in>:0      
                         note: artificial              chan: @1810   
                         lang: C        body: undefined 
                         link: extern  
@1808   identifier_node  strg: __builtin_ia32_pmaddwd  lngt: 22      
@1809   function_type    size: @9       algn: 8        retn: @1350   
                         prms: @1811   
@1810   function_decl    name: @1812    type: @1813    srcp: <built-in>:0      
                         note: artificial              chan: @1814   
                         lang: C        body: undefined 
                         link: extern  
@1811   tree_list        valu: @1326    chan: @1815   
@1812   identifier_node  strg: __builtin_ia32_pshufw   lngt: 21      
@1813   function_type    size: @9       algn: 8        retn: @1326   
                         prms: @1816   
@1814   function_decl    name: @1817    type: @1818    srcp: <built-in>:0      
                         note: artificial              chan: @1819   
                         lang: C        body: undefined 
                         link: extern  
@1815   tree_list        valu: @1326    chan: @45     
@1816   tree_list        valu: @1326    chan: @1820   
@1817   identifier_node  strg: __builtin_ia32_psrad    lngt: 20      
@1818   function_type    size: @9       algn: 8        retn: @1350   
                         prms: @1821   
@1819   function_decl    name: @1822    type: @1823    srcp: <built-in>:0      
                         note: artificial              chan: @1824   
                         lang: C        body: undefined 
                         link: extern  
@1820   tree_list        valu: @10      chan: @45     
@1821   tree_list        valu: @1350    chan: @1825   
@1822   identifier_node  strg: __builtin_ia32_psraw    lngt: 20      
@1823   function_type    size: @9       algn: 8        retn: @1326   
                         prms: @1826   
@1824   function_decl    name: @1827    type: @1828    srcp: <built-in>:0      
                         note: artificial              chan: @1829   
                         lang: C        body: undefined 
                         link: extern  
@1825   tree_list        valu: @503     chan: @45     
@1826   tree_list        valu: @1326    chan: @1830   
@1827   identifier_node  strg: __builtin_ia32_psrlq    lngt: 20      
@1828   function_type    size: @9       algn: 8        retn: @503    
                         prms: @1831   
@1829   function_decl    name: @1832    type: @1818    srcp: <built-in>:0      
                         note: artificial              chan: @1833   
                         lang: C        body: undefined 
                         link: extern  
@1830   tree_list        valu: @503     chan: @45     
@1831   tree_list        valu: @503     chan: @1834   
@1832   identifier_node  strg: __builtin_ia32_psrld    lngt: 20      
@1833   function_decl    name: @1835    type: @1823    srcp: <built-in>:0      
                         note: artificial              chan: @1836   
                         lang: C        body: undefined 
                         link: extern  
@1834   tree_list        valu: @503     chan: @45     
@1835   identifier_node  strg: __builtin_ia32_psrlw    lngt: 20      
@1836   function_decl    name: @1837    type: @1828    srcp: <built-in>:0      
                         note: artificial              chan: @1838   
                         lang: C        body: undefined 
                         link: extern  
@1837   identifier_node  strg: __builtin_ia32_psllq    lngt: 20      
@1838   function_decl    name: @1839    type: @1818    srcp: <built-in>:0      
                         note: artificial              chan: @1840   
                         lang: C        body: undefined 
                         link: extern  
@1839   identifier_node  strg: __builtin_ia32_pslld    lngt: 20      
@1840   function_decl    name: @1841    type: @1823    srcp: <built-in>:0      
                         note: artificial              chan: @1842   
                         lang: C        body: undefined 
                         link: extern  
@1841   identifier_node  strg: __builtin_ia32_psllw    lngt: 20      
@1842   function_decl    name: @1843    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @1844   
                         lang: C        body: undefined 
                         link: extern  
@1843   identifier_node  strg: __builtin_ia32_emms     lngt: 19      
@1844   function_decl    name: @1845    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1847   
                         lang: C        body: undefined 
                         link: extern  
@1845   identifier_node  strg: __builtin_ia32_hsubpd   lngt: 21      
@1846   function_type    size: @9       algn: 8        retn: @1384   
                         prms: @1848   
@1847   function_decl    name: @1849    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @1851   
                         lang: C        body: undefined 
                         link: extern  
@1848   tree_list        valu: @1384    chan: @1852   
@1849   identifier_node  strg: __builtin_ia32_hsubps   lngt: 21      
@1850   function_type    size: @9       algn: 8        retn: @1372   
                         prms: @1853   
@1851   function_decl    name: @1854    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1855   
                         lang: C        body: undefined 
                         link: extern  
@1852   tree_list        valu: @1384    chan: @45     
@1853   tree_list        valu: @1372    chan: @1856   
@1854   identifier_node  strg: __builtin_ia32_haddpd   lngt: 21      
@1855   function_decl    name: @1857    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @1858   
                         lang: C        body: undefined 
                         link: extern  
@1856   tree_list        valu: @1372    chan: @45     
@1857   identifier_node  strg: __builtin_ia32_haddps   lngt: 21      
@1858   function_decl    name: @1859    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1860   
                         lang: C        body: undefined 
                         link: extern  
@1859   identifier_node  strg: __builtin_ia32_addsubpd lngt: 23      
@1860   function_decl    name: @1861    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @1862   
                         lang: C        body: undefined 
                         link: extern  
@1861   identifier_node  strg: __builtin_ia32_addsubps lngt: 23      
@1862   function_decl    name: @1863    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1864   
                         lang: C        body: undefined 
                         link: extern  
@1863   identifier_node  strg: __builtin_ia32_pmulhuw128 
                         lngt: 25      
@1864   function_decl    name: @1865    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1866   
                         lang: C        body: undefined 
                         link: extern  
@1865   identifier_node  strg: __builtin_ia32_packuswb128 
                         lngt: 26      
@1866   function_decl    name: @1867    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1868   
                         lang: C        body: undefined 
                         link: extern  
@1867   identifier_node  strg: __builtin_ia32_packssdw128 
                         lngt: 26      
@1868   function_decl    name: @1869    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1870   
                         lang: C        body: undefined 
                         link: extern  
@1869   identifier_node  strg: __builtin_ia32_packsswb128 
                         lngt: 26      
@1870   function_decl    name: @1871    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1872   
                         lang: C        body: undefined 
                         link: extern  
@1871   identifier_node  strg: __builtin_ia32_punpcklqdq128 
                         lngt: 28      
@1872   function_decl    name: @1873    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1874   
                         lang: C        body: undefined 
                         link: extern  
@1873   identifier_node  strg: __builtin_ia32_punpckldq128 
                         lngt: 27      
@1874   function_decl    name: @1875    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1876   
                         lang: C        body: undefined 
                         link: extern  
@1875   identifier_node  strg: __builtin_ia32_punpcklwd128 
                         lngt: 27      
@1876   function_decl    name: @1877    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1879   
                         lang: C        body: undefined 
                         link: extern  
@1877   identifier_node  strg: __builtin_ia32_punpcklbw128 
                         lngt: 27      
@1878   function_type    size: @9       algn: 8        retn: @1344   
                         prms: @1880   
@1879   function_decl    name: @1881    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1882   
                         lang: C        body: undefined 
                         link: extern  
@1880   tree_list        valu: @1344    chan: @1883   
@1881   identifier_node  strg: __builtin_ia32_punpckhqdq128 
                         lngt: 28      
@1882   function_decl    name: @1884    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1885   
                         lang: C        body: undefined 
                         link: extern  
@1883   tree_list        valu: @1344    chan: @45     
@1884   identifier_node  strg: __builtin_ia32_punpckhdq128 
                         lngt: 27      
@1885   function_decl    name: @1886    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1887   
                         lang: C        body: undefined 
                         link: extern  
@1886   identifier_node  strg: __builtin_ia32_punpckhwd128 
                         lngt: 27      
@1887   function_decl    name: @1888    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1889   
                         lang: C        body: undefined 
                         link: extern  
@1888   identifier_node  strg: __builtin_ia32_punpckhbw128 
                         lngt: 27      
@1889   function_decl    name: @1890    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1891   
                         lang: C        body: undefined 
                         link: extern  
@1890   identifier_node  strg: __builtin_ia32_pminsw128 
                         lngt: 24      
@1891   function_decl    name: @1892    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1893   
                         lang: C        body: undefined 
                         link: extern  
@1892   identifier_node  strg: __builtin_ia32_pminub128 
                         lngt: 24      
@1893   function_decl    name: @1894    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1895   
                         lang: C        body: undefined 
                         link: extern  
@1894   identifier_node  strg: __builtin_ia32_pmaxsw128 
                         lngt: 24      
@1895   function_decl    name: @1896    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1897   
                         lang: C        body: undefined 
                         link: extern  
@1896   identifier_node  strg: __builtin_ia32_pmaxub128 
                         lngt: 24      
@1897   function_decl    name: @1898    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1899   
                         lang: C        body: undefined 
                         link: extern  
@1898   identifier_node  strg: __builtin_ia32_pcmpgtd128 
                         lngt: 25      
@1899   function_decl    name: @1900    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1901   
                         lang: C        body: undefined 
                         link: extern  
@1900   identifier_node  strg: __builtin_ia32_pcmpgtw128 
                         lngt: 25      
@1901   function_decl    name: @1902    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1903   
                         lang: C        body: undefined 
                         link: extern  
@1902   identifier_node  strg: __builtin_ia32_pcmpgtb128 
                         lngt: 25      
@1903   function_decl    name: @1904    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1905   
                         lang: C        body: undefined 
                         link: extern  
@1904   identifier_node  strg: __builtin_ia32_pcmpeqd128 
                         lngt: 25      
@1905   function_decl    name: @1906    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1907   
                         lang: C        body: undefined 
                         link: extern  
@1906   identifier_node  strg: __builtin_ia32_pcmpeqw128 
                         lngt: 25      
@1907   function_decl    name: @1908    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1909   
                         lang: C        body: undefined 
                         link: extern  
@1908   identifier_node  strg: __builtin_ia32_pcmpeqb128 
                         lngt: 25      
@1909   function_decl    name: @1910    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1911   
                         lang: C        body: undefined 
                         link: extern  
@1910   identifier_node  strg: __builtin_ia32_pavgw128 lngt: 23      
@1911   function_decl    name: @1912    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1913   
                         lang: C        body: undefined 
                         link: extern  
@1912   identifier_node  strg: __builtin_ia32_pavgb128 lngt: 23      
@1913   function_decl    name: @1914    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1915   
                         lang: C        body: undefined 
                         link: extern  
@1914   identifier_node  strg: __builtin_ia32_pxor128  lngt: 22      
@1915   function_decl    name: @1916    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1917   
                         lang: C        body: undefined 
                         link: extern  
@1916   identifier_node  strg: __builtin_ia32_por128   lngt: 21      
@1917   function_decl    name: @1918    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1919   
                         lang: C        body: undefined 
                         link: extern  
@1918   identifier_node  strg: __builtin_ia32_pandn128 lngt: 23      
@1919   function_decl    name: @1920    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1921   
                         lang: C        body: undefined 
                         link: extern  
@1920   identifier_node  strg: __builtin_ia32_pand128  lngt: 22      
@1921   function_decl    name: @1922    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1923   
                         lang: C        body: undefined 
                         link: extern  
@1922   identifier_node  strg: __builtin_ia32_pmulhw128 
                         lngt: 24      
@1923   function_decl    name: @1924    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1925   
                         lang: C        body: undefined 
                         link: extern  
@1924   identifier_node  strg: __builtin_ia32_pmullw128 
                         lngt: 24      
@1925   function_decl    name: @1926    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1927   
                         lang: C        body: undefined 
                         link: extern  
@1926   identifier_node  strg: __builtin_ia32_psubusw128 
                         lngt: 25      
@1927   function_decl    name: @1928    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1929   
                         lang: C        body: undefined 
                         link: extern  
@1928   identifier_node  strg: __builtin_ia32_psubusb128 
                         lngt: 25      
@1929   function_decl    name: @1930    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1931   
                         lang: C        body: undefined 
                         link: extern  
@1930   identifier_node  strg: __builtin_ia32_paddusw128 
                         lngt: 25      
@1931   function_decl    name: @1932    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1933   
                         lang: C        body: undefined 
                         link: extern  
@1932   identifier_node  strg: __builtin_ia32_paddusb128 
                         lngt: 25      
@1933   function_decl    name: @1934    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1935   
                         lang: C        body: undefined 
                         link: extern  
@1934   identifier_node  strg: __builtin_ia32_psubsw128 
                         lngt: 24      
@1935   function_decl    name: @1936    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1937   
                         lang: C        body: undefined 
                         link: extern  
@1936   identifier_node  strg: __builtin_ia32_psubsb128 
                         lngt: 24      
@1937   function_decl    name: @1938    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1939   
                         lang: C        body: undefined 
                         link: extern  
@1938   identifier_node  strg: __builtin_ia32_paddsw128 
                         lngt: 24      
@1939   function_decl    name: @1940    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1941   
                         lang: C        body: undefined 
                         link: extern  
@1940   identifier_node  strg: __builtin_ia32_paddsb128 
                         lngt: 24      
@1941   function_decl    name: @1942    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1943   
                         lang: C        body: undefined 
                         link: extern  
@1942   identifier_node  strg: __builtin_ia32_psubq128 lngt: 23      
@1943   function_decl    name: @1944    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1945   
                         lang: C        body: undefined 
                         link: extern  
@1944   identifier_node  strg: __builtin_ia32_psubd128 lngt: 23      
@1945   function_decl    name: @1946    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1947   
                         lang: C        body: undefined 
                         link: extern  
@1946   identifier_node  strg: __builtin_ia32_psubw128 lngt: 23      
@1947   function_decl    name: @1948    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1949   
                         lang: C        body: undefined 
                         link: extern  
@1948   identifier_node  strg: __builtin_ia32_psubb128 lngt: 23      
@1949   function_decl    name: @1950    type: @1474    srcp: <built-in>:0      
                         note: artificial              chan: @1951   
                         lang: C        body: undefined 
                         link: extern  
@1950   identifier_node  strg: __builtin_ia32_paddq128 lngt: 23      
@1951   function_decl    name: @1952    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1953   
                         lang: C        body: undefined 
                         link: extern  
@1952   identifier_node  strg: __builtin_ia32_paddd128 lngt: 23      
@1953   function_decl    name: @1954    type: @1469    srcp: <built-in>:0      
                         note: artificial              chan: @1955   
                         lang: C        body: undefined 
                         link: extern  
@1954   identifier_node  strg: __builtin_ia32_paddw128 lngt: 23      
@1955   function_decl    name: @1956    type: @1878    srcp: <built-in>:0      
                         note: artificial              chan: @1957   
                         lang: C        body: undefined 
                         link: extern  
@1956   identifier_node  strg: __builtin_ia32_paddb128 lngt: 23      
@1957   function_decl    name: @1958    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1959   
                         lang: C        body: undefined 
                         link: extern  
@1958   identifier_node  strg: __builtin_ia32_unpcklpd lngt: 23      
@1959   function_decl    name: @1960    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1961   
                         lang: C        body: undefined 
                         link: extern  
@1960   identifier_node  strg: __builtin_ia32_unpckhpd lngt: 23      
@1961   function_decl    name: @1962    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1963   
                         lang: C        body: undefined 
                         link: extern  
@1962   identifier_node  strg: __builtin_ia32_movsd    lngt: 20      
@1963   function_decl    name: @1964    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1965   
                         lang: C        body: undefined 
                         link: extern  
@1964   identifier_node  strg: __builtin_ia32_xorpd    lngt: 20      
@1965   function_decl    name: @1966    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1967   
                         lang: C        body: undefined 
                         link: extern  
@1966   identifier_node  strg: __builtin_ia32_orpd     lngt: 19      
@1967   function_decl    name: @1968    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1969   
                         lang: C        body: undefined 
                         link: extern  
@1968   identifier_node  strg: __builtin_ia32_andnpd   lngt: 21      
@1969   function_decl    name: @1970    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1971   
                         lang: C        body: undefined 
                         link: extern  
@1970   identifier_node  strg: __builtin_ia32_andpd    lngt: 20      
@1971   function_decl    name: @1972    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1973   
                         lang: C        body: undefined 
                         link: extern  
@1972   identifier_node  strg: __builtin_ia32_maxsd    lngt: 20      
@1973   function_decl    name: @1974    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1975   
                         lang: C        body: undefined 
                         link: extern  
@1974   identifier_node  strg: __builtin_ia32_minsd    lngt: 20      
@1975   function_decl    name: @1976    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1977   
                         lang: C        body: undefined 
                         link: extern  
@1976   identifier_node  strg: __builtin_ia32_maxpd    lngt: 20      
@1977   function_decl    name: @1978    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @1979   
                         lang: C        body: undefined 
                         link: extern  
@1978   identifier_node  strg: __builtin_ia32_minpd    lngt: 20      
@1979   function_decl    name: @1980    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1982   
                         lang: C        body: undefined 
                         link: extern  
@1980   identifier_node  strg: __builtin_ia32_cmpordsd lngt: 23      
@1981   function_type    size: @9       algn: 8        retn: @1378   
                         prms: @1983   
@1982   function_decl    name: @1984    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1985   
                         lang: C        body: undefined 
                         link: extern  
@1983   tree_list        valu: @1384    chan: @1986   
@1984   identifier_node  strg: __builtin_ia32_cmpnlesd lngt: 23      
@1985   function_decl    name: @1987    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1988   
                         lang: C        body: undefined 
                         link: extern  
@1986   tree_list        valu: @1384    chan: @45     
@1987   identifier_node  strg: __builtin_ia32_cmpnltsd lngt: 23      
@1988   function_decl    name: @1989    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1990   
                         lang: C        body: undefined 
                         link: extern  
@1989   identifier_node  strg: __builtin_ia32_cmpneqsd lngt: 23      
@1990   function_decl    name: @1991    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1992   
                         lang: C        body: undefined 
                         link: extern  
@1991   identifier_node  strg: __builtin_ia32_cmpunordsd 
                         lngt: 25      
@1992   function_decl    name: @1993    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1994   
                         lang: C        body: undefined 
                         link: extern  
@1993   identifier_node  strg: __builtin_ia32_cmplesd  lngt: 22      
@1994   function_decl    name: @1995    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1996   
                         lang: C        body: undefined 
                         link: extern  
@1995   identifier_node  strg: __builtin_ia32_cmpltsd  lngt: 22      
@1996   function_decl    name: @1997    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @1998   
                         lang: C        body: undefined 
                         link: extern  
@1997   identifier_node  strg: __builtin_ia32_cmpeqsd  lngt: 22      
@1998   function_decl    name: @1999    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2000   
                         lang: C        body: undefined 
                         link: extern  
@1999   identifier_node  strg: __builtin_ia32_cmpordpd lngt: 23      
@2000   function_decl    name: @2001    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2002   
                         lang: C        body: undefined 
                         link: extern  
@2001   identifier_node  strg: __builtin_ia32_cmpngepd lngt: 23      
@2002   function_decl    name: @2003    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2004   
                         lang: C        body: undefined 
                         link: extern  
@2003   identifier_node  strg: __builtin_ia32_cmpngtpd lngt: 23      
@2004   function_decl    name: @2005    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2006   
                         lang: C        body: undefined 
                         link: extern  
@2005   identifier_node  strg: __builtin_ia32_cmpnlepd lngt: 23      
@2006   function_decl    name: @2007    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2008   
                         lang: C        body: undefined 
                         link: extern  
@2007   identifier_node  strg: __builtin_ia32_cmpnltpd lngt: 23      
@2008   function_decl    name: @2009    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2010   
                         lang: C        body: undefined 
                         link: extern  
@2009   identifier_node  strg: __builtin_ia32_cmpneqpd lngt: 23      
@2010   function_decl    name: @2011    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2012   
                         lang: C        body: undefined 
                         link: extern  
@2011   identifier_node  strg: __builtin_ia32_cmpunordpd 
                         lngt: 25      
@2012   function_decl    name: @2013    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2014   
                         lang: C        body: undefined 
                         link: extern  
@2013   identifier_node  strg: __builtin_ia32_cmpgepd  lngt: 22      
@2014   function_decl    name: @2015    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2016   
                         lang: C        body: undefined 
                         link: extern  
@2015   identifier_node  strg: __builtin_ia32_cmpgtpd  lngt: 22      
@2016   function_decl    name: @2017    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2018   
                         lang: C        body: undefined 
                         link: extern  
@2017   identifier_node  strg: __builtin_ia32_cmplepd  lngt: 22      
@2018   function_decl    name: @2019    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2020   
                         lang: C        body: undefined 
                         link: extern  
@2019   identifier_node  strg: __builtin_ia32_cmpltpd  lngt: 22      
@2020   function_decl    name: @2021    type: @1981    srcp: <built-in>:0      
                         note: artificial              chan: @2022   
                         lang: C        body: undefined 
                         link: extern  
@2021   identifier_node  strg: __builtin_ia32_cmpeqpd  lngt: 22      
@2022   function_decl    name: @2023    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2024   
                         lang: C        body: undefined 
                         link: extern  
@2023   identifier_node  strg: __builtin_ia32_divsd    lngt: 20      
@2024   function_decl    name: @2025    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2026   
                         lang: C        body: undefined 
                         link: extern  
@2025   identifier_node  strg: __builtin_ia32_mulsd    lngt: 20      
@2026   function_decl    name: @2027    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2028   
                         lang: C        body: undefined 
                         link: extern  
@2027   identifier_node  strg: __builtin_ia32_subsd    lngt: 20      
@2028   function_decl    name: @2029    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2030   
                         lang: C        body: undefined 
                         link: extern  
@2029   identifier_node  strg: __builtin_ia32_addsd    lngt: 20      
@2030   function_decl    name: @2031    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2032   
                         lang: C        body: undefined 
                         link: extern  
@2031   identifier_node  strg: __builtin_ia32_divpd    lngt: 20      
@2032   function_decl    name: @2033    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2034   
                         lang: C        body: undefined 
                         link: extern  
@2033   identifier_node  strg: __builtin_ia32_mulpd    lngt: 20      
@2034   function_decl    name: @2035    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2036   
                         lang: C        body: undefined 
                         link: extern  
@2035   identifier_node  strg: __builtin_ia32_subpd    lngt: 20      
@2036   function_decl    name: @2037    type: @1846    srcp: <built-in>:0      
                         note: artificial              chan: @2038   
                         lang: C        body: undefined 
                         link: extern  
@2037   identifier_node  strg: __builtin_ia32_addpd    lngt: 20      
@2038   function_decl    name: @2039    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2041   
                         lang: C        body: undefined 
                         link: extern  
@2039   identifier_node  strg: __builtin_ia32_punpckldq 
                         lngt: 24      
@2040   function_type    size: @9       algn: 8        retn: @1350   
                         prms: @2042   
@2041   function_decl    name: @2043    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2045   
                         lang: C        body: undefined 
                         link: extern  
@2042   tree_list        valu: @1350    chan: @2046   
@2043   identifier_node  strg: __builtin_ia32_punpcklwd 
                         lngt: 24      
@2044   function_type    size: @9       algn: 8        retn: @1326   
                         prms: @2047   
@2045   function_decl    name: @2048    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2050   
                         lang: C        body: undefined 
                         link: extern  
@2046   tree_list        valu: @1350    chan: @45     
@2047   tree_list        valu: @1326    chan: @2051   
@2048   identifier_node  strg: __builtin_ia32_punpcklbw 
                         lngt: 24      
@2049   function_type    size: @9       algn: 8        retn: @1386   
                         prms: @2052   
@2050   function_decl    name: @2053    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2054   
                         lang: C        body: undefined 
                         link: extern  
@2051   tree_list        valu: @1326    chan: @45     
@2052   tree_list        valu: @1386    chan: @2055   
@2053   identifier_node  strg: __builtin_ia32_punpckhdq 
                         lngt: 24      
@2054   function_decl    name: @2056    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2057   
                         lang: C        body: undefined 
                         link: extern  
@2055   tree_list        valu: @1386    chan: @45     
@2056   identifier_node  strg: __builtin_ia32_punpckhwd 
                         lngt: 24      
@2057   function_decl    name: @2058    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2059   
                         lang: C        body: undefined 
                         link: extern  
@2058   identifier_node  strg: __builtin_ia32_punpckhbw 
                         lngt: 24      
@2059   function_decl    name: @2060    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2061   
                         lang: C        body: undefined 
                         link: extern  
@2060   identifier_node  strg: __builtin_ia32_pminsw   lngt: 21      
@2061   function_decl    name: @2062    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2063   
                         lang: C        body: undefined 
                         link: extern  
@2062   identifier_node  strg: __builtin_ia32_pminub   lngt: 21      
@2063   function_decl    name: @2064    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2065   
                         lang: C        body: undefined 
                         link: extern  
@2064   identifier_node  strg: __builtin_ia32_pmaxsw   lngt: 21      
@2065   function_decl    name: @2066    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2067   
                         lang: C        body: undefined 
                         link: extern  
@2066   identifier_node  strg: __builtin_ia32_pmaxub   lngt: 21      
@2067   function_decl    name: @2068    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2069   
                         lang: C        body: undefined 
                         link: extern  
@2068   identifier_node  strg: __builtin_ia32_pcmpgtd  lngt: 22      
@2069   function_decl    name: @2070    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2071   
                         lang: C        body: undefined 
                         link: extern  
@2070   identifier_node  strg: __builtin_ia32_pcmpgtw  lngt: 22      
@2071   function_decl    name: @2072    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2073   
                         lang: C        body: undefined 
                         link: extern  
@2072   identifier_node  strg: __builtin_ia32_pcmpgtb  lngt: 22      
@2073   function_decl    name: @2074    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2075   
                         lang: C        body: undefined 
                         link: extern  
@2074   identifier_node  strg: __builtin_ia32_pcmpeqd  lngt: 22      
@2075   function_decl    name: @2076    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2077   
                         lang: C        body: undefined 
                         link: extern  
@2076   identifier_node  strg: __builtin_ia32_pcmpeqw  lngt: 22      
@2077   function_decl    name: @2078    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2079   
                         lang: C        body: undefined 
                         link: extern  
@2078   identifier_node  strg: __builtin_ia32_pcmpeqb  lngt: 22      
@2079   function_decl    name: @2080    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2081   
                         lang: C        body: undefined 
                         link: extern  
@2080   identifier_node  strg: __builtin_ia32_pavgw    lngt: 20      
@2081   function_decl    name: @2082    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2083   
                         lang: C        body: undefined 
                         link: extern  
@2082   identifier_node  strg: __builtin_ia32_pavgb    lngt: 20      
@2083   function_decl    name: @2084    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2085   
                         lang: C        body: undefined 
                         link: extern  
@2084   identifier_node  strg: __builtin_ia32_pxor     lngt: 19      
@2085   function_decl    name: @2086    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2087   
                         lang: C        body: undefined 
                         link: extern  
@2086   identifier_node  strg: __builtin_ia32_por      lngt: 18      
@2087   function_decl    name: @2088    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2089   
                         lang: C        body: undefined 
                         link: extern  
@2088   identifier_node  strg: __builtin_ia32_pandn    lngt: 20      
@2089   function_decl    name: @2090    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2091   
                         lang: C        body: undefined 
                         link: extern  
@2090   identifier_node  strg: __builtin_ia32_pand     lngt: 19      
@2091   function_decl    name: @2092    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2093   
                         lang: C        body: undefined 
                         link: extern  
@2092   identifier_node  strg: __builtin_ia32_pmulhuw  lngt: 22      
@2093   function_decl    name: @2094    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2095   
                         lang: C        body: undefined 
                         link: extern  
@2094   identifier_node  strg: __builtin_ia32_pmulhw   lngt: 21      
@2095   function_decl    name: @2096    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2097   
                         lang: C        body: undefined 
                         link: extern  
@2096   identifier_node  strg: __builtin_ia32_pmullw   lngt: 21      
@2097   function_decl    name: @2098    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2099   
                         lang: C        body: undefined 
                         link: extern  
@2098   identifier_node  strg: __builtin_ia32_psubusw  lngt: 22      
@2099   function_decl    name: @2100    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2101   
                         lang: C        body: undefined 
                         link: extern  
@2100   identifier_node  strg: __builtin_ia32_psubusb  lngt: 22      
@2101   function_decl    name: @2102    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2103   
                         lang: C        body: undefined 
                         link: extern  
@2102   identifier_node  strg: __builtin_ia32_paddusw  lngt: 22      
@2103   function_decl    name: @2104    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2105   
                         lang: C        body: undefined 
                         link: extern  
@2104   identifier_node  strg: __builtin_ia32_paddusb  lngt: 22      
@2105   function_decl    name: @2106    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2107   
                         lang: C        body: undefined 
                         link: extern  
@2106   identifier_node  strg: __builtin_ia32_psubsw   lngt: 21      
@2107   function_decl    name: @2108    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2109   
                         lang: C        body: undefined 
                         link: extern  
@2108   identifier_node  strg: __builtin_ia32_psubsb   lngt: 21      
@2109   function_decl    name: @2110    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2111   
                         lang: C        body: undefined 
                         link: extern  
@2110   identifier_node  strg: __builtin_ia32_paddsw   lngt: 21      
@2111   function_decl    name: @2112    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2113   
                         lang: C        body: undefined 
                         link: extern  
@2112   identifier_node  strg: __builtin_ia32_paddsb   lngt: 21      
@2113   function_decl    name: @2114    type: @1828    srcp: <built-in>:0      
                         note: artificial              chan: @2115   
                         lang: C        body: undefined 
                         link: extern  
@2114   identifier_node  strg: __builtin_ia32_psubq    lngt: 20      
@2115   function_decl    name: @2116    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2117   
                         lang: C        body: undefined 
                         link: extern  
@2116   identifier_node  strg: __builtin_ia32_psubd    lngt: 20      
@2117   function_decl    name: @2118    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2119   
                         lang: C        body: undefined 
                         link: extern  
@2118   identifier_node  strg: __builtin_ia32_psubw    lngt: 20      
@2119   function_decl    name: @2120    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2121   
                         lang: C        body: undefined 
                         link: extern  
@2120   identifier_node  strg: __builtin_ia32_psubb    lngt: 20      
@2121   function_decl    name: @2122    type: @1828    srcp: <built-in>:0      
                         note: artificial              chan: @2123   
                         lang: C        body: undefined 
                         link: extern  
@2122   identifier_node  strg: __builtin_ia32_paddq    lngt: 20      
@2123   function_decl    name: @2124    type: @2040    srcp: <built-in>:0      
                         note: artificial              chan: @2125   
                         lang: C        body: undefined 
                         link: extern  
@2124   identifier_node  strg: __builtin_ia32_paddd    lngt: 20      
@2125   function_decl    name: @2126    type: @2044    srcp: <built-in>:0      
                         note: artificial              chan: @2127   
                         lang: C        body: undefined 
                         link: extern  
@2126   identifier_node  strg: __builtin_ia32_paddw    lngt: 20      
@2127   function_decl    name: @2128    type: @2049    srcp: <built-in>:0      
                         note: artificial              chan: @2129   
                         lang: C        body: undefined 
                         link: extern  
@2128   identifier_node  strg: __builtin_ia32_paddb    lngt: 20      
@2129   function_decl    name: @2130    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2131   
                         lang: C        body: undefined 
                         link: extern  
@2130   identifier_node  strg: __builtin_ia32_unpcklps lngt: 23      
@2131   function_decl    name: @2132    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2133   
                         lang: C        body: undefined 
                         link: extern  
@2132   identifier_node  strg: __builtin_ia32_unpckhps lngt: 23      
@2133   function_decl    name: @2134    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2135   
                         lang: C        body: undefined 
                         link: extern  
@2134   identifier_node  strg: __builtin_ia32_movlhps  lngt: 22      
@2135   function_decl    name: @2136    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2137   
                         lang: C        body: undefined 
                         link: extern  
@2136   identifier_node  strg: __builtin_ia32_movhlps  lngt: 22      
@2137   function_decl    name: @2138    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2139   
                         lang: C        body: undefined 
                         link: extern  
@2138   identifier_node  strg: __builtin_ia32_movss    lngt: 20      
@2139   function_decl    name: @2140    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2141   
                         lang: C        body: undefined 
                         link: extern  
@2140   identifier_node  strg: __builtin_ia32_xorps    lngt: 20      
@2141   function_decl    name: @2142    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2143   
                         lang: C        body: undefined 
                         link: extern  
@2142   identifier_node  strg: __builtin_ia32_orps     lngt: 19      
@2143   function_decl    name: @2144    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2145   
                         lang: C        body: undefined 
                         link: extern  
@2144   identifier_node  strg: __builtin_ia32_andnps   lngt: 21      
@2145   function_decl    name: @2146    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2147   
                         lang: C        body: undefined 
                         link: extern  
@2146   identifier_node  strg: __builtin_ia32_andps    lngt: 20      
@2147   function_decl    name: @2148    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2149   
                         lang: C        body: undefined 
                         link: extern  
@2148   identifier_node  strg: __builtin_ia32_maxss    lngt: 20      
@2149   function_decl    name: @2150    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2151   
                         lang: C        body: undefined 
                         link: extern  
@2150   identifier_node  strg: __builtin_ia32_minss    lngt: 20      
@2151   function_decl    name: @2152    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2153   
                         lang: C        body: undefined 
                         link: extern  
@2152   identifier_node  strg: __builtin_ia32_maxps    lngt: 20      
@2153   function_decl    name: @2154    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2155   
                         lang: C        body: undefined 
                         link: extern  
@2154   identifier_node  strg: __builtin_ia32_minps    lngt: 20      
@2155   function_decl    name: @2156    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2158   
                         lang: C        body: undefined 
                         link: extern  
@2156   identifier_node  strg: __builtin_ia32_cmpordss lngt: 23      
@2157   function_type    size: @9       algn: 8        retn: @1366   
                         prms: @2159   
@2158   function_decl    name: @2160    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2161   
                         lang: C        body: undefined 
                         link: extern  
@2159   tree_list        valu: @1372    chan: @2162   
@2160   identifier_node  strg: __builtin_ia32_cmpngess lngt: 23      
@2161   function_decl    name: @2163    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2164   
                         lang: C        body: undefined 
                         link: extern  
@2162   tree_list        valu: @1372    chan: @45     
@2163   identifier_node  strg: __builtin_ia32_cmpngtss lngt: 23      
@2164   function_decl    name: @2165    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2166   
                         lang: C        body: undefined 
                         link: extern  
@2165   identifier_node  strg: __builtin_ia32_cmpnless lngt: 23      
@2166   function_decl    name: @2167    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2168   
                         lang: C        body: undefined 
                         link: extern  
@2167   identifier_node  strg: __builtin_ia32_cmpnltss lngt: 23      
@2168   function_decl    name: @2169    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2170   
                         lang: C        body: undefined 
                         link: extern  
@2169   identifier_node  strg: __builtin_ia32_cmpneqss lngt: 23      
@2170   function_decl    name: @2171    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2172   
                         lang: C        body: undefined 
                         link: extern  
@2171   identifier_node  strg: __builtin_ia32_cmpunordss 
                         lngt: 25      
@2172   function_decl    name: @2173    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2174   
                         lang: C        body: undefined 
                         link: extern  
@2173   identifier_node  strg: __builtin_ia32_cmpless  lngt: 22      
@2174   function_decl    name: @2175    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2176   
                         lang: C        body: undefined 
                         link: extern  
@2175   identifier_node  strg: __builtin_ia32_cmpltss  lngt: 22      
@2176   function_decl    name: @2177    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2178   
                         lang: C        body: undefined 
                         link: extern  
@2177   identifier_node  strg: __builtin_ia32_cmpeqss  lngt: 22      
@2178   function_decl    name: @2179    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2180   
                         lang: C        body: undefined 
                         link: extern  
@2179   identifier_node  strg: __builtin_ia32_cmpordps lngt: 23      
@2180   function_decl    name: @2181    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2182   
                         lang: C        body: undefined 
                         link: extern  
@2181   identifier_node  strg: __builtin_ia32_cmpngeps lngt: 23      
@2182   function_decl    name: @2183    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2184   
                         lang: C        body: undefined 
                         link: extern  
@2183   identifier_node  strg: __builtin_ia32_cmpngtps lngt: 23      
@2184   function_decl    name: @2185    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2186   
                         lang: C        body: undefined 
                         link: extern  
@2185   identifier_node  strg: __builtin_ia32_cmpnleps lngt: 23      
@2186   function_decl    name: @2187    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2188   
                         lang: C        body: undefined 
                         link: extern  
@2187   identifier_node  strg: __builtin_ia32_cmpnltps lngt: 23      
@2188   function_decl    name: @2189    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2190   
                         lang: C        body: undefined 
                         link: extern  
@2189   identifier_node  strg: __builtin_ia32_cmpneqps lngt: 23      
@2190   function_decl    name: @2191    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2192   
                         lang: C        body: undefined 
                         link: extern  
@2191   identifier_node  strg: __builtin_ia32_cmpunordps 
                         lngt: 25      
@2192   function_decl    name: @2193    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2194   
                         lang: C        body: undefined 
                         link: extern  
@2193   identifier_node  strg: __builtin_ia32_cmpgeps  lngt: 22      
@2194   function_decl    name: @2195    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2196   
                         lang: C        body: undefined 
                         link: extern  
@2195   identifier_node  strg: __builtin_ia32_cmpgtps  lngt: 22      
@2196   function_decl    name: @2197    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2198   
                         lang: C        body: undefined 
                         link: extern  
@2197   identifier_node  strg: __builtin_ia32_cmpleps  lngt: 22      
@2198   function_decl    name: @2199    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2200   
                         lang: C        body: undefined 
                         link: extern  
@2199   identifier_node  strg: __builtin_ia32_cmpltps  lngt: 22      
@2200   function_decl    name: @2201    type: @2157    srcp: <built-in>:0      
                         note: artificial              chan: @2202   
                         lang: C        body: undefined 
                         link: extern  
@2201   identifier_node  strg: __builtin_ia32_cmpeqps  lngt: 22      
@2202   function_decl    name: @2203    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2204   
                         lang: C        body: undefined 
                         link: extern  
@2203   identifier_node  strg: __builtin_ia32_divss    lngt: 20      
@2204   function_decl    name: @2205    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2206   
                         lang: C        body: undefined 
                         link: extern  
@2205   identifier_node  strg: __builtin_ia32_mulss    lngt: 20      
@2206   function_decl    name: @2207    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2208   
                         lang: C        body: undefined 
                         link: extern  
@2207   identifier_node  strg: __builtin_ia32_subss    lngt: 20      
@2208   function_decl    name: @2209    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2210   
                         lang: C        body: undefined 
                         link: extern  
@2209   identifier_node  strg: __builtin_ia32_addss    lngt: 20      
@2210   function_decl    name: @2211    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2212   
                         lang: C        body: undefined 
                         link: extern  
@2211   identifier_node  strg: __builtin_ia32_divps    lngt: 20      
@2212   function_decl    name: @2213    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2214   
                         lang: C        body: undefined 
                         link: extern  
@2213   identifier_node  strg: __builtin_ia32_mulps    lngt: 20      
@2214   function_decl    name: @2215    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2216   
                         lang: C        body: undefined 
                         link: extern  
@2215   identifier_node  strg: __builtin_ia32_subps    lngt: 20      
@2216   function_decl    name: @2217    type: @1850    srcp: <built-in>:0      
                         note: artificial              chan: @2218   
                         lang: C        body: undefined 
                         link: extern  
@2217   identifier_node  strg: __builtin_ia32_addps    lngt: 20      
@2218   type_decl        name: @2219    type: @629     srcp: <built-in>:0      
                         note: artificial              chan: @2220   
@2219   identifier_node  strg: __float80               lngt: 9       
@2220   function_decl    name: @2221    type: @2222    srcp: <built-in>:0      
                         note: artificial              chan: @2223   
                         lang: C        body: undefined 
                         link: extern  
@2221   identifier_node  strg: __divxc3 lngt: 8       
@2222   function_type    size: @9       algn: 8        retn: @2224   
                         prms: @2225   
@2223   function_decl    name: @2226    type: @2222    srcp: <built-in>:0      
                         note: artificial              chan: @2227   
                         lang: C        body: undefined 
                         link: extern  
@2224   complex_type     name: @2228    size: @193     algn: 128     
@2225   tree_list        valu: @629     chan: @2229   
@2226   identifier_node  strg: __mulxc3 lngt: 8       
@2227   function_decl    name: @2230    type: @2231    srcp: <built-in>:0      
                         note: artificial              chan: @2232   
                         lang: C        body: undefined 
                         link: extern  
@2228   type_decl        name: @2233    type: @2224    srcp: <built-in>:0      
                         chan: @2234   
@2229   tree_list        valu: @629     chan: @2235   
@2230   identifier_node  strg: __divdc3 lngt: 8       
@2231   function_type    size: @9       algn: 8        retn: @2236   
                         prms: @2237   
@2232   function_decl    name: @2238    type: @2231    srcp: <built-in>:0      
                         note: artificial              chan: @2239   
                         lang: C        body: undefined 
                         link: extern  
@2233   identifier_node  strg: complex long double     lngt: 19      
@2234   type_decl        name: @2240    type: @2236    srcp: <built-in>:0      
                         chan: @2241   
@2235   tree_list        valu: @629     chan: @2242   
@2236   complex_type     name: @2234    size: @254     algn: 64      
@2237   tree_list        valu: @605     chan: @2243   
@2238   identifier_node  strg: __muldc3 lngt: 8       
@2239   function_decl    name: @2244    type: @2245    srcp: <built-in>:0      
                         note: artificial              chan: @2246   
                         lang: C        body: undefined 
                         link: extern  
@2240   identifier_node  strg: complex double          lngt: 14      
@2241   type_decl        name: @2247    type: @2248    srcp: <built-in>:0      
                         chan: @2249   
@2242   tree_list        valu: @629     chan: @45     
@2243   tree_list        valu: @605     chan: @2250   
@2244   identifier_node  strg: __divsc3 lngt: 8       
@2245   function_type    size: @9       algn: 8        retn: @2248   
                         prms: @2251   
@2246   function_decl    name: @2252    type: @2245    srcp: <built-in>:0      
                         note: artificial              chan: @2253   
                         lang: C        body: undefined 
                         link: extern  
@2247   identifier_node  strg: complex float           lngt: 13      
@2248   complex_type     name: @2241    size: @41      algn: 32      
@2249   type_decl        name: @2254    type: @2255    srcp: <built-in>:0      
                         chan: @2256   
@2250   tree_list        valu: @605     chan: @2257   
@2251   tree_list        valu: @100     chan: @2258   
@2252   identifier_node  strg: __mulsc3 lngt: 8       
@2253   function_decl    name: @2259    mngl: @2260    type: @1507   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2261    lang: C        body: undefined 
                         link: extern  
@2254   identifier_node  strg: complex int             lngt: 11      
@2255   complex_type     name: @2249    size: @41      algn: 32      
@2256   type_decl        type: @2262    srcp: <built-in>:0      
                         chan: @2263   
@2257   tree_list        valu: @605     chan: @45     
@2258   tree_list        valu: @100     chan: @2264   
@2259   identifier_node  strg: __builtin_profile_func_exit 
                         lngt: 27      
@2260   identifier_node  strg: profile_func_exit       lngt: 17      
@2261   function_decl    name: @2265    mngl: @2266    type: @1507   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2267    lang: C        body: undefined 
                         link: extern  
@2262   integer_type     size: @254     algn: 128      prec: 128     
                         sign: unsigned min : @2268    max : @2269   
@2263   type_decl        type: @2270    srcp: <built-in>:0      
                         chan: @2271   
@2264   tree_list        valu: @100     chan: @2272   
@2265   identifier_node  strg: __builtin_profile_func_enter 
                         lngt: 28      
@2266   identifier_node  strg: profile_func_enter      lngt: 18      
@2267   function_decl    name: @2273    type: @465     srcp: <built-in>:0      
                         note: artificial              chan: @2274   
                         lang: C        body: undefined 
                         link: extern  
@2268   integer_cst      type: @2262    low : 0       
@2269   integer_cst      type: @2262    high: -1       low : -1      
@2270   integer_type     size: @254     algn: 128      prec: 128     
                         sign: signed   min : @2275    max : @2276   
@2271   type_decl        type: @503     srcp: <built-in>:0      
                         chan: @2277   
@2272   tree_list        valu: @100     chan: @45     
@2273   identifier_node  strg: __builtin_stack_restore lngt: 23      
@2274   function_decl    name: @2278    type: @2279    srcp: <built-in>:0      
                         note: artificial              chan: @2280   
                         lang: C        body: undefined 
                         link: extern  
@2275   integer_cst      type: @2270    high: 0        low : 0       
@2276   integer_cst      type: @2270    high: -1       low : -1      
@2277   type_decl        type: @243     srcp: <built-in>:0      
                         chan: @2281   
@2278   identifier_node  strg: __builtin_stack_save    lngt: 20      
@2279   function_type    size: @9       algn: 8        retn: @55     
                         prms: @45     
@2280   function_decl    name: @2282    type: @465     srcp: <built-in>:0      
                         note: artificial              chan: @2283   
                         lang: C        body: undefined 
                         link: extern  
@2281   type_decl        type: @557     srcp: <built-in>:0      
                         chan: @2284   
@2282   identifier_node  strg: __builtin_setjmp_receiver 
                         lngt: 25      
@2283   function_decl    name: @2285    type: @2286    srcp: <built-in>:0      
                         note: artificial              chan: @2287   
                         lang: C        body: undefined 
                         link: extern  
@2284   type_decl        type: @255     srcp: <built-in>:0      
                         chan: @2288   
@2285   identifier_node  strg: __builtin_setjmp_dispatcher 
                         lngt: 27      
@2286   function_type    size: @9       algn: 8        retn: @55     
                         prms: @2289   
@2287   function_decl    name: @2290    type: @2291    srcp: <built-in>:0      
                         note: artificial              chan: @2292   
                         lang: C        body: undefined 
                         link: extern  
@2288   type_decl        type: @434     srcp: <built-in>:0      
                         chan: @2293   
@2289   tree_list        valu: @55      chan: @45     
@2290   identifier_node  strg: __builtin_setjmp_setup  lngt: 22      
@2291   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2294   
@2292   function_decl    name: @2295    type: @2291    srcp: <built-in>:0      
                         note: artificial              chan: @2296   
                         lang: C        body: undefined 
                         link: extern  
@2293   type_decl        type: @10      srcp: <built-in>:0      
                         chan: @2297   
@2294   tree_list        valu: @55      chan: @2298   
@2295   identifier_node  strg: __builtin_nonlocal_goto lngt: 23      
@2296   function_decl    name: @2299    type: @2286    srcp: <built-in>:0      
                         note: artificial              chan: @2300   
                         lang: C        body: undefined 
                         link: extern  
@2297   type_decl        type: @572     srcp: <built-in>:0      
                         chan: @2301   
@2298   tree_list        valu: @55      chan: @45     
@2299   identifier_node  strg: __builtin_adjust_trampoline 
                         lngt: 27      
@2300   function_decl    name: @2302    type: @2303    srcp: <built-in>:0      
                         note: artificial              chan: @2304   
                         lang: C        body: undefined 
                         link: extern  
@2301   type_decl        type: @590     srcp: <built-in>:0      
@2302   identifier_node  strg: __builtin_init_trampoline 
                         lngt: 25      
@2303   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2305   
@2304   function_decl    name: @2306    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @2307   
                         lang: C        body: undefined 
                         link: extern  
@2305   tree_list        valu: @55      chan: @2308   
@2306   identifier_node  strg: __sync_synchronize      lngt: 18      
@2307   function_decl    name: @2309    type: @2310    srcp: <built-in>:0      
                         note: artificial              chan: @2311   
                         lang: C        body: undefined 
                         link: extern  
@2308   tree_list        valu: @55      chan: @2312   
@2309   identifier_node  strg: __sync_lock_release_16  lngt: 22      
@2310   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2313   
@2311   function_decl    name: @2314    type: @2310    srcp: <built-in>:0      
                         note: artificial              chan: @2315   
                         lang: C        body: undefined 
                         link: extern  
@2312   tree_list        valu: @55      chan: @45     
@2313   tree_list        valu: @2316    chan: @45     
@2314   identifier_node  strg: __sync_lock_release_8   lngt: 21      
@2315   function_decl    name: @2317    type: @2310    srcp: <built-in>:0      
                         note: artificial              chan: @2318   
                         lang: C        body: undefined 
                         link: extern  
@2316   pointer_type     size: @18      algn: 32       ptd : @2319   
@2317   identifier_node  strg: __sync_lock_release_4   lngt: 21      
@2318   function_decl    name: @2320    type: @2310    srcp: <built-in>:0      
                         note: artificial              chan: @2321   
                         lang: C        body: undefined 
                         link: extern  
@2319   void_type        qual:  v       name: @36      unql: @19     
                         algn: 8       
@2320   identifier_node  strg: __sync_lock_release_2   lngt: 21      
@2321   function_decl    name: @2322    type: @2310    srcp: <built-in>:0      
                         note: artificial              chan: @2323   
                         lang: C        body: undefined 
                         link: extern  
@2322   identifier_node  strg: __sync_lock_release_1   lngt: 21      
@2323   function_decl    name: @2324    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2326   
                         lang: C        body: undefined 
                         link: extern  
@2324   identifier_node  strg: __sync_lock_release     lngt: 19      
@2325   function_type    size: @9       algn: 8        retn: @19     
@2326   function_decl    name: @2327    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2329   
                         lang: C        body: undefined 
                         link: extern  
@2327   identifier_node  strg: __sync_lock_test_and_set_16 
                         lngt: 27      
@2328   function_type    size: @9       algn: 8        retn: @2262   
                         prms: @2330   
@2329   function_decl    name: @2331    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2333   
                         lang: C        body: undefined 
                         link: extern  
@2330   tree_list        valu: @2316    chan: @2334   
@2331   identifier_node  strg: __sync_lock_test_and_set_8 
                         lngt: 26      
@2332   function_type    size: @9       algn: 8        retn: @503    
                         prms: @2335   
@2333   function_decl    name: @2336    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2338   
                         lang: C        body: undefined 
                         link: extern  
@2334   tree_list        valu: @2262    chan: @45     
@2335   tree_list        valu: @2316    chan: @2339   
@2336   identifier_node  strg: __sync_lock_test_and_set_4 
                         lngt: 26      
@2337   function_type    size: @9       algn: 8        retn: @243    
                         prms: @2340   
@2338   function_decl    name: @2341    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2343   
                         lang: C        body: undefined 
                         link: extern  
@2339   tree_list        valu: @503     chan: @45     
@2340   tree_list        valu: @2316    chan: @2344   
@2341   identifier_node  strg: __sync_lock_test_and_set_2 
                         lngt: 26      
@2342   function_type    size: @9       algn: 8        retn: @557    
                         prms: @2345   
@2343   function_decl    name: @2346    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2348   
                         lang: C        body: undefined 
                         link: extern  
@2344   tree_list        valu: @243     chan: @45     
@2345   tree_list        valu: @2316    chan: @2349   
@2346   identifier_node  strg: __sync_lock_test_and_set_1 
                         lngt: 26      
@2347   function_type    size: @9       algn: 8        retn: @255    
                         prms: @2350   
@2348   function_decl    name: @2351    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2352   
                         lang: C        body: undefined 
                         link: extern  
@2349   tree_list        valu: @557     chan: @45     
@2350   tree_list        valu: @2316    chan: @2353   
@2351   identifier_node  strg: __sync_lock_test_and_set 
                         lngt: 24      
@2352   function_decl    name: @2354    type: @2355    srcp: <built-in>:0      
                         note: artificial              chan: @2356   
                         lang: C        body: undefined 
                         link: extern  
@2353   tree_list        valu: @255     chan: @45     
@2354   identifier_node  strg: __sync_val_compare_and_swap_16 
                         lngt: 30      
@2355   function_type    size: @9       algn: 8        retn: @2262   
                         prms: @2357   
@2356   function_decl    name: @2358    type: @2359    srcp: <built-in>:0      
                         note: artificial              chan: @2360   
                         lang: C        body: undefined 
                         link: extern  
@2357   tree_list        valu: @2316    chan: @2361   
@2358   identifier_node  strg: __sync_val_compare_and_swap_8 
                         lngt: 29      
@2359   function_type    size: @9       algn: 8        retn: @503    
                         prms: @2362   
@2360   function_decl    name: @2363    type: @2364    srcp: <built-in>:0      
                         note: artificial              chan: @2365   
                         lang: C        body: undefined 
                         link: extern  
@2361   tree_list        valu: @2262    chan: @2366   
@2362   tree_list        valu: @2316    chan: @2367   
@2363   identifier_node  strg: __sync_val_compare_and_swap_4 
                         lngt: 29      
@2364   function_type    size: @9       algn: 8        retn: @243    
                         prms: @2368   
@2365   function_decl    name: @2369    type: @2370    srcp: <built-in>:0      
                         note: artificial              chan: @2371   
                         lang: C        body: undefined 
                         link: extern  
@2366   tree_list        valu: @2262    chan: @45     
@2367   tree_list        valu: @503     chan: @2372   
@2368   tree_list        valu: @2316    chan: @2373   
@2369   identifier_node  strg: __sync_val_compare_and_swap_2 
                         lngt: 29      
@2370   function_type    size: @9       algn: 8        retn: @557    
                         prms: @2374   
@2371   function_decl    name: @2375    type: @2376    srcp: <built-in>:0      
                         note: artificial              chan: @2377   
                         lang: C        body: undefined 
                         link: extern  
@2372   tree_list        valu: @503     chan: @45     
@2373   tree_list        valu: @243     chan: @2378   
@2374   tree_list        valu: @2316    chan: @2379   
@2375   identifier_node  strg: __sync_val_compare_and_swap_1 
                         lngt: 29      
@2376   function_type    size: @9       algn: 8        retn: @255    
                         prms: @2380   
@2377   function_decl    name: @2381    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2382   
                         lang: C        body: undefined 
                         link: extern  
@2378   tree_list        valu: @243     chan: @45     
@2379   tree_list        valu: @557     chan: @2383   
@2380   tree_list        valu: @2316    chan: @2384   
@2381   identifier_node  strg: __sync_val_compare_and_swap 
                         lngt: 27      
@2382   function_decl    name: @2385    type: @2386    srcp: <built-in>:0      
                         note: artificial              chan: @2387   
                         lang: C        body: undefined 
                         link: extern  
@2383   tree_list        valu: @557     chan: @45     
@2384   tree_list        valu: @255     chan: @2388   
@2385   identifier_node  strg: __sync_bool_compare_and_swap_16 
                         lngt: 31      
@2386   function_type    size: @9       algn: 8        retn: @804    
                         prms: @2389   
@2387   function_decl    name: @2390    type: @2391    srcp: <built-in>:0      
                         note: artificial              chan: @2392   
                         lang: C        body: undefined 
                         link: extern  
@2388   tree_list        valu: @255     chan: @45     
@2389   tree_list        valu: @2316    chan: @2393   
@2390   identifier_node  strg: __sync_bool_compare_and_swap_8 
                         lngt: 30      
@2391   function_type    size: @9       algn: 8        retn: @804    
                         prms: @2394   
@2392   function_decl    name: @2395    type: @2396    srcp: <built-in>:0      
                         note: artificial              chan: @2397   
                         lang: C        body: undefined 
                         link: extern  
@2393   tree_list        valu: @2262    chan: @2398   
@2394   tree_list        valu: @2316    chan: @2399   
@2395   identifier_node  strg: __sync_bool_compare_and_swap_4 
                         lngt: 30      
@2396   function_type    size: @9       algn: 8        retn: @804    
                         prms: @2400   
@2397   function_decl    name: @2401    type: @2402    srcp: <built-in>:0      
                         note: artificial              chan: @2403   
                         lang: C        body: undefined 
                         link: extern  
@2398   tree_list        valu: @2262    chan: @45     
@2399   tree_list        valu: @503     chan: @2404   
@2400   tree_list        valu: @2316    chan: @2405   
@2401   identifier_node  strg: __sync_bool_compare_and_swap_2 
                         lngt: 30      
@2402   function_type    size: @9       algn: 8        retn: @804    
                         prms: @2406   
@2403   function_decl    name: @2407    type: @2408    srcp: <built-in>:0      
                         note: artificial              chan: @2409   
                         lang: C        body: undefined 
                         link: extern  
@2404   tree_list        valu: @503     chan: @45     
@2405   tree_list        valu: @243     chan: @2410   
@2406   tree_list        valu: @2316    chan: @2411   
@2407   identifier_node  strg: __sync_bool_compare_and_swap_1 
                         lngt: 30      
@2408   function_type    size: @9       algn: 8        retn: @804    
                         prms: @2412   
@2409   function_decl    name: @2413    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2414   
                         lang: C        body: undefined 
                         link: extern  
@2410   tree_list        valu: @243     chan: @45     
@2411   tree_list        valu: @557     chan: @2415   
@2412   tree_list        valu: @2316    chan: @2416   
@2413   identifier_node  strg: __sync_bool_compare_and_swap 
                         lngt: 28      
@2414   function_decl    name: @2417    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2418   
                         lang: C        body: undefined 
                         link: extern  
@2415   tree_list        valu: @557     chan: @45     
@2416   tree_list        valu: @255     chan: @2419   
@2417   identifier_node  strg: __sync_nand_and_fetch_16 
                         lngt: 24      
@2418   function_decl    name: @2420    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2421   
                         lang: C        body: undefined 
                         link: extern  
@2419   tree_list        valu: @255     chan: @45     
@2420   identifier_node  strg: __sync_nand_and_fetch_8 lngt: 23      
@2421   function_decl    name: @2422    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2423   
                         lang: C        body: undefined 
                         link: extern  
@2422   identifier_node  strg: __sync_nand_and_fetch_4 lngt: 23      
@2423   function_decl    name: @2424    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2425   
                         lang: C        body: undefined 
                         link: extern  
@2424   identifier_node  strg: __sync_nand_and_fetch_2 lngt: 23      
@2425   function_decl    name: @2426    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2427   
                         lang: C        body: undefined 
                         link: extern  
@2426   identifier_node  strg: __sync_nand_and_fetch_1 lngt: 23      
@2427   function_decl    name: @2428    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2429   
                         lang: C        body: undefined 
                         link: extern  
@2428   identifier_node  strg: __sync_nand_and_fetch   lngt: 21      
@2429   function_decl    name: @2430    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2431   
                         lang: C        body: undefined 
                         link: extern  
@2430   identifier_node  strg: __sync_xor_and_fetch_16 lngt: 23      
@2431   function_decl    name: @2432    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2433   
                         lang: C        body: undefined 
                         link: extern  
@2432   identifier_node  strg: __sync_xor_and_fetch_8  lngt: 22      
@2433   function_decl    name: @2434    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2435   
                         lang: C        body: undefined 
                         link: extern  
@2434   identifier_node  strg: __sync_xor_and_fetch_4  lngt: 22      
@2435   function_decl    name: @2436    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2437   
                         lang: C        body: undefined 
                         link: extern  
@2436   identifier_node  strg: __sync_xor_and_fetch_2  lngt: 22      
@2437   function_decl    name: @2438    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2439   
                         lang: C        body: undefined 
                         link: extern  
@2438   identifier_node  strg: __sync_xor_and_fetch_1  lngt: 22      
@2439   function_decl    name: @2440    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2441   
                         lang: C        body: undefined 
                         link: extern  
@2440   identifier_node  strg: __sync_xor_and_fetch    lngt: 20      
@2441   function_decl    name: @2442    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2443   
                         lang: C        body: undefined 
                         link: extern  
@2442   identifier_node  strg: __sync_and_and_fetch_16 lngt: 23      
@2443   function_decl    name: @2444    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2445   
                         lang: C        body: undefined 
                         link: extern  
@2444   identifier_node  strg: __sync_and_and_fetch_8  lngt: 22      
@2445   function_decl    name: @2446    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2447   
                         lang: C        body: undefined 
                         link: extern  
@2446   identifier_node  strg: __sync_and_and_fetch_4  lngt: 22      
@2447   function_decl    name: @2448    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2449   
                         lang: C        body: undefined 
                         link: extern  
@2448   identifier_node  strg: __sync_and_and_fetch_2  lngt: 22      
@2449   function_decl    name: @2450    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2451   
                         lang: C        body: undefined 
                         link: extern  
@2450   identifier_node  strg: __sync_and_and_fetch_1  lngt: 22      
@2451   function_decl    name: @2452    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2453   
                         lang: C        body: undefined 
                         link: extern  
@2452   identifier_node  strg: __sync_and_and_fetch    lngt: 20      
@2453   function_decl    name: @2454    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2455   
                         lang: C        body: undefined 
                         link: extern  
@2454   identifier_node  strg: __sync_or_and_fetch_16  lngt: 22      
@2455   function_decl    name: @2456    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2457   
                         lang: C        body: undefined 
                         link: extern  
@2456   identifier_node  strg: __sync_or_and_fetch_8   lngt: 21      
@2457   function_decl    name: @2458    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2459   
                         lang: C        body: undefined 
                         link: extern  
@2458   identifier_node  strg: __sync_or_and_fetch_4   lngt: 21      
@2459   function_decl    name: @2460    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2461   
                         lang: C        body: undefined 
                         link: extern  
@2460   identifier_node  strg: __sync_or_and_fetch_2   lngt: 21      
@2461   function_decl    name: @2462    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2463   
                         lang: C        body: undefined 
                         link: extern  
@2462   identifier_node  strg: __sync_or_and_fetch_1   lngt: 21      
@2463   function_decl    name: @2464    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2465   
                         lang: C        body: undefined 
                         link: extern  
@2464   identifier_node  strg: __sync_or_and_fetch     lngt: 19      
@2465   function_decl    name: @2466    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2467   
                         lang: C        body: undefined 
                         link: extern  
@2466   identifier_node  strg: __sync_sub_and_fetch_16 lngt: 23      
@2467   function_decl    name: @2468    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2469   
                         lang: C        body: undefined 
                         link: extern  
@2468   identifier_node  strg: __sync_sub_and_fetch_8  lngt: 22      
@2469   function_decl    name: @2470    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2471   
                         lang: C        body: undefined 
                         link: extern  
@2470   identifier_node  strg: __sync_sub_and_fetch_4  lngt: 22      
@2471   function_decl    name: @2472    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2473   
                         lang: C        body: undefined 
                         link: extern  
@2472   identifier_node  strg: __sync_sub_and_fetch_2  lngt: 22      
@2473   function_decl    name: @2474    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2475   
                         lang: C        body: undefined 
                         link: extern  
@2474   identifier_node  strg: __sync_sub_and_fetch_1  lngt: 22      
@2475   function_decl    name: @2476    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2477   
                         lang: C        body: undefined 
                         link: extern  
@2476   identifier_node  strg: __sync_sub_and_fetch    lngt: 20      
@2477   function_decl    name: @2478    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2479   
                         lang: C        body: undefined 
                         link: extern  
@2478   identifier_node  strg: __sync_add_and_fetch_16 lngt: 23      
@2479   function_decl    name: @2480    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2481   
                         lang: C        body: undefined 
                         link: extern  
@2480   identifier_node  strg: __sync_add_and_fetch_8  lngt: 22      
@2481   function_decl    name: @2482    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2483   
                         lang: C        body: undefined 
                         link: extern  
@2482   identifier_node  strg: __sync_add_and_fetch_4  lngt: 22      
@2483   function_decl    name: @2484    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2485   
                         lang: C        body: undefined 
                         link: extern  
@2484   identifier_node  strg: __sync_add_and_fetch_2  lngt: 22      
@2485   function_decl    name: @2486    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2487   
                         lang: C        body: undefined 
                         link: extern  
@2486   identifier_node  strg: __sync_add_and_fetch_1  lngt: 22      
@2487   function_decl    name: @2488    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2489   
                         lang: C        body: undefined 
                         link: extern  
@2488   identifier_node  strg: __sync_add_and_fetch    lngt: 20      
@2489   function_decl    name: @2490    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2491   
                         lang: C        body: undefined 
                         link: extern  
@2490   identifier_node  strg: __sync_fetch_and_nand_16 
                         lngt: 24      
@2491   function_decl    name: @2492    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2493   
                         lang: C        body: undefined 
                         link: extern  
@2492   identifier_node  strg: __sync_fetch_and_nand_8 lngt: 23      
@2493   function_decl    name: @2494    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2495   
                         lang: C        body: undefined 
                         link: extern  
@2494   identifier_node  strg: __sync_fetch_and_nand_4 lngt: 23      
@2495   function_decl    name: @2496    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2497   
                         lang: C        body: undefined 
                         link: extern  
@2496   identifier_node  strg: __sync_fetch_and_nand_2 lngt: 23      
@2497   function_decl    name: @2498    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2499   
                         lang: C        body: undefined 
                         link: extern  
@2498   identifier_node  strg: __sync_fetch_and_nand_1 lngt: 23      
@2499   function_decl    name: @2500    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2501   
                         lang: C        body: undefined 
                         link: extern  
@2500   identifier_node  strg: __sync_fetch_and_nand   lngt: 21      
@2501   function_decl    name: @2502    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2503   
                         lang: C        body: undefined 
                         link: extern  
@2502   identifier_node  strg: __sync_fetch_and_xor_16 lngt: 23      
@2503   function_decl    name: @2504    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2505   
                         lang: C        body: undefined 
                         link: extern  
@2504   identifier_node  strg: __sync_fetch_and_xor_8  lngt: 22      
@2505   function_decl    name: @2506    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2507   
                         lang: C        body: undefined 
                         link: extern  
@2506   identifier_node  strg: __sync_fetch_and_xor_4  lngt: 22      
@2507   function_decl    name: @2508    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2509   
                         lang: C        body: undefined 
                         link: extern  
@2508   identifier_node  strg: __sync_fetch_and_xor_2  lngt: 22      
@2509   function_decl    name: @2510    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2511   
                         lang: C        body: undefined 
                         link: extern  
@2510   identifier_node  strg: __sync_fetch_and_xor_1  lngt: 22      
@2511   function_decl    name: @2512    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2513   
                         lang: C        body: undefined 
                         link: extern  
@2512   identifier_node  strg: __sync_fetch_and_xor    lngt: 20      
@2513   function_decl    name: @2514    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2515   
                         lang: C        body: undefined 
                         link: extern  
@2514   identifier_node  strg: __sync_fetch_and_and_16 lngt: 23      
@2515   function_decl    name: @2516    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2517   
                         lang: C        body: undefined 
                         link: extern  
@2516   identifier_node  strg: __sync_fetch_and_and_8  lngt: 22      
@2517   function_decl    name: @2518    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2519   
                         lang: C        body: undefined 
                         link: extern  
@2518   identifier_node  strg: __sync_fetch_and_and_4  lngt: 22      
@2519   function_decl    name: @2520    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2521   
                         lang: C        body: undefined 
                         link: extern  
@2520   identifier_node  strg: __sync_fetch_and_and_2  lngt: 22      
@2521   function_decl    name: @2522    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2523   
                         lang: C        body: undefined 
                         link: extern  
@2522   identifier_node  strg: __sync_fetch_and_and_1  lngt: 22      
@2523   function_decl    name: @2524    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2525   
                         lang: C        body: undefined 
                         link: extern  
@2524   identifier_node  strg: __sync_fetch_and_and    lngt: 20      
@2525   function_decl    name: @2526    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2527   
                         lang: C        body: undefined 
                         link: extern  
@2526   identifier_node  strg: __sync_fetch_and_or_16  lngt: 22      
@2527   function_decl    name: @2528    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2529   
                         lang: C        body: undefined 
                         link: extern  
@2528   identifier_node  strg: __sync_fetch_and_or_8   lngt: 21      
@2529   function_decl    name: @2530    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2531   
                         lang: C        body: undefined 
                         link: extern  
@2530   identifier_node  strg: __sync_fetch_and_or_4   lngt: 21      
@2531   function_decl    name: @2532    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2533   
                         lang: C        body: undefined 
                         link: extern  
@2532   identifier_node  strg: __sync_fetch_and_or_2   lngt: 21      
@2533   function_decl    name: @2534    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2535   
                         lang: C        body: undefined 
                         link: extern  
@2534   identifier_node  strg: __sync_fetch_and_or_1   lngt: 21      
@2535   function_decl    name: @2536    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2537   
                         lang: C        body: undefined 
                         link: extern  
@2536   identifier_node  strg: __sync_fetch_and_or     lngt: 19      
@2537   function_decl    name: @2538    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2539   
                         lang: C        body: undefined 
                         link: extern  
@2538   identifier_node  strg: __sync_fetch_and_sub_16 lngt: 23      
@2539   function_decl    name: @2540    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2541   
                         lang: C        body: undefined 
                         link: extern  
@2540   identifier_node  strg: __sync_fetch_and_sub_8  lngt: 22      
@2541   function_decl    name: @2542    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2543   
                         lang: C        body: undefined 
                         link: extern  
@2542   identifier_node  strg: __sync_fetch_and_sub_4  lngt: 22      
@2543   function_decl    name: @2544    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2545   
                         lang: C        body: undefined 
                         link: extern  
@2544   identifier_node  strg: __sync_fetch_and_sub_2  lngt: 22      
@2545   function_decl    name: @2546    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2547   
                         lang: C        body: undefined 
                         link: extern  
@2546   identifier_node  strg: __sync_fetch_and_sub_1  lngt: 22      
@2547   function_decl    name: @2548    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2549   
                         lang: C        body: undefined 
                         link: extern  
@2548   identifier_node  strg: __sync_fetch_and_sub    lngt: 20      
@2549   function_decl    name: @2550    type: @2328    srcp: <built-in>:0      
                         note: artificial              chan: @2551   
                         lang: C        body: undefined 
                         link: extern  
@2550   identifier_node  strg: __sync_fetch_and_add_16 lngt: 23      
@2551   function_decl    name: @2552    type: @2332    srcp: <built-in>:0      
                         note: artificial              chan: @2553   
                         lang: C        body: undefined 
                         link: extern  
@2552   identifier_node  strg: __sync_fetch_and_add_8  lngt: 22      
@2553   function_decl    name: @2554    type: @2337    srcp: <built-in>:0      
                         note: artificial              chan: @2555   
                         lang: C        body: undefined 
                         link: extern  
@2554   identifier_node  strg: __sync_fetch_and_add_4  lngt: 22      
@2555   function_decl    name: @2556    type: @2342    srcp: <built-in>:0      
                         note: artificial              chan: @2557   
                         lang: C        body: undefined 
                         link: extern  
@2556   identifier_node  strg: __sync_fetch_and_add_2  lngt: 22      
@2557   function_decl    name: @2558    type: @2347    srcp: <built-in>:0      
                         note: artificial              chan: @2559   
                         lang: C        body: undefined 
                         link: extern  
@2558   identifier_node  strg: __sync_fetch_and_add_1  lngt: 22      
@2559   function_decl    name: @2560    type: @2325    srcp: <built-in>:0      
                         note: artificial              chan: @2561   
                         lang: C        body: undefined 
                         link: extern  
@2560   identifier_node  strg: __sync_fetch_and_add    lngt: 20      
@2561   function_decl    name: @2562    type: @2563    srcp: <built-in>:0      
                         note: artificial              chan: @2564   
                         lang: C        body: undefined 
                         link: extern  
@2562   identifier_node  strg: __vprintf_chk           lngt: 13      
@2563   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2565   
@2564   function_decl    name: @2566    mngl: @2562    type: @2563   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2567    lang: C        body: undefined 
                         link: extern  
@2565   tree_list        valu: @10      chan: @2568   
@2566   identifier_node  strg: __builtin___vprintf_chk lngt: 23      
@2567   function_decl    name: @2569    type: @2570    srcp: <built-in>:0      
                         note: artificial              chan: @2571   
                         lang: C        body: undefined 
                         link: extern  
@2568   tree_list        valu: @89      chan: @2572   
@2569   identifier_node  strg: __vfprintf_chk          lngt: 14      
@2570   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2573   
@2571   function_decl    name: @2574    mngl: @2569    type: @2570   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2575    lang: C        body: undefined 
                         link: extern  
@2572   tree_list        valu: @2576    chan: @45     
@2573   tree_list        valu: @2577    chan: @2578   
@2574   identifier_node  strg: __builtin___vfprintf_chk 
                         lngt: 24      
@2575   function_decl    name: @2579    type: @2580    srcp: <built-in>:0      
                         note: artificial              chan: @2581   
                         lang: C        body: undefined 
                         link: extern  
@2576   pointer_type     name: @2582    unql: @47      size: @18     
                         algn: 32       ptd : @63     
@2577   pointer_type     unql: @55      size: @18      algn: 32      
                         ptd : @19     
@2578   tree_list        valu: @10      chan: @2583   
@2579   identifier_node  strg: __printf_chk            lngt: 12      
@2580   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2584   
@2581   function_decl    name: @2585    mngl: @2579    type: @2580   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2586    lang: C        body: undefined 
                         link: extern  
@2582   type_decl        name: @2587    type: @2576    srcp: <built-in>:0      
                         chan: @2228   
@2583   tree_list        valu: @89      chan: @2588   
@2584   tree_list        valu: @10      chan: @2589   
@2585   identifier_node  strg: __builtin___printf_chk  lngt: 22      
@2586   function_decl    name: @2590    type: @2591    srcp: <built-in>:0      
                         note: artificial              chan: @2592   
                         lang: C        body: undefined 
                         link: extern  
@2587   identifier_node  strg: __builtin_va_list       lngt: 17      
@2588   tree_list        valu: @2576    chan: @45     
@2589   tree_list        valu: @89     
@2590   identifier_node  strg: __fprintf_chk           lngt: 13      
@2591   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2593   
@2592   function_decl    name: @2594    mngl: @2590    type: @2591   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2595    lang: C        body: undefined 
                         link: extern  
@2593   tree_list        valu: @2577    chan: @2596   
@2594   identifier_node  strg: __builtin___fprintf_chk lngt: 23      
@2595   function_decl    name: @2597    type: @2598    srcp: <built-in>:0      
                         note: artificial              chan: @2599   
                         lang: C        body: undefined 
                         link: extern  
@2596   tree_list        valu: @10      chan: @2600   
@2597   identifier_node  strg: __vsprintf_chk          lngt: 14      
@2598   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2601   
@2599   function_decl    name: @2602    mngl: @2597    type: @2598   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2603    lang: C        body: undefined 
                         link: extern  
@2600   tree_list        valu: @89     
@2601   tree_list        valu: @47      chan: @2604   
@2602   identifier_node  strg: __builtin___vsprintf_chk 
                         lngt: 24      
@2603   function_decl    name: @2605    type: @2606    srcp: <built-in>:0      
                         note: artificial              chan: @2607   
                         lang: C        body: undefined 
                         link: extern  
@2604   tree_list        valu: @10      chan: @2608   
@2605   identifier_node  strg: __vsnprintf_chk         lngt: 15      
@2606   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2609   
@2607   function_decl    name: @2610    mngl: @2605    type: @2606   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2611    lang: C        body: undefined 
                         link: extern  
@2608   tree_list        valu: @120     chan: @2612   
@2609   tree_list        valu: @47      chan: @2613   
@2610   identifier_node  strg: __builtin___vsnprintf_chk 
                         lngt: 25      
@2611   function_decl    name: @2614    type: @2615    srcp: <built-in>:0      
                         note: artificial              chan: @2616   
                         lang: C        body: undefined 
                         link: extern  
@2612   tree_list        valu: @89      chan: @2617   
@2613   tree_list        valu: @120     chan: @2618   
@2614   identifier_node  strg: __sprintf_chk           lngt: 13      
@2615   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2619   
@2616   function_decl    name: @2620    mngl: @2614    type: @2615   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2621    lang: C        body: undefined 
                         link: extern  
@2617   tree_list        valu: @2576    chan: @45     
@2618   tree_list        valu: @10      chan: @2622   
@2619   tree_list        valu: @47      chan: @2623   
@2620   identifier_node  strg: __builtin___sprintf_chk lngt: 23      
@2621   function_decl    name: @2624    type: @2625    srcp: <built-in>:0      
                         note: artificial              chan: @2626   
                         lang: C        body: undefined 
                         link: extern  
@2622   tree_list        valu: @120     chan: @2627   
@2623   tree_list        valu: @10      chan: @2628   
@2624   identifier_node  strg: __snprintf_chk          lngt: 14      
@2625   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2629   
@2626   function_decl    name: @2630    mngl: @2624    type: @2625   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2631    lang: C        body: undefined 
                         link: extern  
@2627   tree_list        valu: @89      chan: @2632   
@2628   tree_list        valu: @120     chan: @2633   
@2629   tree_list        valu: @47      chan: @2634   
@2630   identifier_node  strg: __builtin___snprintf_chk 
                         lngt: 24      
@2631   function_decl    name: @2635    type: @2636    srcp: <built-in>:0      
                         note: artificial              chan: @2637   
                         lang: C        body: undefined 
                         link: extern  
@2632   tree_list        valu: @2576    chan: @45     
@2633   tree_list        valu: @89     
@2634   tree_list        valu: @120     chan: @2638   
@2635   identifier_node  strg: __strncpy_chk           lngt: 13      
@2636   function_type    size: @9       algn: 8        retn: @47     
                         prms: @2639   
@2637   function_decl    name: @2640    mngl: @2635    type: @2636   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2641    lang: C        body: undefined 
                         link: extern  
@2638   tree_list        valu: @10      chan: @2642   
@2639   tree_list        valu: @47      chan: @2643   
@2640   identifier_node  strg: __builtin___strncpy_chk lngt: 23      
@2641   function_decl    name: @2644    type: @2636    srcp: <built-in>:0      
                         note: artificial              chan: @2645   
                         lang: C        body: undefined 
                         link: extern  
@2642   tree_list        valu: @120     chan: @2646   
@2643   tree_list        valu: @89      chan: @2647   
@2644   identifier_node  strg: __strncat_chk           lngt: 13      
@2645   function_decl    name: @2648    mngl: @2644    type: @2636   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2649    lang: C        body: undefined 
                         link: extern  
@2646   tree_list        valu: @89     
@2647   tree_list        valu: @120     chan: @2650   
@2648   identifier_node  strg: __builtin___strncat_chk lngt: 23      
@2649   function_decl    name: @2651    type: @2652    srcp: <built-in>:0      
                         note: artificial              chan: @2653   
                         lang: C        body: undefined 
                         link: extern  
@2650   tree_list        valu: @120     chan: @45     
@2651   identifier_node  strg: __strcpy_chk            lngt: 12      
@2652   function_type    size: @9       algn: 8        retn: @47     
                         prms: @2654   
@2653   function_decl    name: @2655    mngl: @2651    type: @2652   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2656    lang: C        body: undefined 
                         link: extern  
@2654   tree_list        valu: @47      chan: @2657   
@2655   identifier_node  strg: __builtin___strcpy_chk  lngt: 22      
@2656   function_decl    name: @2658    type: @2652    srcp: <built-in>:0      
                         note: artificial              chan: @2659   
                         lang: C        body: undefined 
                         link: extern  
@2657   tree_list        valu: @89      chan: @2660   
@2658   identifier_node  strg: __strcat_chk            lngt: 12      
@2659   function_decl    name: @2661    mngl: @2658    type: @2652   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2662    lang: C        body: undefined 
                         link: extern  
@2660   tree_list        valu: @120     chan: @45     
@2661   identifier_node  strg: __builtin___strcat_chk  lngt: 22      
@2662   function_decl    name: @2663    type: @2652    srcp: <built-in>:0      
                         note: artificial              chan: @2664   
                         lang: C        body: undefined 
                         link: extern  
@2663   identifier_node  strg: __stpcpy_chk            lngt: 12      
@2664   function_decl    name: @2665    mngl: @2663    type: @2652   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2666    lang: C        body: undefined 
                         link: extern  
@2665   identifier_node  strg: __builtin___stpcpy_chk  lngt: 22      
@2666   function_decl    name: @2667    type: @2668    srcp: <built-in>:0      
                         note: artificial              chan: @2669   
                         lang: C        body: undefined 
                         link: extern  
@2667   identifier_node  strg: __memset_chk            lngt: 12      
@2668   function_type    size: @9       algn: 8        retn: @55     
                         prms: @2670   
@2669   function_decl    name: @2671    mngl: @2667    type: @2668   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2672    lang: C        body: undefined 
                         link: extern  
@2670   tree_list        valu: @55      chan: @2673   
@2671   identifier_node  strg: __builtin___memset_chk  lngt: 22      
@2672   function_decl    name: @2674    type: @2675    srcp: <built-in>:0      
                         note: artificial              chan: @2676   
                         lang: C        body: undefined 
                         link: extern  
@2673   tree_list        valu: @10      chan: @2677   
@2674   identifier_node  strg: __mempcpy_chk           lngt: 13      
@2675   function_type    size: @9       algn: 8        retn: @55     
                         prms: @2678   
@2676   function_decl    name: @2679    mngl: @2674    type: @2675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2680    lang: C        body: undefined 
                         link: extern  
@2677   tree_list        valu: @120     chan: @2681   
@2678   tree_list        valu: @55      chan: @2682   
@2679   identifier_node  strg: __builtin___mempcpy_chk lngt: 23      
@2680   function_decl    name: @2683    type: @2675    srcp: <built-in>:0      
                         note: artificial              chan: @2684   
                         lang: C        body: undefined 
                         link: extern  
@2681   tree_list        valu: @120     chan: @45     
@2682   tree_list        valu: @1429    chan: @2685   
@2683   identifier_node  strg: __memmove_chk           lngt: 13      
@2684   function_decl    name: @2686    mngl: @2683    type: @2675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2687    lang: C        body: undefined 
                         link: extern  
@2685   tree_list        valu: @120     chan: @2688   
@2686   identifier_node  strg: __builtin___memmove_chk lngt: 23      
@2687   function_decl    name: @2689    type: @2675    srcp: <built-in>:0      
                         note: artificial              chan: @2690   
                         lang: C        body: undefined 
                         link: extern  
@2688   tree_list        valu: @120     chan: @45     
@2689   identifier_node  strg: __memcpy_chk            lngt: 12      
@2690   function_decl    name: @2691    mngl: @2689    type: @2675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2692    lang: C        body: undefined 
                         link: extern  
@2691   identifier_node  strg: __builtin___memcpy_chk  lngt: 22      
@2692   function_decl    name: @2693    type: @2694    srcp: <built-in>:0      
                         note: artificial              chan: @2695   
                         lang: C        body: undefined 
                         link: extern  
@2693   identifier_node  strg: __builtin_object_size   lngt: 21      
@2694   function_type    size: @9       algn: 8        retn: @120    
                         prms: @2696   
@2695   function_decl    name: @2697    type: @2698    srcp: <built-in>:0      
                         note: artificial              chan: @2699   
                         lang: C        body: undefined 
                         link: extern  
@2696   tree_list        valu: @1429    chan: @2700   
@2697   identifier_node  strg: _Exit    lngt: 5       
@2698   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2701   
@2699   function_decl    name: @2702    mngl: @2697    type: @2698   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2703    lang: C        body: undefined 
                         link: extern  
@2700   tree_list        valu: @10      chan: @45     
@2701   tree_list        valu: @10      chan: @45     
@2702   identifier_node  strg: __builtin__Exit         lngt: 15      
@2703   function_decl    name: @2704    type: @2698    srcp: <built-in>:0      
                         note: artificial              chan: @2705   
                         lang: C        body: undefined 
                         link: extern  
@2704   identifier_node  strg: _exit    lngt: 5       
@2705   function_decl    name: @2706    mngl: @2704    type: @2698   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2707    lang: C        body: undefined 
                         link: extern  
@2706   identifier_node  strg: __builtin__exit         lngt: 15      
@2707   function_decl    name: @2708    type: @2709    srcp: <built-in>:0      
                         note: artificial              chan: @2710   
                         lang: C        body: undefined 
                         link: extern  
@2708   identifier_node  strg: __builtin_va_start      lngt: 18      
@2709   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2711   
@2710   function_decl    name: @2712    type: @2713    srcp: <built-in>:0      
                         note: artificial              chan: @2714   
                         lang: C        body: undefined 
                         link: extern  
@2711   tree_list        valu: @2715   
@2712   identifier_node  strg: __builtin_va_end        lngt: 16      
@2713   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2716   
@2714   function_decl    name: @2717    type: @2718    srcp: <built-in>:0      
                         note: artificial              chan: @2719   
                         lang: C        body: undefined 
                         link: extern  
@2715   reference_type   size: @18      algn: 32       refd: @2576   
@2716   tree_list        valu: @2715    chan: @45     
@2717   identifier_node  strg: __builtin_va_copy       lngt: 17      
@2718   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2720   
@2719   function_decl    name: @2721    type: @2722    srcp: <built-in>:0      
                         note: artificial              chan: @2723   
                         lang: C        body: undefined 
                         link: extern  
@2720   tree_list        valu: @2715    chan: @2724   
@2721   identifier_node  strg: __builtin_update_setjmp_buf 
                         lngt: 27      
@2722   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2725   
@2723   function_decl    name: @2726    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @2727   
                         lang: C        body: undefined 
                         link: extern  
@2724   tree_list        valu: @2576    chan: @45     
@2725   tree_list        valu: @55      chan: @2728   
@2726   identifier_node  strg: __builtin_unwind_init   lngt: 21      
@2727   function_decl    name: @2729    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @2730   
                         lang: C        body: undefined 
                         link: extern  
@2728   tree_list        valu: @10      chan: @45     
@2729   identifier_node  strg: __builtin_trap          lngt: 14      
@2730   function_decl    name: @2731    type: @2732    srcp: <built-in>:0      
                         note: artificial              chan: @2733   
                         lang: C        body: undefined 
                         link: extern  
@2731   identifier_node  strg: strftime lngt: 8       
@2732   function_type    size: @9       algn: 8        retn: @120    
                         prms: @2734   
@2733   function_decl    name: @2735    mngl: @2731    type: @2732   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2736    lang: C        body: undefined 
                         link: extern  
@2734   tree_list        valu: @47      chan: @2737   
@2735   identifier_node  strg: __builtin_strftime      lngt: 18      
@2736   function_decl    name: @2738    type: @2739    srcp: <built-in>:0      
                         note: artificial              chan: @2740   
                         lang: C        body: undefined 
                         link: extern  
@2737   tree_list        valu: @120     chan: @2741   
@2738   identifier_node  strg: strfmon  lngt: 7       
@2739   function_type    size: @9       algn: 8        retn: @91     
                         prms: @2742   
@2740   function_decl    name: @2743    mngl: @2738    type: @2739   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2744    lang: C        body: undefined 
                         link: extern  
@2741   tree_list        valu: @89      chan: @2745   
@2742   tree_list        valu: @47      chan: @2746   
@2743   identifier_node  strg: __builtin_strfmon       lngt: 17      
@2744   function_decl    name: @2747    type: @2709    srcp: <built-in>:0      
                         note: artificial              chan: @2748   
                         lang: C        body: undefined 
                         link: extern  
@2745   tree_list        valu: @1429    chan: @45     
@2746   tree_list        valu: @120     chan: @2749   
@2747   identifier_node  strg: __builtin_stdarg_start  lngt: 22      
@2748   function_decl    name: @2750    type: @2751    srcp: <built-in>:0      
                         note: artificial              chan: @2752   
                         lang: C        body: undefined 
                         link: extern  
@2749   tree_list        valu: @89     
@2750   identifier_node  strg: __builtin_setjmp        lngt: 16      
@2751   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2753   
@2752   function_decl    name: @2754    type: @2755    srcp: <built-in>:0      
                         note: artificial              chan: @2756   
                         lang: C        body: undefined 
                         link: extern  
@2753   tree_list        valu: @55      chan: @45     
@2754   identifier_node  strg: __builtin_saveregs      lngt: 18      
@2755   function_type    size: @9       algn: 8        retn: @55     
@2756   function_decl    name: @2757    type: @2758    srcp: <built-in>:0      
                         note: artificial              chan: @2759   
                         lang: C        body: undefined 
                         link: extern  
@2757   identifier_node  strg: __builtin_return_address 
                         lngt: 24      
@2758   function_type    size: @9       algn: 8        retn: @55     
                         prms: @2760   
@2759   function_decl    name: @2761    type: @465     srcp: <built-in>:0      
                         note: artificial              chan: @2762   
                         lang: C        body: undefined 
                         link: extern  
@2760   tree_list        valu: @243     chan: @45     
@2761   identifier_node  strg: __builtin_return        lngt: 16      
@2762   function_decl    name: @2763    type: @2764    srcp: <built-in>:0      
                         note: artificial              chan: @2765   
                         lang: C        body: undefined 
                         link: extern  
@2763   identifier_node  strg: __builtin_prefetch      lngt: 18      
@2764   function_type    size: @9       algn: 8        retn: @19     
                         prms: @2766   
@2765   function_decl    name: @2767    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @2769   
                         lang: C        body: undefined 
                         link: extern  
@2766   tree_list        valu: @1429   
@2767   identifier_node  strg: __builtin_popcountll    lngt: 20      
@2768   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2770   
@2769   function_decl    name: @2771    type: @2772    srcp: <built-in>:0      
                         note: artificial              chan: @2773   
                         lang: C        body: undefined 
                         link: extern  
@2770   tree_list        valu: @503     chan: @45     
@2771   identifier_node  strg: __builtin_popcountl     lngt: 19      
@2772   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2774   
@2773   function_decl    name: @2775    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @2776   
                         lang: C        body: undefined 
                         link: extern  
@2774   tree_list        valu: @120     chan: @45     
@2775   identifier_node  strg: __builtin_popcountimax  lngt: 22      
@2776   function_decl    name: @2777    type: @2778    srcp: <built-in>:0      
                         note: artificial              chan: @2779   
                         lang: C        body: undefined 
                         link: extern  
@2777   identifier_node  strg: __builtin_popcount      lngt: 18      
@2778   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2780   
@2779   function_decl    name: @2781    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @2782   
                         lang: C        body: undefined 
                         link: extern  
@2780   tree_list        valu: @243     chan: @45     
@2781   identifier_node  strg: __builtin_parityll      lngt: 18      
@2782   function_decl    name: @2783    type: @2772    srcp: <built-in>:0      
                         note: artificial              chan: @2784   
                         lang: C        body: undefined 
                         link: extern  
@2783   identifier_node  strg: __builtin_parityl       lngt: 17      
@2784   function_decl    name: @2785    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @2786   
                         lang: C        body: undefined 
                         link: extern  
@2785   identifier_node  strg: __builtin_parityimax    lngt: 20      
@2786   function_decl    name: @2787    type: @2778    srcp: <built-in>:0      
                         note: artificial              chan: @2788   
                         lang: C        body: undefined 
                         link: extern  
@2787   identifier_node  strg: __builtin_parity        lngt: 16      
@2788   function_decl    name: @2789    type: @2755    srcp: <built-in>:0      
                         note: artificial              chan: @2790   
                         lang: C        body: undefined 
                         link: extern  
@2789   identifier_node  strg: __builtin_next_arg      lngt: 18      
@2790   function_decl    name: @2791    type: @1313    srcp: <built-in>:0      
                         note: artificial              chan: @2792   
                         lang: C        body: undefined 
                         link: extern  
@2791   identifier_node  strg: malloc   lngt: 6       
@2792   function_decl    name: @2793    mngl: @2791    type: @1313   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2794    lang: C        body: undefined 
                         link: extern  
@2793   identifier_node  strg: __builtin_malloc        lngt: 16      
@2794   function_decl    name: @2795    type: @2722    srcp: <built-in>:0      
                         note: artificial              chan: @2796   
                         lang: C        body: undefined 
                         link: extern  
@2795   identifier_node  strg: __builtin_longjmp       lngt: 17      
@2796   function_decl    name: @2797    type: @2798    srcp: <built-in>:0      
                         note: artificial              chan: @2799   
                         lang: C        body: undefined 
                         link: extern  
@2797   identifier_node  strg: llabs    lngt: 5       
@2798   function_type    size: @9       algn: 8        retn: @434    
                         prms: @2800   
@2799   function_decl    name: @2801    mngl: @2797    type: @2798   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2802    lang: C        body: undefined 
                         link: extern  
@2800   tree_list        valu: @434     chan: @45     
@2801   identifier_node  strg: __builtin_llabs         lngt: 15      
@2802   function_decl    name: @2803    type: @2804    srcp: <built-in>:0      
                         note: artificial              chan: @2805   
                         lang: C        body: undefined 
                         link: extern  
@2803   identifier_node  strg: labs     lngt: 4       
@2804   function_type    size: @9       algn: 8        retn: @91     
                         prms: @2806   
@2805   function_decl    name: @2807    mngl: @2803    type: @2804   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2808    lang: C        body: undefined 
                         link: extern  
@2806   tree_list        valu: @91      chan: @45     
@2807   identifier_node  strg: __builtin_labs          lngt: 14      
@2808   function_decl    name: @2809    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2811   
                         lang: C        body: undefined 
                         link: extern  
@2809   identifier_node  strg: __builtin_isunordered   lngt: 21      
@2810   function_type    size: @9       algn: 8        retn: @10     
@2811   function_decl    name: @2812    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2813   
                         lang: C        body: undefined 
                         link: extern  
@2812   identifier_node  strg: __builtin_islessgreater lngt: 23      
@2813   function_decl    name: @2814    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2815   
                         lang: C        body: undefined 
                         link: extern  
@2814   identifier_node  strg: __builtin_islessequal   lngt: 21      
@2815   function_decl    name: @2816    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2817   
                         lang: C        body: undefined 
                         link: extern  
@2816   identifier_node  strg: __builtin_isless        lngt: 16      
@2817   function_decl    name: @2818    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2819   
                         lang: C        body: undefined 
                         link: extern  
@2818   identifier_node  strg: __builtin_isgreaterequal 
                         lngt: 24      
@2819   function_decl    name: @2820    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2821   
                         lang: C        body: undefined 
                         link: extern  
@2820   identifier_node  strg: __builtin_isgreater     lngt: 19      
@2821   function_decl    name: @2822    type: @2823    srcp: <built-in>:0      
                         note: artificial              chan: @2824   
                         lang: C        body: undefined 
                         link: extern  
@2822   identifier_node  strg: isnand128               lngt: 9       
@2823   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2825   
@2824   function_decl    name: @2826    mngl: @2822    type: @2823   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2827    lang: C        body: undefined 
                         link: extern  
@2825   tree_list        valu: @2828    chan: @45     
@2826   identifier_node  strg: __builtin_isnand128     lngt: 19      
@2827   function_decl    name: @2829    type: @2830    srcp: <built-in>:0      
                         note: artificial              chan: @2831   
                         lang: C        body: undefined 
                         link: extern  
@2828   real_type        size: @254     algn: 128      prec: 128     
@2829   identifier_node  strg: isnand64 lngt: 8       
@2830   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2832   
@2831   function_decl    name: @2833    mngl: @2829    type: @2830   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2834    lang: C        body: undefined 
                         link: extern  
@2832   tree_list        valu: @2835    chan: @45     
@2833   identifier_node  strg: __builtin_isnand64      lngt: 18      
@2834   function_decl    name: @2836    type: @2837    srcp: <built-in>:0      
                         note: artificial              chan: @2838   
                         lang: C        body: undefined 
                         link: extern  
@2835   real_type        size: @41      algn: 64       prec: 64      
@2836   identifier_node  strg: isnand32 lngt: 8       
@2837   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2839   
@2838   function_decl    name: @2840    mngl: @2836    type: @2837   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2841    lang: C        body: undefined 
                         link: extern  
@2839   tree_list        valu: @2842    chan: @45     
@2840   identifier_node  strg: __builtin_isnand32      lngt: 18      
@2841   function_decl    name: @2843    type: @655     srcp: <built-in>:0      
                         note: artificial              chan: @2844   
                         lang: C        body: undefined 
                         link: extern  
@2842   real_type        size: @18      algn: 32       prec: 32      
@2843   identifier_node  strg: isnanl   lngt: 6       
@2844   function_decl    name: @2845    mngl: @2843    type: @655    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2846    lang: C        body: undefined 
                         link: extern  
@2845   identifier_node  strg: __builtin_isnanl        lngt: 16      
@2846   function_decl    name: @2847    type: @670     srcp: <built-in>:0      
                         note: artificial              chan: @2848   
                         lang: C        body: undefined 
                         link: extern  
@2847   identifier_node  strg: isnanf   lngt: 6       
@2848   function_decl    name: @2849    mngl: @2847    type: @670    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2850    lang: C        body: undefined 
                         link: extern  
@2849   identifier_node  strg: __builtin_isnanf        lngt: 16      
@2850   function_decl    name: @2851    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2852   
                         lang: C        body: undefined 
                         link: extern  
@2851   identifier_node  strg: isnan    lngt: 5       
@2852   function_decl    name: @2853    mngl: @2851    type: @2810   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2854    lang: C        body: undefined 
                         link: extern  
@2853   identifier_node  strg: __builtin_isnan         lngt: 15      
@2854   function_decl    name: @2855    type: @2823    srcp: <built-in>:0      
                         note: artificial              chan: @2856   
                         lang: C        body: undefined 
                         link: extern  
@2855   identifier_node  strg: isinfd128               lngt: 9       
@2856   function_decl    name: @2857    mngl: @2855    type: @2823   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2858    lang: C        body: undefined 
                         link: extern  
@2857   identifier_node  strg: __builtin_isinfd128     lngt: 19      
@2858   function_decl    name: @2859    type: @2830    srcp: <built-in>:0      
                         note: artificial              chan: @2860   
                         lang: C        body: undefined 
                         link: extern  
@2859   identifier_node  strg: isinfd64 lngt: 8       
@2860   function_decl    name: @2861    mngl: @2859    type: @2830   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2862    lang: C        body: undefined 
                         link: extern  
@2861   identifier_node  strg: __builtin_isinfd64      lngt: 18      
@2862   function_decl    name: @2863    type: @2837    srcp: <built-in>:0      
                         note: artificial              chan: @2864   
                         lang: C        body: undefined 
                         link: extern  
@2863   identifier_node  strg: isinfd32 lngt: 8       
@2864   function_decl    name: @2865    mngl: @2863    type: @2837   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2866    lang: C        body: undefined 
                         link: extern  
@2865   identifier_node  strg: __builtin_isinfd32      lngt: 18      
@2866   function_decl    name: @2867    type: @655     srcp: <built-in>:0      
                         note: artificial              chan: @2868   
                         lang: C        body: undefined 
                         link: extern  
@2867   identifier_node  strg: isinfl   lngt: 6       
@2868   function_decl    name: @2869    mngl: @2867    type: @655    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2870    lang: C        body: undefined 
                         link: extern  
@2869   identifier_node  strg: __builtin_isinfl        lngt: 16      
@2870   function_decl    name: @2871    type: @670     srcp: <built-in>:0      
                         note: artificial              chan: @2872   
                         lang: C        body: undefined 
                         link: extern  
@2871   identifier_node  strg: isinff   lngt: 6       
@2872   function_decl    name: @2873    mngl: @2871    type: @670    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2874    lang: C        body: undefined 
                         link: extern  
@2873   identifier_node  strg: __builtin_isinff        lngt: 16      
@2874   function_decl    name: @2875    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @2876   
                         lang: C        body: undefined 
                         link: extern  
@2875   identifier_node  strg: isinf    lngt: 5       
@2876   function_decl    name: @2877    mngl: @2875    type: @2810   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2878    lang: C        body: undefined 
                         link: extern  
@2877   identifier_node  strg: __builtin_isinf         lngt: 15      
@2878   function_decl    name: @2879    type: @2823    srcp: <built-in>:0      
                         note: artificial              chan: @2880   
                         lang: C        body: undefined 
                         link: extern  
@2879   identifier_node  strg: finited128              lngt: 10      
@2880   function_decl    name: @2881    mngl: @2879    type: @2823   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2882    lang: C        body: undefined 
                         link: extern  
@2881   identifier_node  strg: __builtin_finited128    lngt: 20      
@2882   function_decl    name: @2883    type: @2830    srcp: <built-in>:0      
                         note: artificial              chan: @2884   
                         lang: C        body: undefined 
                         link: extern  
@2883   identifier_node  strg: finited64               lngt: 9       
@2884   function_decl    name: @2885    mngl: @2883    type: @2830   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2886    lang: C        body: undefined 
                         link: extern  
@2885   identifier_node  strg: __builtin_finited64     lngt: 19      
@2886   function_decl    name: @2887    type: @2837    srcp: <built-in>:0      
                         note: artificial              chan: @2888   
                         lang: C        body: undefined 
                         link: extern  
@2887   identifier_node  strg: finited32               lngt: 9       
@2888   function_decl    name: @2889    mngl: @2887    type: @2837   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2890    lang: C        body: undefined 
                         link: extern  
@2889   identifier_node  strg: __builtin_finited32     lngt: 19      
@2890   function_decl    name: @2891    type: @655     srcp: <built-in>:0      
                         note: artificial              chan: @2892   
                         lang: C        body: undefined 
                         link: extern  
@2891   identifier_node  strg: finitel  lngt: 7       
@2892   function_decl    name: @2893    mngl: @2891    type: @655    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2894    lang: C        body: undefined 
                         link: extern  
@2893   identifier_node  strg: __builtin_finitel       lngt: 17      
@2894   function_decl    name: @2895    type: @670     srcp: <built-in>:0      
                         note: artificial              chan: @2896   
                         lang: C        body: undefined 
                         link: extern  
@2895   identifier_node  strg: finitef  lngt: 7       
@2896   function_decl    name: @2897    mngl: @2895    type: @670    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2898    lang: C        body: undefined 
                         link: extern  
@2897   identifier_node  strg: __builtin_finitef       lngt: 17      
@2898   function_decl    name: @2899    type: @661     srcp: math.h:582    
                         chan: @2900    lang: C        args: @2901   
                         body: undefined               link: extern  
@2899   identifier_node  strg: finite   lngt: 6       
@2900   function_decl    name: @2902    mngl: @2899    type: @661    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2903    lang: C        body: undefined 
                         link: extern  
@2901   parm_decl        type: @605     srcp: math.h:582    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@2902   identifier_node  strg: __builtin_finite        lngt: 16      
@2903   function_decl    name: @2904    type: @465     srcp: <built-in>:0      
                         note: artificial              chan: @2905   
                         lang: C        body: undefined 
                         link: extern  
@2904   identifier_node  strg: __builtin_init_dwarf_reg_size_table 
                         lngt: 35      
@2905   function_decl    name: @2906    type: @2798    srcp: <built-in>:0      
                         note: artificial              chan: @2907   
                         lang: C        body: undefined 
                         link: extern  
@2906   identifier_node  strg: imaxabs  lngt: 7       
@2907   function_decl    name: @2908    mngl: @2906    type: @2798   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2909    lang: C        body: undefined 
                         link: extern  
@2908   identifier_node  strg: __builtin_imaxabs       lngt: 17      
@2909   function_decl    name: @2910    type: @2911    srcp: <built-in>:0      
                         note: artificial              chan: @2912   
                         lang: C        body: undefined 
                         link: extern  
@2910   identifier_node  strg: gettext  lngt: 7       
@2911   function_type    size: @9       algn: 8        retn: @47     
                         prms: @2913   
@2912   function_decl    name: @2914    mngl: @2910    type: @2911   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2915    lang: C        body: undefined 
                         link: extern  
@2913   tree_list        valu: @89      chan: @45     
@2914   identifier_node  strg: __builtin_gettext       lngt: 17      
@2915   function_decl    name: @2916    type: @2286    srcp: <built-in>:0      
                         note: artificial              chan: @2917   
                         lang: C        body: undefined 
                         link: extern  
@2916   identifier_node  strg: __builtin_frob_return_addr 
                         lngt: 26      
@2917   function_decl    name: @2918    type: @2758    srcp: <built-in>:0      
                         note: artificial              chan: @2919   
                         lang: C        body: undefined 
                         link: extern  
@2918   identifier_node  strg: __builtin_frame_address lngt: 23      
@2919   function_decl    name: @2920    type: @2921    srcp: <built-in>:0      
                         note: artificial              chan: @2922   
                         lang: C        body: undefined 
                         link: extern  
@2920   identifier_node  strg: fork     lngt: 4       
@2921   function_type    size: @9       algn: 8        retn: @10     
                         prms: @45     
@2922   function_decl    name: @2923    mngl: @2920    type: @2921   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2924    lang: C        body: undefined 
                         link: extern  
@2923   identifier_node  strg: __builtin_fork          lngt: 14      
@2924   function_decl    name: @2925    type: @2926    srcp: <built-in>:0      
                         note: artificial              chan: @2927   
                         lang: C        body: undefined 
                         link: extern  
@2925   identifier_node  strg: ffsll    lngt: 5       
@2926   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2928   
@2927   function_decl    name: @2929    mngl: @2925    type: @2926   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2930    lang: C        body: undefined 
                         link: extern  
@2928   tree_list        valu: @434     chan: @45     
@2929   identifier_node  strg: __builtin_ffsll         lngt: 15      
@2930   function_decl    name: @2931    type: @2932    srcp: <built-in>:0      
                         note: artificial              chan: @2933   
                         lang: C        body: undefined 
                         link: extern  
@2931   identifier_node  strg: ffsl     lngt: 4       
@2932   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2934   
@2933   function_decl    name: @2935    mngl: @2931    type: @2932   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2936    lang: C        body: undefined 
                         link: extern  
@2934   tree_list        valu: @91      chan: @45     
@2935   identifier_node  strg: __builtin_ffsl          lngt: 14      
@2936   function_decl    name: @2937    type: @2926    srcp: <built-in>:0      
                         note: artificial              chan: @2938   
                         lang: C        body: undefined 
                         link: extern  
@2937   identifier_node  strg: ffsimax  lngt: 7       
@2938   function_decl    name: @2939    mngl: @2937    type: @2926   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2940    lang: C        body: undefined 
                         link: extern  
@2939   identifier_node  strg: __builtin_ffsimax       lngt: 17      
@2940   function_decl    name: @2941    type: @2942    srcp: string.h:121    
                         chan: @2943    lang: C        args: @2944   
                         body: undefined               link: extern  
@2941   identifier_node  strg: ffs      lngt: 3       
@2942   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2945   
@2943   function_decl    name: @2946    mngl: @2941    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2947    lang: C        body: undefined 
                         link: extern  
@2944   parm_decl        type: @10      srcp: string.h:121    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@2945   tree_list        valu: @10      chan: @45     
@2946   identifier_node  strg: __builtin_ffs           lngt: 13      
@2947   function_decl    name: @2948    type: @2286    srcp: <built-in>:0      
                         note: artificial              chan: @2949   
                         lang: C        body: undefined 
                         link: extern  
@2948   identifier_node  strg: __builtin_extract_return_addr 
                         lngt: 29      
@2949   function_decl    name: @2950    type: @2751    srcp: <built-in>:0      
                         note: artificial              chan: @2951   
                         lang: C        body: undefined 
                         link: extern  
@2950   identifier_node  strg: __builtin_extend_pointer 
                         lngt: 24      
@2951   function_decl    name: @2952    type: @2953    srcp: <built-in>:0      
                         note: artificial              chan: @2954   
                         lang: C        body: undefined 
                         link: extern  
@2952   identifier_node  strg: __builtin_expect        lngt: 16      
@2953   function_type    size: @9       algn: 8        retn: @91     
                         prms: @2955   
@2954   function_decl    name: @2956    type: @2698    srcp: <built-in>:0      
                         note: artificial              chan: @2957   
                         lang: C        body: undefined 
                         link: extern  
@2955   tree_list        valu: @91      chan: @2958   
@2956   identifier_node  strg: exit     lngt: 4       
@2957   function_decl    name: @2959    mngl: @2956    type: @2698   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2960    lang: C        body: undefined 
                         link: extern  
@2958   tree_list        valu: @91      chan: @45     
@2959   identifier_node  strg: __builtin_exit          lngt: 14      
@2960   function_decl    name: @2961    type: @2962    srcp: <built-in>:0      
                         note: artificial              chan: @2963   
                         lang: C        body: undefined 
                         link: extern  
@2961   identifier_node  strg: execve   lngt: 6       
@2962   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2964   
@2963   function_decl    name: @2965    mngl: @2961    type: @2962   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2966    lang: C        body: undefined 
                         link: extern  
@2964   tree_list        valu: @89      chan: @2967   
@2965   identifier_node  strg: __builtin_execve        lngt: 16      
@2966   function_decl    name: @2968    type: @2969    srcp: <built-in>:0      
                         note: artificial              chan: @2970   
                         lang: C        body: undefined 
                         link: extern  
@2967   tree_list        valu: @2971    chan: @2972   
@2968   identifier_node  strg: execvp   lngt: 6       
@2969   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2973   
@2970   function_decl    name: @2974    mngl: @2968    type: @2969   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2975    lang: C        body: undefined 
                         link: extern  
@2971   pointer_type     size: @18      algn: 32       ptd : @89     
@2972   tree_list        valu: @2971    chan: @45     
@2973   tree_list        valu: @89      chan: @2976   
@2974   identifier_node  strg: __builtin_execvp        lngt: 16      
@2975   function_decl    name: @2977    type: @2969    srcp: <built-in>:0      
                         note: artificial              chan: @2978   
                         lang: C        body: undefined 
                         link: extern  
@2976   tree_list        valu: @2971    chan: @45     
@2977   identifier_node  strg: execv    lngt: 5       
@2978   function_decl    name: @2979    mngl: @2977    type: @2969   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2980    lang: C        body: undefined 
                         link: extern  
@2979   identifier_node  strg: __builtin_execv         lngt: 15      
@2980   function_decl    name: @2981    type: @2982    srcp: <built-in>:0      
                         note: artificial              chan: @2983   
                         lang: C        body: undefined 
                         link: extern  
@2981   identifier_node  strg: execle   lngt: 6       
@2982   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2984   
@2983   function_decl    name: @2985    mngl: @2981    type: @2982   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2986    lang: C        body: undefined 
                         link: extern  
@2984   tree_list        valu: @89      chan: @2987   
@2985   identifier_node  strg: __builtin_execle        lngt: 16      
@2986   function_decl    name: @2988    type: @2989    srcp: <built-in>:0      
                         note: artificial              chan: @2990   
                         lang: C        body: undefined 
                         link: extern  
@2987   tree_list        valu: @89     
@2988   identifier_node  strg: execlp   lngt: 6       
@2989   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2984   
@2990   function_decl    name: @2991    mngl: @2988    type: @2989   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2992    lang: C        body: undefined 
                         link: extern  
@2991   identifier_node  strg: __builtin_execlp        lngt: 16      
@2992   function_decl    name: @2993    type: @2989    srcp: <built-in>:0      
                         note: artificial              chan: @2994   
                         lang: C        body: undefined 
                         link: extern  
@2993   identifier_node  strg: execl    lngt: 5       
@2994   function_decl    name: @2995    mngl: @2993    type: @2989   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2996    lang: C        body: undefined 
                         link: extern  
@2995   identifier_node  strg: __builtin_execl         lngt: 15      
@2996   function_decl    name: @2997    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @2998   
                         lang: C        body: undefined 
                         link: extern  
@2997   identifier_node  strg: __builtin_eh_return_data_regno 
                         lngt: 30      
@2998   function_decl    name: @2999    type: @3000    srcp: <built-in>:0      
                         note: artificial              chan: @3001   
                         lang: C        body: undefined 
                         link: extern  
@2999   identifier_node  strg: __builtin_eh_return     lngt: 19      
@3000   function_type    size: @9       algn: 8        retn: @19     
                         prms: @3002   
@3001   function_decl    name: @3003    type: @1262    srcp: <built-in>:0      
                         note: artificial              chan: @3004   
                         lang: C        body: undefined 
                         link: extern  
@3002   tree_list        valu: @10      chan: @3005   
@3003   identifier_node  strg: __builtin_dwarf_sp_column 
                         lngt: 25      
@3004   function_decl    name: @3006    type: @2279    srcp: <built-in>:0      
                         note: artificial              chan: @3007   
                         lang: C        body: undefined 
                         link: extern  
@3005   tree_list        valu: @55      chan: @45     
@3006   identifier_node  strg: __builtin_dwarf_cfa     lngt: 19      
@3007   function_decl    name: @3008    type: @3009    srcp: <built-in>:0      
                         note: artificial              chan: @3010   
                         lang: C        body: undefined 
                         link: extern  
@3008   identifier_node  strg: dgettext lngt: 8       
@3009   function_type    size: @9       algn: 8        retn: @47     
                         prms: @261    
@3010   function_decl    name: @3011    mngl: @3008    type: @3009   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3012    lang: C        body: undefined 
                         link: extern  
@3011   identifier_node  strg: __builtin_dgettext      lngt: 18      
@3012   function_decl    name: @3013    type: @3014    srcp: <built-in>:0      
                         note: artificial              chan: @3015   
                         lang: C        body: undefined 
                         link: extern  
@3013   identifier_node  strg: dcgettext               lngt: 9       
@3014   function_type    size: @9       algn: 8        retn: @47     
                         prms: @3016   
@3015   function_decl    name: @3017    mngl: @3013    type: @3014   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3018    lang: C        body: undefined 
                         link: extern  
@3016   tree_list        valu: @89      chan: @3019   
@3017   identifier_node  strg: __builtin_dcgettext     lngt: 19      
@3018   function_decl    name: @3020    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @3021   
                         lang: C        body: undefined 
                         link: extern  
@3019   tree_list        valu: @89      chan: @3022   
@3020   identifier_node  strg: __builtin_ctzll         lngt: 15      
@3021   function_decl    name: @3023    type: @2772    srcp: <built-in>:0      
                         note: artificial              chan: @3024   
                         lang: C        body: undefined 
                         link: extern  
@3022   tree_list        valu: @10      chan: @45     
@3023   identifier_node  strg: __builtin_ctzl          lngt: 14      
@3024   function_decl    name: @3025    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @3026   
                         lang: C        body: undefined 
                         link: extern  
@3025   identifier_node  strg: __builtin_ctzimax       lngt: 17      
@3026   function_decl    name: @3027    type: @2778    srcp: <built-in>:0      
                         note: artificial              chan: @3028   
                         lang: C        body: undefined 
                         link: extern  
@3027   identifier_node  strg: __builtin_ctz           lngt: 13      
@3028   function_decl    name: @3029    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @3030   
                         lang: C        body: undefined 
                         link: extern  
@3029   identifier_node  strg: __builtin_constant_p    lngt: 20      
@3030   function_decl    name: @3031    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @3032   
                         lang: C        body: undefined 
                         link: extern  
@3031   identifier_node  strg: __builtin_clzll         lngt: 15      
@3032   function_decl    name: @3033    type: @2772    srcp: <built-in>:0      
                         note: artificial              chan: @3034   
                         lang: C        body: undefined 
                         link: extern  
@3033   identifier_node  strg: __builtin_clzl          lngt: 14      
@3034   function_decl    name: @3035    type: @2768    srcp: <built-in>:0      
                         note: artificial              chan: @3036   
                         lang: C        body: undefined 
                         link: extern  
@3035   identifier_node  strg: __builtin_clzimax       lngt: 17      
@3036   function_decl    name: @3037    type: @2778    srcp: <built-in>:0      
                         note: artificial              chan: @3038   
                         lang: C        body: undefined 
                         link: extern  
@3037   identifier_node  strg: __builtin_clz           lngt: 13      
@3038   function_decl    name: @3039    type: @2810    srcp: <built-in>:0      
                         note: artificial              chan: @3040   
                         lang: C        body: undefined 
                         link: extern  
@3039   identifier_node  strg: __builtin_classify_type lngt: 23      
@3040   function_decl    name: @3041    type: @3042    srcp: <built-in>:0      
                         note: artificial              chan: @3043   
                         lang: C        body: undefined 
                         link: extern  
@3041   identifier_node  strg: calloc   lngt: 6       
@3042   function_type    size: @9       algn: 8        retn: @55     
                         prms: @3044   
@3043   function_decl    name: @3045    mngl: @3041    type: @3042   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3046    lang: C        body: undefined 
                         link: extern  
@3044   tree_list        valu: @120     chan: @3047   
@3045   identifier_node  strg: __builtin_calloc        lngt: 16      
@3046   function_decl    name: @3048    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3049   
                         lang: C        body: undefined 
                         link: extern  
@3047   tree_list        valu: @120     chan: @45     
@3048   identifier_node  strg: __builtin_args_info     lngt: 19      
@3049   function_decl    name: @3050    type: @2755    srcp: <built-in>:0      
                         note: artificial              chan: @3051   
                         lang: C        body: undefined 
                         link: extern  
@3050   identifier_node  strg: __builtin_apply_args    lngt: 20      
@3051   function_decl    name: @3052    type: @3053    srcp: <built-in>:0      
                         note: artificial              chan: @3054   
                         lang: C        body: undefined 
                         link: extern  
@3052   identifier_node  strg: __builtin_apply         lngt: 15      
@3053   function_type    size: @9       algn: 8        retn: @55     
                         prms: @3055   
@3054   function_decl    name: @3056    type: @1313    srcp: <built-in>:0      
                         note: artificial              chan: @3057   
                         lang: C        body: undefined 
                         link: extern  
@3055   tree_list        valu: @3058    chan: @3059   
@3056   identifier_node  strg: alloca   lngt: 6       
@3057   function_decl    name: @3060    mngl: @3056    type: @1313   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3061    lang: C        body: undefined 
                         link: extern  
@3058   pointer_type     size: @18      algn: 32       ptd : @2325   
@3059   tree_list        valu: @55      chan: @3062   
@3060   identifier_node  strg: __builtin_alloca        lngt: 16      
@3061   function_decl    name: @3063    type: @2755    srcp: <built-in>:0      
                         note: artificial              chan: @3064   
                         lang: C        body: undefined 
                         link: extern  
@3062   tree_list        valu: @120     chan: @45     
@3063   identifier_node  strg: __builtin_aggregate_incoming_address 
                         lngt: 36      
@3064   function_decl    name: @148     type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3065   
                         lang: C        body: undefined 
                         link: extern  
@3065   function_decl    name: @3066    mngl: @148     type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3067    lang: C        body: undefined 
                         link: extern  
@3066   identifier_node  strg: __builtin_abs           lngt: 13      
@3067   function_decl    name: @3068    type: @1507    srcp: <built-in>:0      
                         note: artificial              chan: @3069   
                         lang: C        body: undefined 
                         link: extern  
@3068   identifier_node  strg: abort    lngt: 5       
@3069   function_decl    name: @3070    mngl: @3068    type: @1507   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3071    lang: C        body: undefined 
                         link: extern  
@3070   identifier_node  strg: __builtin_abort         lngt: 15      
@3071   function_decl    name: @3072    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3073   
                         lang: C        body: undefined 
                         link: extern  
@3072   identifier_node  strg: towupper lngt: 8       
@3073   function_decl    name: @3074    mngl: @3072    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3075    lang: C        body: undefined 
                         link: extern  
@3074   identifier_node  strg: __builtin_towupper      lngt: 18      
@3075   function_decl    name: @3076    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3077   
                         lang: C        body: undefined 
                         link: extern  
@3076   identifier_node  strg: towlower lngt: 8       
@3077   function_decl    name: @3078    mngl: @3076    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3079    lang: C        body: undefined 
                         link: extern  
@3078   identifier_node  strg: __builtin_towlower      lngt: 18      
@3079   function_decl    name: @3080    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3081   
                         lang: C        body: undefined 
                         link: extern  
@3080   identifier_node  strg: iswxdigit               lngt: 9       
@3081   function_decl    name: @3082    mngl: @3080    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3083    lang: C        body: undefined 
                         link: extern  
@3082   identifier_node  strg: __builtin_iswxdigit     lngt: 19      
@3083   function_decl    name: @3084    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3085   
                         lang: C        body: undefined 
                         link: extern  
@3084   identifier_node  strg: iswupper lngt: 8       
@3085   function_decl    name: @3086    mngl: @3084    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3087    lang: C        body: undefined 
                         link: extern  
@3086   identifier_node  strg: __builtin_iswupper      lngt: 18      
@3087   function_decl    name: @3088    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3089   
                         lang: C        body: undefined 
                         link: extern  
@3088   identifier_node  strg: iswspace lngt: 8       
@3089   function_decl    name: @3090    mngl: @3088    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3091    lang: C        body: undefined 
                         link: extern  
@3090   identifier_node  strg: __builtin_iswspace      lngt: 18      
@3091   function_decl    name: @3092    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3093   
                         lang: C        body: undefined 
                         link: extern  
@3092   identifier_node  strg: iswpunct lngt: 8       
@3093   function_decl    name: @3094    mngl: @3092    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3095    lang: C        body: undefined 
                         link: extern  
@3094   identifier_node  strg: __builtin_iswpunct      lngt: 18      
@3095   function_decl    name: @3096    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3097   
                         lang: C        body: undefined 
                         link: extern  
@3096   identifier_node  strg: iswprint lngt: 8       
@3097   function_decl    name: @3098    mngl: @3096    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3099    lang: C        body: undefined 
                         link: extern  
@3098   identifier_node  strg: __builtin_iswprint      lngt: 18      
@3099   function_decl    name: @3100    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3101   
                         lang: C        body: undefined 
                         link: extern  
@3100   identifier_node  strg: iswlower lngt: 8       
@3101   function_decl    name: @3102    mngl: @3100    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3103    lang: C        body: undefined 
                         link: extern  
@3102   identifier_node  strg: __builtin_iswlower      lngt: 18      
@3103   function_decl    name: @3104    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3105   
                         lang: C        body: undefined 
                         link: extern  
@3104   identifier_node  strg: iswgraph lngt: 8       
@3105   function_decl    name: @3106    mngl: @3104    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3107    lang: C        body: undefined 
                         link: extern  
@3106   identifier_node  strg: __builtin_iswgraph      lngt: 18      
@3107   function_decl    name: @3108    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3109   
                         lang: C        body: undefined 
                         link: extern  
@3108   identifier_node  strg: iswdigit lngt: 8       
@3109   function_decl    name: @3110    mngl: @3108    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3111    lang: C        body: undefined 
                         link: extern  
@3110   identifier_node  strg: __builtin_iswdigit      lngt: 18      
@3111   function_decl    name: @3112    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3113   
                         lang: C        body: undefined 
                         link: extern  
@3112   identifier_node  strg: iswcntrl lngt: 8       
@3113   function_decl    name: @3114    mngl: @3112    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3115    lang: C        body: undefined 
                         link: extern  
@3114   identifier_node  strg: __builtin_iswcntrl      lngt: 18      
@3115   function_decl    name: @3116    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3117   
                         lang: C        body: undefined 
                         link: extern  
@3116   identifier_node  strg: iswblank lngt: 8       
@3117   function_decl    name: @3118    mngl: @3116    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3119    lang: C        body: undefined 
                         link: extern  
@3118   identifier_node  strg: __builtin_iswblank      lngt: 18      
@3119   function_decl    name: @3120    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3121   
                         lang: C        body: undefined 
                         link: extern  
@3120   identifier_node  strg: iswalpha lngt: 8       
@3121   function_decl    name: @3122    mngl: @3120    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3123    lang: C        body: undefined 
                         link: extern  
@3122   identifier_node  strg: __builtin_iswalpha      lngt: 18      
@3123   function_decl    name: @3124    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3125   
                         lang: C        body: undefined 
                         link: extern  
@3124   identifier_node  strg: iswalnum lngt: 8       
@3125   function_decl    name: @3126    mngl: @3124    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3127    lang: C        body: undefined 
                         link: extern  
@3126   identifier_node  strg: __builtin_iswalnum      lngt: 18      
@3127   function_decl    name: @3128    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3129   
                         lang: C        body: undefined 
                         link: extern  
@3128   identifier_node  strg: toupper  lngt: 7       
@3129   function_decl    name: @3130    mngl: @3128    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3131    lang: C        body: undefined 
                         link: extern  
@3130   identifier_node  strg: __builtin_toupper       lngt: 17      
@3131   function_decl    name: @3132    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3133   
                         lang: C        body: undefined 
                         link: extern  
@3132   identifier_node  strg: tolower  lngt: 7       
@3133   function_decl    name: @3134    mngl: @3132    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3135    lang: C        body: undefined 
                         link: extern  
@3134   identifier_node  strg: __builtin_tolower       lngt: 17      
@3135   function_decl    name: @3136    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3137   
                         lang: C        body: undefined 
                         link: extern  
@3136   identifier_node  strg: toascii  lngt: 7       
@3137   function_decl    name: @3138    mngl: @3136    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3139    lang: C        body: undefined 
                         link: extern  
@3138   identifier_node  strg: __builtin_toascii       lngt: 17      
@3139   function_decl    name: @3140    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3141   
                         lang: C        body: undefined 
                         link: extern  
@3140   identifier_node  strg: isxdigit lngt: 8       
@3141   function_decl    name: @3142    mngl: @3140    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3143    lang: C        body: undefined 
                         link: extern  
@3142   identifier_node  strg: __builtin_isxdigit      lngt: 18      
@3143   function_decl    name: @3144    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3145   
                         lang: C        body: undefined 
                         link: extern  
@3144   identifier_node  strg: isupper  lngt: 7       
@3145   function_decl    name: @3146    mngl: @3144    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3147    lang: C        body: undefined 
                         link: extern  
@3146   identifier_node  strg: __builtin_isupper       lngt: 17      
@3147   function_decl    name: @3148    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3149   
                         lang: C        body: undefined 
                         link: extern  
@3148   identifier_node  strg: isspace  lngt: 7       
@3149   function_decl    name: @3150    mngl: @3148    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3151    lang: C        body: undefined 
                         link: extern  
@3150   identifier_node  strg: __builtin_isspace       lngt: 17      
@3151   function_decl    name: @3152    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3153   
                         lang: C        body: undefined 
                         link: extern  
@3152   identifier_node  strg: ispunct  lngt: 7       
@3153   function_decl    name: @3154    mngl: @3152    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3155    lang: C        body: undefined 
                         link: extern  
@3154   identifier_node  strg: __builtin_ispunct       lngt: 17      
@3155   function_decl    name: @3156    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3157   
                         lang: C        body: undefined 
                         link: extern  
@3156   identifier_node  strg: isprint  lngt: 7       
@3157   function_decl    name: @3158    mngl: @3156    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3159    lang: C        body: undefined 
                         link: extern  
@3158   identifier_node  strg: __builtin_isprint       lngt: 17      
@3159   function_decl    name: @3160    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3161   
                         lang: C        body: undefined 
                         link: extern  
@3160   identifier_node  strg: islower  lngt: 7       
@3161   function_decl    name: @3162    mngl: @3160    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3163    lang: C        body: undefined 
                         link: extern  
@3162   identifier_node  strg: __builtin_islower       lngt: 17      
@3163   function_decl    name: @3164    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3165   
                         lang: C        body: undefined 
                         link: extern  
@3164   identifier_node  strg: isgraph  lngt: 7       
@3165   function_decl    name: @3166    mngl: @3164    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3167    lang: C        body: undefined 
                         link: extern  
@3166   identifier_node  strg: __builtin_isgraph       lngt: 17      
@3167   function_decl    name: @3168    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3169   
                         lang: C        body: undefined 
                         link: extern  
@3168   identifier_node  strg: isdigit  lngt: 7       
@3169   function_decl    name: @3170    mngl: @3168    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3171    lang: C        body: undefined 
                         link: extern  
@3170   identifier_node  strg: __builtin_isdigit       lngt: 17      
@3171   function_decl    name: @3172    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3173   
                         lang: C        body: undefined 
                         link: extern  
@3172   identifier_node  strg: iscntrl  lngt: 7       
@3173   function_decl    name: @3174    mngl: @3172    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3175    lang: C        body: undefined 
                         link: extern  
@3174   identifier_node  strg: __builtin_iscntrl       lngt: 17      
@3175   function_decl    name: @3176    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3177   
                         lang: C        body: undefined 
                         link: extern  
@3176   identifier_node  strg: isblank  lngt: 7       
@3177   function_decl    name: @3178    mngl: @3176    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3179    lang: C        body: undefined 
                         link: extern  
@3178   identifier_node  strg: __builtin_isblank       lngt: 17      
@3179   function_decl    name: @3180    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3181   
                         lang: C        body: undefined 
                         link: extern  
@3180   identifier_node  strg: isascii  lngt: 7       
@3181   function_decl    name: @3182    mngl: @3180    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3183    lang: C        body: undefined 
                         link: extern  
@3182   identifier_node  strg: __builtin_isascii       lngt: 17      
@3183   function_decl    name: @3184    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3185   
                         lang: C        body: undefined 
                         link: extern  
@3184   identifier_node  strg: isalpha  lngt: 7       
@3185   function_decl    name: @3186    mngl: @3184    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3187    lang: C        body: undefined 
                         link: extern  
@3186   identifier_node  strg: __builtin_isalpha       lngt: 17      
@3187   function_decl    name: @3188    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3189   
                         lang: C        body: undefined 
                         link: extern  
@3188   identifier_node  strg: isalnum  lngt: 7       
@3189   function_decl    name: @3190    mngl: @3188    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3191    lang: C        body: undefined 
                         link: extern  
@3190   identifier_node  strg: __builtin_isalnum       lngt: 17      
@3191   function_decl    name: @3192    type: @3193    srcp: <built-in>:0      
                         note: artificial              chan: @3194   
                         lang: C        body: undefined 
                         link: extern  
@3192   identifier_node  strg: vsscanf  lngt: 7       
@3193   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3195   
@3194   function_decl    name: @3196    mngl: @3192    type: @3193   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3197    lang: C        body: undefined 
                         link: extern  
@3195   tree_list        valu: @89      chan: @3198   
@3196   identifier_node  strg: __builtin_vsscanf       lngt: 17      
@3197   function_decl    name: @3199    type: @3200    srcp: <built-in>:0      
                         note: artificial              chan: @3201   
                         lang: C        body: undefined 
                         link: extern  
@3198   tree_list        valu: @89      chan: @3202   
@3199   identifier_node  strg: vsprintf lngt: 8       
@3200   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3203   
@3201   function_decl    name: @3204    mngl: @3199    type: @3200   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3205    lang: C        body: undefined 
                         link: extern  
@3202   tree_list        valu: @2576    chan: @45     
@3203   tree_list        valu: @47      chan: @3206   
@3204   identifier_node  strg: __builtin_vsprintf      lngt: 18      
@3205   function_decl    name: @3207    type: @3208    srcp: <built-in>:0      
                         note: artificial              chan: @3209   
                         lang: C        body: undefined 
                         link: extern  
@3206   tree_list        valu: @89      chan: @3210   
@3207   identifier_node  strg: vsnprintf               lngt: 9       
@3208   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3211   
@3209   function_decl    name: @3212    mngl: @3207    type: @3208   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3213    lang: C        body: undefined 
                         link: extern  
@3210   tree_list        valu: @2576    chan: @45     
@3211   tree_list        valu: @47      chan: @3214   
@3212   identifier_node  strg: __builtin_vsnprintf     lngt: 19      
@3213   function_decl    name: @3215    type: @3216    srcp: <built-in>:0      
                         note: artificial              chan: @3217   
                         lang: C        body: undefined 
                         link: extern  
@3214   tree_list        valu: @120     chan: @3218   
@3215   identifier_node  strg: vscanf   lngt: 6       
@3216   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3219   
@3217   function_decl    name: @3220    mngl: @3215    type: @3216   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3221    lang: C        body: undefined 
                         link: extern  
@3218   tree_list        valu: @89      chan: @3222   
@3219   tree_list        valu: @89      chan: @3223   
@3220   identifier_node  strg: __builtin_vscanf        lngt: 16      
@3221   function_decl    name: @3224    type: @3225    srcp: <built-in>:0      
                         note: artificial              chan: @3226   
                         lang: C        body: undefined 
                         link: extern  
@3222   tree_list        valu: @2576    chan: @45     
@3223   tree_list        valu: @2576    chan: @45     
@3224   identifier_node  strg: vprintf  lngt: 7       
@3225   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3219   
@3226   function_decl    name: @3227    mngl: @3224    type: @3225   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3228    lang: C        body: undefined 
                         link: extern  
@3227   identifier_node  strg: __builtin_vprintf       lngt: 17      
@3228   function_decl    name: @3229    type: @3230    srcp: <built-in>:0      
                         note: artificial              chan: @3231   
                         lang: C        body: undefined 
                         link: extern  
@3229   identifier_node  strg: vfscanf  lngt: 7       
@3230   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3232   
@3231   function_decl    name: @3233    mngl: @3229    type: @3230   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3234    lang: C        body: undefined 
                         link: extern  
@3232   tree_list        valu: @2577    chan: @3235   
@3233   identifier_node  strg: __builtin_vfscanf       lngt: 17      
@3234   function_decl    name: @3236    type: @3237    srcp: <built-in>:0      
                         note: artificial              chan: @3238   
                         lang: C        body: undefined 
                         link: extern  
@3235   tree_list        valu: @89      chan: @3239   
@3236   identifier_node  strg: vfprintf lngt: 8       
@3237   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3232   
@3238   function_decl    name: @3240    mngl: @3236    type: @3237   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3241    lang: C        body: undefined 
                         link: extern  
@3239   tree_list        valu: @2576    chan: @45     
@3240   identifier_node  strg: __builtin_vfprintf      lngt: 18      
@3241   function_decl    name: @3242    type: @3243    srcp: <built-in>:0      
                         note: artificial              chan: @3244   
                         lang: C        body: undefined 
                         link: extern  
@3242   identifier_node  strg: sscanf   lngt: 6       
@3243   function_type    size: @9       algn: 8        retn: @10     
                         prms: @2984   
@3244   function_decl    name: @3245    mngl: @3242    type: @3243   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3246    lang: C        body: undefined 
                         link: extern  
@3245   identifier_node  strg: __builtin_sscanf        lngt: 16      
@3246   function_decl    name: @3247    type: @3248    srcp: <built-in>:0      
                         note: artificial              chan: @3249   
                         lang: C        body: undefined 
                         link: extern  
@3247   identifier_node  strg: sprintf  lngt: 7       
@3248   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3250   
@3249   function_decl    name: @3251    mngl: @3247    type: @3248   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3252    lang: C        body: undefined 
                         link: extern  
@3250   tree_list        valu: @47      chan: @3253   
@3251   identifier_node  strg: __builtin_sprintf       lngt: 17      
@3252   function_decl    name: @3254    type: @3255    srcp: <built-in>:0      
                         note: artificial              chan: @3256   
                         lang: C        body: undefined 
                         link: extern  
@3253   tree_list        valu: @89     
@3254   identifier_node  strg: snprintf lngt: 8       
@3255   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3257   
@3256   function_decl    name: @3258    mngl: @3254    type: @3255   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3259    lang: C        body: undefined 
                         link: extern  
@3257   tree_list        valu: @47      chan: @3260   
@3258   identifier_node  strg: __builtin_snprintf      lngt: 18      
@3259   function_decl    name: @3261    type: @3262    srcp: <built-in>:0      
                         note: artificial              chan: @3263   
                         lang: C        body: undefined 
                         link: extern  
@3260   tree_list        valu: @120     chan: @3264   
@3261   identifier_node  strg: scanf    lngt: 5       
@3262   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3265   
@3263   function_decl    name: @3266    mngl: @3261    type: @3262   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3267    lang: C        body: undefined 
                         link: extern  
@3264   tree_list        valu: @89     
@3265   tree_list        valu: @89     
@3266   identifier_node  strg: __builtin_scanf         lngt: 15      
@3267   function_decl    name: @3268    type: @3269    srcp: <built-in>:0      
                         note: artificial              chan: @3270   
                         lang: C        body: undefined 
                         link: extern  
@3268   identifier_node  strg: puts_unlocked           lngt: 13      
@3269   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3271   
@3270   function_decl    name: @3272    mngl: @3268    type: @3269   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3273    lang: C        body: undefined 
                         link: extern  
@3271   tree_list        valu: @89      chan: @45     
@3272   identifier_node  strg: __builtin_puts_unlocked lngt: 23      
@3273   function_decl    name: @3274    type: @3269    srcp: <built-in>:0      
                         note: artificial              chan: @3275   
                         lang: C        body: undefined 
                         link: extern  
@3274   identifier_node  strg: puts     lngt: 4       
@3275   function_decl    name: @3276    mngl: @3274    type: @3269   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3277    lang: C        body: undefined 
                         link: extern  
@3276   identifier_node  strg: __builtin_puts          lngt: 14      
@3277   function_decl    name: @3278    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3279   
                         lang: C        body: undefined 
                         link: extern  
@3278   identifier_node  strg: putchar_unlocked        lngt: 16      
@3279   function_decl    name: @3280    mngl: @3278    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3281    lang: C        body: undefined 
                         link: extern  
@3280   identifier_node  strg: __builtin_putchar_unlocked 
                         lngt: 26      
@3281   function_decl    name: @3282    type: @2942    srcp: <built-in>:0      
                         note: artificial              chan: @3283   
                         lang: C        body: undefined 
                         link: extern  
@3282   identifier_node  strg: putchar  lngt: 7       
@3283   function_decl    name: @3284    mngl: @3282    type: @2942   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3285    lang: C        body: undefined 
                         link: extern  
@3284   identifier_node  strg: __builtin_putchar       lngt: 17      
@3285   function_decl    name: @3286    type: @3287    srcp: <built-in>:0      
                         note: artificial              chan: @3288   
                         lang: C        body: undefined 
                         link: extern  
@3286   identifier_node  strg: printf_unlocked         lngt: 15      
@3287   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3265   
@3288   function_decl    name: @3289    mngl: @3286    type: @3287   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3290    lang: C        body: undefined 
                         link: extern  
@3289   identifier_node  strg: __builtin_printf_unlocked 
                         lngt: 25      
@3290   function_decl    name: @3291    type: @3287    srcp: <built-in>:0      
                         note: artificial              chan: @3292   
                         lang: C        body: undefined 
                         link: extern  
@3291   identifier_node  strg: printf   lngt: 6       
@3292   function_decl    name: @3293    mngl: @3291    type: @3287   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3294    lang: C        body: undefined 
                         link: extern  
@3293   identifier_node  strg: __builtin_printf        lngt: 16      
@3294   function_decl    name: @3295    type: @3296    srcp: <built-in>:0      
                         note: artificial              chan: @3297   
                         lang: C        body: undefined 
                         link: extern  
@3295   identifier_node  strg: fwrite_unlocked         lngt: 15      
@3296   function_type    size: @9       algn: 8        retn: @120    
                         prms: @3298   
@3297   function_decl    name: @3299    mngl: @3295    type: @3296   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3300    lang: C        body: undefined 
                         link: extern  
@3298   tree_list        valu: @1429    chan: @3301   
@3299   identifier_node  strg: __builtin_fwrite_unlocked 
                         lngt: 25      
@3300   function_decl    name: @3302    type: @3296    srcp: <built-in>:0      
                         note: artificial              chan: @3303   
                         lang: C        body: undefined 
                         link: extern  
@3301   tree_list        valu: @120     chan: @3304   
@3302   identifier_node  strg: fwrite   lngt: 6       
@3303   function_decl    name: @3305    mngl: @3302    type: @3296   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3306    lang: C        body: undefined 
                         link: extern  
@3304   tree_list        valu: @120     chan: @3307   
@3305   identifier_node  strg: __builtin_fwrite        lngt: 16      
@3306   function_decl    name: @3308    type: @3309    srcp: <built-in>:0      
                         note: artificial              chan: @3310   
                         lang: C        body: undefined 
                         link: extern  
@3307   tree_list        valu: @2577    chan: @45     
@3308   identifier_node  strg: fscanf   lngt: 6       
@3309   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3311   
@3310   function_decl    name: @3312    mngl: @3308    type: @3309   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3313    lang: C        body: undefined 
                         link: extern  
@3311   tree_list        valu: @2577    chan: @3314   
@3312   identifier_node  strg: __builtin_fscanf        lngt: 16      
@3313   function_decl    name: @3315    type: @3316    srcp: <built-in>:0      
                         note: artificial              chan: @3317   
                         lang: C        body: undefined 
                         link: extern  
@3314   tree_list        valu: @89     
@3315   identifier_node  strg: fputs_unlocked          lngt: 14      
@3316   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3318   
@3317   function_decl    name: @3319    mngl: @3315    type: @3316   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3320    lang: C        body: undefined 
                         link: extern  
@3318   tree_list        valu: @89      chan: @3321   
@3319   identifier_node  strg: __builtin_fputs_unlocked 
                         lngt: 24      
@3320   function_decl    name: @3322    type: @3316    srcp: <built-in>:0      
                         note: artificial              chan: @3323   
                         lang: C        body: undefined 
                         link: extern  
@3321   tree_list        valu: @2577    chan: @45     
@3322   identifier_node  strg: fputs    lngt: 5       
@3323   function_decl    name: @3324    mngl: @3322    type: @3316   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3325    lang: C        body: undefined 
                         link: extern  
@3324   identifier_node  strg: __builtin_fputs         lngt: 15      
@3325   function_decl    name: @3326    type: @3327    srcp: <built-in>:0      
                         note: artificial              chan: @3328   
                         lang: C        body: undefined 
                         link: extern  
@3326   identifier_node  strg: fputc_unlocked          lngt: 14      
@3327   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3329   
@3328   function_decl    name: @3330    mngl: @3326    type: @3327   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3331    lang: C        body: undefined 
                         link: extern  
@3329   tree_list        valu: @10      chan: @3332   
@3330   identifier_node  strg: __builtin_fputc_unlocked 
                         lngt: 24      
@3331   function_decl    name: @3333    type: @3327    srcp: <built-in>:0      
                         note: artificial              chan: @3334   
                         lang: C        body: undefined 
                         link: extern  
@3332   tree_list        valu: @2577    chan: @45     
@3333   identifier_node  strg: fputc    lngt: 5       
@3334   function_decl    name: @3335    mngl: @3333    type: @3327   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3336    lang: C        body: undefined 
                         link: extern  
@3335   identifier_node  strg: __builtin_fputc         lngt: 15      
@3336   function_decl    name: @3337    type: @3327    srcp: <built-in>:0      
                         note: artificial              chan: @3338   
                         lang: C        body: undefined 
                         link: extern  
@3337   identifier_node  strg: putc_unlocked           lngt: 13      
@3338   function_decl    name: @3339    mngl: @3337    type: @3327   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3340    lang: C        body: undefined 
                         link: extern  
@3339   identifier_node  strg: __builtin_putc_unlocked lngt: 23      
@3340   function_decl    name: @3341    type: @3327    srcp: <built-in>:0      
                         note: artificial              chan: @3342   
                         lang: C        body: undefined 
                         link: extern  
@3341   identifier_node  strg: putc     lngt: 4       
@3342   function_decl    name: @3343    mngl: @3341    type: @3327   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3344    lang: C        body: undefined 
                         link: extern  
@3343   identifier_node  strg: __builtin_putc          lngt: 14      
@3344   function_decl    name: @3345    type: @3346    srcp: <built-in>:0      
                         note: artificial              chan: @3347   
                         lang: C        body: undefined 
                         link: extern  
@3345   identifier_node  strg: fprintf_unlocked        lngt: 16      
@3346   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3311   
@3347   function_decl    name: @3348    mngl: @3345    type: @3346   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3349    lang: C        body: undefined 
                         link: extern  
@3348   identifier_node  strg: __builtin_fprintf_unlocked 
                         lngt: 26      
@3349   function_decl    name: @3350    type: @3346    srcp: <built-in>:0      
                         note: artificial              chan: @3351   
                         lang: C        body: undefined 
                         link: extern  
@3350   identifier_node  strg: fprintf  lngt: 7       
@3351   function_decl    name: @3352    mngl: @3350    type: @3346   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3353    lang: C        body: undefined 
                         link: extern  
@3352   identifier_node  strg: __builtin_fprintf       lngt: 17      
@3353   function_decl    name: @3354    type: @3355    srcp: string.h:108    
                         chan: @3356    lang: C        args: @3357   
                         body: undefined               link: extern  
@3354   identifier_node  strg: strstr   lngt: 6       
@3355   function_type    size: @9       algn: 8        retn: @47     
                         prms: @261    
@3356   function_decl    name: @3358    mngl: @3354    type: @3355   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3359    lang: C        body: undefined 
                         link: extern  
@3357   parm_decl        type: @89      srcp: string.h:108    
                         chan: @3360    argt: @89      size: @18     
                         algn: 32       used: 0       
@3358   identifier_node  strg: __builtin_strstr        lngt: 16      
@3359   function_decl    name: @3361    type: @3362    srcp: string.h:107    
                         chan: @3363    lang: C        args: @3364   
                         body: undefined               link: extern  
@3360   parm_decl        type: @89      srcp: string.h:108    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3361   identifier_node  strg: strspn   lngt: 6       
@3362   function_type    size: @9       algn: 8        retn: @105    
                         prms: @3365   
@3363   function_decl    name: @3366    mngl: @3361    type: @3367   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3368    lang: C        body: undefined 
                         link: extern  
@3364   parm_decl        type: @89      srcp: string.h:107    
                         chan: @3369    argt: @89      size: @18     
                         algn: 32       used: 0       
@3365   tree_list        valu: @89      chan: @3370   
@3366   identifier_node  strg: __builtin_strspn        lngt: 16      
@3367   function_type    size: @9       algn: 8        retn: @120    
                         prms: @3371   
@3368   function_decl    name: @3372    type: @3373    srcp: string.h:106    
                         chan: @3374    lang: C        args: @3375   
                         body: undefined               link: extern  
@3369   parm_decl        type: @89      srcp: string.h:107    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3370   tree_list        valu: @89      chan: @45     
@3371   tree_list        valu: @89      chan: @3376   
@3372   identifier_node  strg: strrchr  lngt: 7       
@3373   function_type    size: @9       algn: 8        retn: @47     
                         prms: @3377   
@3374   function_decl    name: @3378    mngl: @3372    type: @3373   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3379    lang: C        body: undefined 
                         link: extern  
@3375   parm_decl        type: @89      srcp: string.h:106    
                         chan: @3380    argt: @89      size: @18     
                         algn: 32       used: 0       
@3376   tree_list        valu: @89      chan: @45     
@3377   tree_list        valu: @89      chan: @3381   
@3378   identifier_node  strg: __builtin_strrchr       lngt: 17      
@3379   function_decl    name: @3382    type: @3355    srcp: string.h:105    
                         chan: @3383    lang: C        args: @3384   
                         body: undefined               link: extern  
@3380   parm_decl        type: @10      srcp: string.h:106    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@3381   tree_list        valu: @10      chan: @45     
@3382   identifier_node  strg: strpbrk  lngt: 7       
@3383   function_decl    name: @3385    mngl: @3382    type: @3355   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3386    lang: C        body: undefined 
                         link: extern  
@3384   parm_decl        type: @89      srcp: string.h:105    
                         chan: @3387    argt: @89      size: @18     
                         algn: 32       used: 0       
@3385   identifier_node  strg: __builtin_strpbrk       lngt: 17      
@3386   function_decl    name: @3388    type: @3389    srcp: string.h:101    
                         chan: @3390    lang: C        args: @3391   
                         body: undefined               link: extern  
@3387   parm_decl        type: @89      srcp: string.h:105    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3388   identifier_node  strg: strncpy  lngt: 7       
@3389   function_type    size: @9       algn: 8        retn: @47     
                         prms: @3392   
@3390   function_decl    name: @3393    mngl: @3388    type: @2652   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3394    lang: C        body: undefined 
                         link: extern  
@3391   parm_decl        type: @47      srcp: string.h:101    
                         chan: @3395    argt: @47      size: @18     
                         algn: 32       used: 0       
@3392   tree_list        valu: @47      chan: @3396   
@3393   identifier_node  strg: __builtin_strncpy       lngt: 17      
@3394   function_decl    name: @3397    type: @3398    srcp: string.h:100    
                         chan: @3399    lang: C        args: @3400   
                         body: undefined               link: extern  
@3395   parm_decl        type: @89      srcp: string.h:101    
                         chan: @3401    argt: @89      size: @18     
                         algn: 32       used: 0       
@3396   tree_list        valu: @89      chan: @3402   
@3397   identifier_node  strg: strncmp  lngt: 7       
@3398   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3403   
@3399   function_decl    name: @3404    mngl: @3397    type: @3405   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3406    lang: C        body: undefined 
                         link: extern  
@3400   parm_decl        type: @89      srcp: string.h:100    
                         chan: @3407    argt: @89      size: @18     
                         algn: 32       used: 0       
@3401   parm_decl        type: @105     srcp: string.h:101    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3402   tree_list        valu: @105     chan: @45     
@3403   tree_list        valu: @89      chan: @3408   
@3404   identifier_node  strg: __builtin_strncmp       lngt: 17      
@3405   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3409   
@3406   function_decl    name: @3410    type: @3389    srcp: string.h:99     
                         chan: @3411    lang: C        args: @3412   
                         body: undefined               link: extern  
@3407   parm_decl        type: @89      srcp: string.h:100    
                         chan: @3413    argt: @89      size: @18     
                         algn: 32       used: 0       
@3408   tree_list        valu: @89      chan: @3414   
@3409   tree_list        valu: @89      chan: @3415   
@3410   identifier_node  strg: strncat  lngt: 7       
@3411   function_decl    name: @3416    mngl: @3410    type: @2652   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3417    lang: C        body: undefined 
                         link: extern  
@3412   parm_decl        type: @47      srcp: string.h:99     
                         chan: @3418    argt: @47      size: @18     
                         algn: 32       used: 0       
@3413   parm_decl        type: @105     srcp: string.h:100    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3414   tree_list        valu: @105     chan: @45     
@3415   tree_list        valu: @89      chan: @3419   
@3416   identifier_node  strg: __builtin_strncat       lngt: 17      
@3417   function_decl    name: @3420    type: @3398    srcp: string.h:128    
                         chan: @3421    lang: C        args: @3422   
                         body: undefined               link: extern  
@3418   parm_decl        type: @89      srcp: string.h:99     
                         chan: @3423    argt: @89      size: @18     
                         algn: 32       used: 0       
@3419   tree_list        valu: @120     chan: @45     
@3420   identifier_node  strg: strncasecmp             lngt: 11      
@3421   function_decl    name: @3424    mngl: @3420    type: @3405   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3425    lang: C        body: undefined 
                         link: extern  
@3422   parm_decl        type: @89      srcp: string.h:128    
                         chan: @3426    argt: @89      size: @18     
                         algn: 32       used: 0       
@3423   parm_decl        type: @105     srcp: string.h:99     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3424   identifier_node  strg: __builtin_strncasecmp   lngt: 21      
@3425   function_decl    name: @3427    type: @3428    srcp: string.h:98     
                         chan: @3429    lang: C        args: @3430   
                         body: undefined               link: extern  
@3426   parm_decl        type: @89      srcp: string.h:128    
                         chan: @3431    argt: @89      size: @18     
                         algn: 32       used: 0       
@3427   identifier_node  strg: strlen   lngt: 6       
@3428   function_type    size: @9       algn: 8        retn: @105    
                         prms: @3432   
@3429   function_decl    name: @3433    mngl: @3427    type: @3434   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3435    lang: C        body: undefined 
                         link: extern  
@3430   parm_decl        type: @89      srcp: string.h:98     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3431   parm_decl        type: @105     srcp: string.h:128    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3432   tree_list        valu: @89      chan: @45     
@3433   identifier_node  strg: __builtin_strlen        lngt: 16      
@3434   function_type    size: @9       algn: 8        retn: @120    
                         prms: @3436   
@3435   function_decl    name: @3437    type: @3438    srcp: <built-in>:0      
                         note: artificial              chan: @3439   
                         lang: C        body: undefined 
                         link: extern  
@3436   tree_list        valu: @89      chan: @45     
@3437   identifier_node  strg: strndup  lngt: 7       
@3438   function_type    size: @9       algn: 8        retn: @47     
                         prms: @3440   
@3439   function_decl    name: @3441    mngl: @3437    type: @3438   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3442    lang: C        body: undefined 
                         link: extern  
@3440   tree_list        valu: @89      chan: @3443   
@3441   identifier_node  strg: __builtin_strndup       lngt: 17      
@3442   function_decl    name: @3444    type: @3445    srcp: string.h:116    
                         chan: @3446    lang: C        args: @3447   
                         body: undefined               link: extern  
@3443   tree_list        valu: @120     chan: @45     
@3444   identifier_node  strg: strdup   lngt: 6       
@3445   function_type    size: @9       algn: 8        retn: @47     
                         prms: @2913   
@3446   function_decl    name: @3448    mngl: @3444    type: @3445   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3449    lang: C        body: undefined 
                         link: extern  
@3447   parm_decl        type: @89      srcp: string.h:116    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3448   identifier_node  strg: __builtin_strdup        lngt: 16      
@3449   function_decl    name: @3450    type: @3362    srcp: string.h:95     
                         chan: @3451    lang: C        args: @3452   
                         body: undefined               link: extern  
@3450   identifier_node  strg: strcspn  lngt: 7       
@3451   function_decl    name: @3453    mngl: @3450    type: @3367   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3454    lang: C        body: undefined 
                         link: extern  
@3452   parm_decl        type: @89      srcp: string.h:95     
                         chan: @3455    argt: @89      size: @18     
                         algn: 32       used: 0       
@3453   identifier_node  strg: __builtin_strcspn       lngt: 17      
@3454   function_decl    name: @3456    type: @3457    srcp: string.h:94     
                         chan: @3458    lang: C        args: @3459   
                         body: undefined               link: extern  
@3455   parm_decl        type: @89      srcp: string.h:95     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3456   identifier_node  strg: strcpy   lngt: 6       
@3457   function_type    size: @9       algn: 8        retn: @47     
                         prms: @173    
@3458   function_decl    name: @3460    mngl: @3456    type: @3457   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3461    lang: C        body: undefined 
                         link: extern  
@3459   parm_decl        type: @47      srcp: string.h:94     
                         chan: @3462    argt: @47      size: @18     
                         algn: 32       used: 0       
@3460   identifier_node  strg: __builtin_strcpy        lngt: 16      
@3461   function_decl    name: @3463    type: @3464    srcp: string.h:92     
                         chan: @3465    lang: C        args: @3466   
                         body: undefined               link: extern  
@3462   parm_decl        type: @89      srcp: string.h:94     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3463   identifier_node  strg: strcmp   lngt: 6       
@3464   function_type    size: @9       algn: 8        retn: @10     
                         prms: @236    
@3465   function_decl    name: @3467    mngl: @3463    type: @3464   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3468    lang: C        body: undefined 
                         link: extern  
@3466   parm_decl        type: @89      srcp: string.h:92     
                         chan: @3469    argt: @89      size: @18     
                         algn: 32       used: 0       
@3467   identifier_node  strg: __builtin_strcmp        lngt: 16      
@3468   function_decl    name: @3470    type: @3373    srcp: string.h:91     
                         chan: @3471    lang: C        args: @3472   
                         body: undefined               link: extern  
@3469   parm_decl        type: @89      srcp: string.h:92     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3470   identifier_node  strg: strchr   lngt: 6       
@3471   function_decl    name: @3473    mngl: @3470    type: @3373   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3474    lang: C        body: undefined 
                         link: extern  
@3472   parm_decl        type: @89      srcp: string.h:91     
                         chan: @3475    argt: @89      size: @18     
                         algn: 32       used: 0       
@3473   identifier_node  strg: __builtin_strchr        lngt: 16      
@3474   function_decl    name: @3476    type: @3457    srcp: string.h:90     
                         chan: @3477    lang: C        args: @3478   
                         body: undefined               link: extern  
@3475   parm_decl        type: @10      srcp: string.h:91     
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@3476   identifier_node  strg: strcat   lngt: 6       
@3477   function_decl    name: @3479    mngl: @3476    type: @3457   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3480    lang: C        body: undefined 
                         link: extern  
@3478   parm_decl        type: @47      srcp: string.h:90     
                         chan: @3481    argt: @47      size: @18     
                         algn: 32       used: 0       
@3479   identifier_node  strg: __builtin_strcat        lngt: 16      
@3480   function_decl    name: @3482    type: @3464    srcp: string.h:124    
                         chan: @3483    lang: C        args: @3484   
                         body: undefined               link: extern  
@3481   parm_decl        type: @89      srcp: string.h:90     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3482   identifier_node  strg: strcasecmp              lngt: 10      
@3483   function_decl    name: @3485    mngl: @3482    type: @3464   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3486    lang: C        body: undefined 
                         link: extern  
@3484   parm_decl        type: @89      srcp: string.h:124    
                         chan: @3487    argt: @89      size: @18     
                         algn: 32       used: 0       
@3485   identifier_node  strg: __builtin_strcasecmp    lngt: 20      
@3486   function_decl    name: @3488    type: @2652    srcp: <built-in>:0      
                         note: artificial              chan: @3489   
                         lang: C        body: undefined 
                         link: extern  
@3487   parm_decl        type: @89      srcp: string.h:124    
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3488   identifier_node  strg: stpncpy  lngt: 7       
@3489   function_decl    name: @3490    mngl: @3488    type: @2652   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3491    lang: C        body: undefined 
                         link: extern  
@3490   identifier_node  strg: __builtin_stpncpy       lngt: 17      
@3491   function_decl    name: @3492    type: @3457    srcp: string.h:87     
                         chan: @3493    lang: C        args: @3494   
                         body: undefined               link: extern  
@3492   identifier_node  strg: stpcpy   lngt: 6       
@3493   function_decl    name: @3495    mngl: @3492    type: @3457   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3496    lang: C        body: undefined 
                         link: extern  
@3494   parm_decl        type: @47      srcp: string.h:87     
                         chan: @3497    argt: @47      size: @18     
                         algn: 32       used: 0       
@3495   identifier_node  strg: __builtin_stpcpy        lngt: 16      
@3496   function_decl    name: @3498    type: @3373    srcp: string.h:123    
                         chan: @3499    lang: C        args: @3500   
                         body: undefined               link: extern  
@3497   parm_decl        type: @89      srcp: string.h:87     
                         argt: @89      size: @18      algn: 32      
                         used: 0       
@3498   identifier_node  strg: rindex   lngt: 6       
@3499   function_decl    name: @3501    mngl: @3498    type: @3373   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3502    lang: C        body: undefined 
                         link: extern  
@3500   parm_decl        type: @89      srcp: string.h:123    
                         chan: @3503    argt: @89      size: @18     
                         algn: 32       used: 0       
@3501   identifier_node  strg: __builtin_rindex        lngt: 16      
@3502   function_decl    name: @3504    type: @3505    srcp: string.h:85     
                         chan: @3506    lang: C        args: @3507   
                         body: undefined               link: extern  
@3503   parm_decl        type: @10      srcp: string.h:123    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@3504   identifier_node  strg: memset   lngt: 6       
@3505   function_type    size: @9       algn: 8        retn: @55     
                         prms: @3508   
@3506   function_decl    name: @3509    mngl: @3504    type: @3510   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3511    lang: C        body: undefined 
                         link: extern  
@3507   parm_decl        type: @55      srcp: string.h:85     
                         chan: @3512    argt: @55      size: @18     
                         algn: 32       used: 0       
@3508   tree_list        valu: @55      chan: @3513   
@3509   identifier_node  strg: __builtin_memset        lngt: 16      
@3510   function_type    size: @9       algn: 8        retn: @55     
                         prms: @3514   
@3511   function_decl    name: @3515    type: @3516    srcp: <built-in>:0      
                         note: artificial              chan: @3517   
                         lang: C        body: undefined 
                         link: extern  
@3512   parm_decl        type: @10      srcp: string.h:85     
                         chan: @3518    argt: @10      size: @18     
                         algn: 32       used: 0       
@3513   tree_list        valu: @10      chan: @3519   
@3514   tree_list        valu: @55      chan: @3520   
@3515   identifier_node  strg: mempcpy  lngt: 7       
@3516   function_type    size: @9       algn: 8        retn: @55     
                         prms: @3521   
@3517   function_decl    name: @3522    mngl: @3515    type: @3516   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3523    lang: C        body: undefined 
                         link: extern  
@3518   parm_decl        type: @105     srcp: string.h:85     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3519   tree_list        valu: @105     chan: @45     
@3520   tree_list        valu: @10      chan: @3524   
@3521   tree_list        valu: @55      chan: @3525   
@3522   identifier_node  strg: __builtin_mempcpy       lngt: 17      
@3523   function_decl    name: @3526    type: @3527    srcp: string.h:84     
                         chan: @3528    lang: C        args: @3529   
                         body: undefined               link: extern  
@3524   tree_list        valu: @120     chan: @45     
@3525   tree_list        valu: @1429    chan: @3530   
@3526   identifier_node  strg: memmove  lngt: 7       
@3527   function_type    size: @9       algn: 8        retn: @55     
                         prms: @3531   
@3528   function_decl    name: @3532    mngl: @3526    type: @3516   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3533    lang: C        body: undefined 
                         link: extern  
@3529   parm_decl        type: @55      srcp: string.h:84     
                         chan: @3534    argt: @55      size: @18     
                         algn: 32       used: 0       
@3530   tree_list        valu: @120     chan: @45     
@3531   tree_list        valu: @55      chan: @3535   
@3532   identifier_node  strg: __builtin_memmove       lngt: 17      
@3533   function_decl    name: @3536    type: @3527    srcp: string.h:83     
                         chan: @3537    lang: C        args: @3538   
                         body: undefined               link: extern  
@3534   parm_decl        type: @32      srcp: string.h:84     
                         chan: @3539    argt: @32      size: @18     
                         algn: 32       used: 0       
@3535   tree_list        valu: @32      chan: @3540   
@3536   identifier_node  strg: memcpy   lngt: 6       
@3537   function_decl    name: @3541    mngl: @3536    type: @3516   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3542    lang: C        body: undefined 
                         link: extern  
@3538   parm_decl        type: @55      srcp: string.h:83     
                         chan: @3543    argt: @55      size: @18     
                         algn: 32       used: 0       
@3539   parm_decl        type: @105     srcp: string.h:84     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3540   tree_list        valu: @105     chan: @45     
@3541   identifier_node  strg: __builtin_memcpy        lngt: 16      
@3542   function_decl    name: @3544    type: @3545    srcp: string.h:82     
                         chan: @3546    lang: C        args: @3547   
                         body: undefined               link: extern  
@3543   parm_decl        type: @32      srcp: string.h:83     
                         chan: @3548    argt: @32      size: @18     
                         algn: 32       used: 0       
@3544   identifier_node  strg: memcmp   lngt: 6       
@3545   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3549   
@3546   function_decl    name: @3550    mngl: @3544    type: @3551   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3552    lang: C        body: undefined 
                         link: extern  
@3547   parm_decl        type: @32      srcp: string.h:82     
                         chan: @3553    argt: @32      size: @18     
                         algn: 32       used: 0       
@3548   parm_decl        type: @105     srcp: string.h:83     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3549   tree_list        valu: @32      chan: @3554   
@3550   identifier_node  strg: __builtin_memcmp        lngt: 16      
@3551   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3555   
@3552   function_decl    name: @3556    type: @3373    srcp: string.h:122    
                         chan: @3557    lang: C        args: @3558   
                         body: undefined               link: extern  
@3553   parm_decl        type: @32      srcp: string.h:82     
                         chan: @3559    argt: @32      size: @18     
                         algn: 32       used: 0       
@3554   tree_list        valu: @32      chan: @3560   
@3555   tree_list        valu: @1429    chan: @3561   
@3556   identifier_node  strg: index    lngt: 5       
@3557   function_decl    name: @3562    mngl: @3556    type: @3373   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3563    lang: C        body: undefined 
                         link: extern  
@3558   parm_decl        type: @89      srcp: string.h:122    
                         chan: @3564    argt: @89      size: @18     
                         algn: 32       used: 0       
@3559   parm_decl        type: @105     srcp: string.h:82     
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3560   tree_list        valu: @105     chan: @45     
@3561   tree_list        valu: @1429    chan: @3565   
@3562   identifier_node  strg: __builtin_index         lngt: 15      
@3563   function_decl    name: @3566    type: @3567    srcp: string.h:120    
                         chan: @3568    lang: C        args: @3569   
                         body: undefined               link: extern  
@3564   parm_decl        type: @10      srcp: string.h:122    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@3565   tree_list        valu: @120     chan: @45     
@3566   identifier_node  strg: bzero    lngt: 5       
@3567   function_type    size: @9       algn: 8        retn: @19     
                         prms: @3570   
@3568   function_decl    name: @3571    mngl: @3566    type: @3572   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3573    lang: C        body: undefined 
                         link: extern  
@3569   parm_decl        type: @55      srcp: string.h:120    
                         chan: @3574    argt: @55      size: @18     
                         algn: 32       used: 0       
@3570   tree_list        valu: @55      chan: @3575   
@3571   identifier_node  strg: __builtin_bzero         lngt: 15      
@3572   function_type    size: @9       algn: 8        retn: @19     
                         prms: @3576   
@3573   function_decl    name: @3577    type: @3578    srcp: string.h:119    
                         chan: @3579    lang: C        args: @3580   
                         body: undefined               link: extern  
@3574   parm_decl        type: @105     srcp: string.h:120    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3575   tree_list        valu: @105     chan: @45     
@3576   tree_list        valu: @55      chan: @3581   
@3577   identifier_node  strg: bcopy    lngt: 5       
@3578   function_type    size: @9       algn: 8        retn: @19     
                         prms: @3582   
@3579   function_decl    name: @3583    mngl: @3577    type: @3584   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3585    lang: C        body: undefined 
                         link: extern  
@3580   parm_decl        type: @32      srcp: string.h:119    
                         chan: @3586    argt: @32      size: @18     
                         algn: 32       used: 0       
@3581   tree_list        valu: @120     chan: @45     
@3582   tree_list        valu: @32      chan: @3587   
@3583   identifier_node  strg: __builtin_bcopy         lngt: 15      
@3584   function_type    size: @9       algn: 8        retn: @19     
                         prms: @3588   
@3585   function_decl    name: @3589    type: @3590    srcp: string.h:118    
                         chan: @3591    lang: C        args: @3592   
                         body: undefined               link: extern  
@3586   parm_decl        type: @55      srcp: string.h:119    
                         chan: @3593    argt: @55      size: @18     
                         algn: 32       used: 0       
@3587   tree_list        valu: @55      chan: @3594   
@3588   tree_list        valu: @1429    chan: @3595   
@3589   identifier_node  strg: bcmp     lngt: 4       
@3590   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3549   
@3591   function_decl    name: @3596    mngl: @3589    type: @3597   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3598    lang: C        body: undefined 
                         link: extern  
@3592   parm_decl        type: @32      srcp: string.h:118    
                         chan: @3599    argt: @32      size: @18     
                         algn: 32       used: 0       
@3593   parm_decl        type: @105     srcp: string.h:119    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3594   tree_list        valu: @105     chan: @45     
@3595   tree_list        valu: @55      chan: @3600   
@3596   identifier_node  strg: __builtin_bcmp          lngt: 14      
@3597   function_type    size: @9       algn: 8        retn: @10     
                         prms: @3555   
@3598   function_decl    name: @3601    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3603   
                         lang: C        body: undefined 
                         link: extern  
@3599   parm_decl        type: @32      srcp: string.h:118    
                         chan: @3604    argt: @32      size: @18     
                         algn: 32       used: 0       
@3600   tree_list        valu: @120     chan: @45     
@3601   identifier_node  strg: ctanl    lngt: 5       
@3602   function_type    size: @9       algn: 8        retn: @2224   
                         prms: @3605   
@3603   function_decl    name: @3606    mngl: @3601    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3607    lang: C        body: undefined 
                         link: extern  
@3604   parm_decl        type: @105     srcp: string.h:118    
                         argt: @105     size: @18      algn: 32      
                         used: 0       
@3605   tree_list        valu: @2224    chan: @45     
@3606   identifier_node  strg: __builtin_ctanl         lngt: 15      
@3607   function_decl    name: @3608    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3609   
                         lang: C        body: undefined 
                         link: extern  
@3608   identifier_node  strg: ctanhl   lngt: 6       
@3609   function_decl    name: @3610    mngl: @3608    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3611    lang: C        body: undefined 
                         link: extern  
@3610   identifier_node  strg: __builtin_ctanhl        lngt: 16      
@3611   function_decl    name: @3612    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3614   
                         lang: C        body: undefined 
                         link: extern  
@3612   identifier_node  strg: ctanhf   lngt: 6       
@3613   function_type    size: @9       algn: 8        retn: @2248   
                         prms: @3615   
@3614   function_decl    name: @3616    mngl: @3612    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3617    lang: C        body: undefined 
                         link: extern  
@3615   tree_list        valu: @2248    chan: @45     
@3616   identifier_node  strg: __builtin_ctanhf        lngt: 16      
@3617   function_decl    name: @3618    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3620   
                         lang: C        body: undefined 
                         link: extern  
@3618   identifier_node  strg: ctanh    lngt: 5       
@3619   function_type    size: @9       algn: 8        retn: @2236   
                         prms: @3621   
@3620   function_decl    name: @3622    mngl: @3618    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3623    lang: C        body: undefined 
                         link: extern  
@3621   tree_list        valu: @2236    chan: @45     
@3622   identifier_node  strg: __builtin_ctanh         lngt: 15      
@3623   function_decl    name: @3624    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3625   
                         lang: C        body: undefined 
                         link: extern  
@3624   identifier_node  strg: ctanf    lngt: 5       
@3625   function_decl    name: @3626    mngl: @3624    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3627    lang: C        body: undefined 
                         link: extern  
@3626   identifier_node  strg: __builtin_ctanf         lngt: 15      
@3627   function_decl    name: @3628    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3629   
                         lang: C        body: undefined 
                         link: extern  
@3628   identifier_node  strg: ctan     lngt: 4       
@3629   function_decl    name: @3630    mngl: @3628    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3631    lang: C        body: undefined 
                         link: extern  
@3630   identifier_node  strg: __builtin_ctan          lngt: 14      
@3631   function_decl    name: @3632    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3633   
                         lang: C        body: undefined 
                         link: extern  
@3632   identifier_node  strg: csqrtl   lngt: 6       
@3633   function_decl    name: @3634    mngl: @3632    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3635    lang: C        body: undefined 
                         link: extern  
@3634   identifier_node  strg: __builtin_csqrtl        lngt: 16      
@3635   function_decl    name: @3636    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3637   
                         lang: C        body: undefined 
                         link: extern  
@3636   identifier_node  strg: csqrtf   lngt: 6       
@3637   function_decl    name: @3638    mngl: @3636    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3639    lang: C        body: undefined 
                         link: extern  
@3638   identifier_node  strg: __builtin_csqrtf        lngt: 16      
@3639   function_decl    name: @3640    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3641   
                         lang: C        body: undefined 
                         link: extern  
@3640   identifier_node  strg: csqrt    lngt: 5       
@3641   function_decl    name: @3642    mngl: @3640    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3643    lang: C        body: undefined 
                         link: extern  
@3642   identifier_node  strg: __builtin_csqrt         lngt: 15      
@3643   function_decl    name: @3644    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3645   
                         lang: C        body: undefined 
                         link: extern  
@3644   identifier_node  strg: csinl    lngt: 5       
@3645   function_decl    name: @3646    mngl: @3644    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3647    lang: C        body: undefined 
                         link: extern  
@3646   identifier_node  strg: __builtin_csinl         lngt: 15      
@3647   function_decl    name: @3648    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3649   
                         lang: C        body: undefined 
                         link: extern  
@3648   identifier_node  strg: csinhl   lngt: 6       
@3649   function_decl    name: @3650    mngl: @3648    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3651    lang: C        body: undefined 
                         link: extern  
@3650   identifier_node  strg: __builtin_csinhl        lngt: 16      
@3651   function_decl    name: @3652    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3653   
                         lang: C        body: undefined 
                         link: extern  
@3652   identifier_node  strg: csinhf   lngt: 6       
@3653   function_decl    name: @3654    mngl: @3652    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3655    lang: C        body: undefined 
                         link: extern  
@3654   identifier_node  strg: __builtin_csinhf        lngt: 16      
@3655   function_decl    name: @3656    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3657   
                         lang: C        body: undefined 
                         link: extern  
@3656   identifier_node  strg: csinh    lngt: 5       
@3657   function_decl    name: @3658    mngl: @3656    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3659    lang: C        body: undefined 
                         link: extern  
@3658   identifier_node  strg: __builtin_csinh         lngt: 15      
@3659   function_decl    name: @3660    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3661   
                         lang: C        body: undefined 
                         link: extern  
@3660   identifier_node  strg: csinf    lngt: 5       
@3661   function_decl    name: @3662    mngl: @3660    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3663    lang: C        body: undefined 
                         link: extern  
@3662   identifier_node  strg: __builtin_csinf         lngt: 15      
@3663   function_decl    name: @3664    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3665   
                         lang: C        body: undefined 
                         link: extern  
@3664   identifier_node  strg: csin     lngt: 4       
@3665   function_decl    name: @3666    mngl: @3664    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3667    lang: C        body: undefined 
                         link: extern  
@3666   identifier_node  strg: __builtin_csin          lngt: 14      
@3667   function_decl    name: @3668    type: @3669    srcp: <built-in>:0      
                         note: artificial              chan: @3670   
                         lang: C        body: undefined 
                         link: extern  
@3668   identifier_node  strg: creall   lngt: 6       
@3669   function_type    size: @9       algn: 8        retn: @629    
                         prms: @3671   
@3670   function_decl    name: @3672    mngl: @3668    type: @3669   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3673    lang: C        body: undefined 
                         link: extern  
@3671   tree_list        valu: @2224    chan: @45     
@3672   identifier_node  strg: __builtin_creall        lngt: 16      
@3673   function_decl    name: @3674    type: @3675    srcp: <built-in>:0      
                         note: artificial              chan: @3676   
                         lang: C        body: undefined 
                         link: extern  
@3674   identifier_node  strg: crealf   lngt: 6       
@3675   function_type    size: @9       algn: 8        retn: @100    
                         prms: @3677   
@3676   function_decl    name: @3678    mngl: @3674    type: @3675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3679    lang: C        body: undefined 
                         link: extern  
@3677   tree_list        valu: @2248    chan: @45     
@3678   identifier_node  strg: __builtin_crealf        lngt: 16      
@3679   function_decl    name: @3680    type: @3681    srcp: <built-in>:0      
                         note: artificial              chan: @3682   
                         lang: C        body: undefined 
                         link: extern  
@3680   identifier_node  strg: creal    lngt: 5       
@3681   function_type    size: @9       algn: 8        retn: @605    
                         prms: @3683   
@3682   function_decl    name: @3684    mngl: @3680    type: @3681   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3685    lang: C        body: undefined 
                         link: extern  
@3683   tree_list        valu: @2236    chan: @45     
@3684   identifier_node  strg: __builtin_creal         lngt: 15      
@3685   function_decl    name: @3686    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3687   
                         lang: C        body: undefined 
                         link: extern  
@3686   identifier_node  strg: cprojl   lngt: 6       
@3687   function_decl    name: @3688    mngl: @3686    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3689    lang: C        body: undefined 
                         link: extern  
@3688   identifier_node  strg: __builtin_cprojl        lngt: 16      
@3689   function_decl    name: @3690    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3691   
                         lang: C        body: undefined 
                         link: extern  
@3690   identifier_node  strg: cprojf   lngt: 6       
@3691   function_decl    name: @3692    mngl: @3690    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3693    lang: C        body: undefined 
                         link: extern  
@3692   identifier_node  strg: __builtin_cprojf        lngt: 16      
@3693   function_decl    name: @3694    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3695   
                         lang: C        body: undefined 
                         link: extern  
@3694   identifier_node  strg: cproj    lngt: 5       
@3695   function_decl    name: @3696    mngl: @3694    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3697    lang: C        body: undefined 
                         link: extern  
@3696   identifier_node  strg: __builtin_cproj         lngt: 15      
@3697   function_decl    name: @3698    type: @3699    srcp: <built-in>:0      
                         note: artificial              chan: @3700   
                         lang: C        body: undefined 
                         link: extern  
@3698   identifier_node  strg: cpowl    lngt: 5       
@3699   function_type    size: @9       algn: 8        retn: @2224   
                         prms: @3701   
@3700   function_decl    name: @3702    mngl: @3698    type: @3699   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3703    lang: C        body: undefined 
                         link: extern  
@3701   tree_list        valu: @2224    chan: @3704   
@3702   identifier_node  strg: __builtin_cpowl         lngt: 15      
@3703   function_decl    name: @3705    type: @3706    srcp: <built-in>:0      
                         note: artificial              chan: @3707   
                         lang: C        body: undefined 
                         link: extern  
@3704   tree_list        valu: @2224    chan: @45     
@3705   identifier_node  strg: cpowf    lngt: 5       
@3706   function_type    size: @9       algn: 8        retn: @2248   
                         prms: @3708   
@3707   function_decl    name: @3709    mngl: @3705    type: @3706   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3710    lang: C        body: undefined 
                         link: extern  
@3708   tree_list        valu: @2248    chan: @3711   
@3709   identifier_node  strg: __builtin_cpowf         lngt: 15      
@3710   function_decl    name: @3712    type: @3713    srcp: <built-in>:0      
                         note: artificial              chan: @3714   
                         lang: C        body: undefined 
                         link: extern  
@3711   tree_list        valu: @2248    chan: @45     
@3712   identifier_node  strg: cpow     lngt: 4       
@3713   function_type    size: @9       algn: 8        retn: @2236   
                         prms: @3715   
@3714   function_decl    name: @3716    mngl: @3712    type: @3713   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3717    lang: C        body: undefined 
                         link: extern  
@3715   tree_list        valu: @2236    chan: @3718   
@3716   identifier_node  strg: __builtin_cpow          lngt: 14      
@3717   function_decl    name: @3719    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3720   
                         lang: C        body: undefined 
                         link: extern  
@3718   tree_list        valu: @2236    chan: @45     
@3719   identifier_node  strg: conjl    lngt: 5       
@3720   function_decl    name: @3721    mngl: @3719    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3722    lang: C        body: undefined 
                         link: extern  
@3721   identifier_node  strg: __builtin_conjl         lngt: 15      
@3722   function_decl    name: @3723    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3724   
                         lang: C        body: undefined 
                         link: extern  
@3723   identifier_node  strg: conjf    lngt: 5       
@3724   function_decl    name: @3725    mngl: @3723    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3726    lang: C        body: undefined 
                         link: extern  
@3725   identifier_node  strg: __builtin_conjf         lngt: 15      
@3726   function_decl    name: @3727    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3728   
                         lang: C        body: undefined 
                         link: extern  
@3727   identifier_node  strg: conj     lngt: 4       
@3728   function_decl    name: @3729    mngl: @3727    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3730    lang: C        body: undefined 
                         link: extern  
@3729   identifier_node  strg: __builtin_conj          lngt: 14      
@3730   function_decl    name: @3731    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3732   
                         lang: C        body: undefined 
                         link: extern  
@3731   identifier_node  strg: clog10l  lngt: 7       
@3732   function_decl    name: @3733    mngl: @3731    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3734    lang: C        body: undefined 
                         link: extern  
@3733   identifier_node  strg: __builtin_clog10l       lngt: 17      
@3734   function_decl    name: @3735    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3736   
                         lang: C        body: undefined 
                         link: extern  
@3735   identifier_node  strg: clog10f  lngt: 7       
@3736   function_decl    name: @3737    mngl: @3735    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3738    lang: C        body: undefined 
                         link: extern  
@3737   identifier_node  strg: __builtin_clog10f       lngt: 17      
@3738   function_decl    name: @3739    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3740   
                         lang: C        body: undefined 
                         link: extern  
@3739   identifier_node  strg: clog10   lngt: 6       
@3740   function_decl    name: @3741    mngl: @3739    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3742    lang: C        body: undefined 
                         link: extern  
@3741   identifier_node  strg: __builtin_clog10        lngt: 16      
@3742   function_decl    name: @3743    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3744   
                         lang: C        body: undefined 
                         link: extern  
@3743   identifier_node  strg: clogl    lngt: 5       
@3744   function_decl    name: @3745    mngl: @3743    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3746    lang: C        body: undefined 
                         link: extern  
@3745   identifier_node  strg: __builtin_clogl         lngt: 15      
@3746   function_decl    name: @3747    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3748   
                         lang: C        body: undefined 
                         link: extern  
@3747   identifier_node  strg: clogf    lngt: 5       
@3748   function_decl    name: @3749    mngl: @3747    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3750    lang: C        body: undefined 
                         link: extern  
@3749   identifier_node  strg: __builtin_clogf         lngt: 15      
@3750   function_decl    name: @3751    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3752   
                         lang: C        body: undefined 
                         link: extern  
@3751   identifier_node  strg: clog     lngt: 4       
@3752   function_decl    name: @3753    mngl: @3751    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3754    lang: C        body: undefined 
                         link: extern  
@3753   identifier_node  strg: __builtin_clog          lngt: 14      
@3754   function_decl    name: @3755    type: @3669    srcp: <built-in>:0      
                         note: artificial              chan: @3756   
                         lang: C        body: undefined 
                         link: extern  
@3755   identifier_node  strg: cimagl   lngt: 6       
@3756   function_decl    name: @3757    mngl: @3755    type: @3669   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3758    lang: C        body: undefined 
                         link: extern  
@3757   identifier_node  strg: __builtin_cimagl        lngt: 16      
@3758   function_decl    name: @3759    type: @3675    srcp: <built-in>:0      
                         note: artificial              chan: @3760   
                         lang: C        body: undefined 
                         link: extern  
@3759   identifier_node  strg: cimagf   lngt: 6       
@3760   function_decl    name: @3761    mngl: @3759    type: @3675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3762    lang: C        body: undefined 
                         link: extern  
@3761   identifier_node  strg: __builtin_cimagf        lngt: 16      
@3762   function_decl    name: @3763    type: @3681    srcp: <built-in>:0      
                         note: artificial              chan: @3764   
                         lang: C        body: undefined 
                         link: extern  
@3763   identifier_node  strg: cimag    lngt: 5       
@3764   function_decl    name: @3765    mngl: @3763    type: @3681   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3766    lang: C        body: undefined 
                         link: extern  
@3765   identifier_node  strg: __builtin_cimag         lngt: 15      
@3766   function_decl    name: @3767    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3768   
                         lang: C        body: undefined 
                         link: extern  
@3767   identifier_node  strg: cexpl    lngt: 5       
@3768   function_decl    name: @3769    mngl: @3767    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3770    lang: C        body: undefined 
                         link: extern  
@3769   identifier_node  strg: __builtin_cexpl         lngt: 15      
@3770   function_decl    name: @3771    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3772   
                         lang: C        body: undefined 
                         link: extern  
@3771   identifier_node  strg: cexpf    lngt: 5       
@3772   function_decl    name: @3773    mngl: @3771    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3774    lang: C        body: undefined 
                         link: extern  
@3773   identifier_node  strg: __builtin_cexpf         lngt: 15      
@3774   function_decl    name: @3775    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3776   
                         lang: C        body: undefined 
                         link: extern  
@3775   identifier_node  strg: cexp     lngt: 4       
@3776   function_decl    name: @3777    mngl: @3775    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3778    lang: C        body: undefined 
                         link: extern  
@3777   identifier_node  strg: __builtin_cexp          lngt: 14      
@3778   function_decl    name: @3779    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3780   
                         lang: C        body: undefined 
                         link: extern  
@3779   identifier_node  strg: ccosl    lngt: 5       
@3780   function_decl    name: @3781    mngl: @3779    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3782    lang: C        body: undefined 
                         link: extern  
@3781   identifier_node  strg: __builtin_ccosl         lngt: 15      
@3782   function_decl    name: @3783    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3784   
                         lang: C        body: undefined 
                         link: extern  
@3783   identifier_node  strg: ccoshl   lngt: 6       
@3784   function_decl    name: @3785    mngl: @3783    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3786    lang: C        body: undefined 
                         link: extern  
@3785   identifier_node  strg: __builtin_ccoshl        lngt: 16      
@3786   function_decl    name: @3787    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3788   
                         lang: C        body: undefined 
                         link: extern  
@3787   identifier_node  strg: ccoshf   lngt: 6       
@3788   function_decl    name: @3789    mngl: @3787    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3790    lang: C        body: undefined 
                         link: extern  
@3789   identifier_node  strg: __builtin_ccoshf        lngt: 16      
@3790   function_decl    name: @3791    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3792   
                         lang: C        body: undefined 
                         link: extern  
@3791   identifier_node  strg: ccosh    lngt: 5       
@3792   function_decl    name: @3793    mngl: @3791    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3794    lang: C        body: undefined 
                         link: extern  
@3793   identifier_node  strg: __builtin_ccosh         lngt: 15      
@3794   function_decl    name: @3795    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3796   
                         lang: C        body: undefined 
                         link: extern  
@3795   identifier_node  strg: ccosf    lngt: 5       
@3796   function_decl    name: @3797    mngl: @3795    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3798    lang: C        body: undefined 
                         link: extern  
@3797   identifier_node  strg: __builtin_ccosf         lngt: 15      
@3798   function_decl    name: @3799    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3800   
                         lang: C        body: undefined 
                         link: extern  
@3799   identifier_node  strg: ccos     lngt: 4       
@3800   function_decl    name: @3801    mngl: @3799    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3802    lang: C        body: undefined 
                         link: extern  
@3801   identifier_node  strg: __builtin_ccos          lngt: 14      
@3802   function_decl    name: @3803    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3804   
                         lang: C        body: undefined 
                         link: extern  
@3803   identifier_node  strg: catanl   lngt: 6       
@3804   function_decl    name: @3805    mngl: @3803    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3806    lang: C        body: undefined 
                         link: extern  
@3805   identifier_node  strg: __builtin_catanl        lngt: 16      
@3806   function_decl    name: @3807    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3808   
                         lang: C        body: undefined 
                         link: extern  
@3807   identifier_node  strg: catanhl  lngt: 7       
@3808   function_decl    name: @3809    mngl: @3807    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3810    lang: C        body: undefined 
                         link: extern  
@3809   identifier_node  strg: __builtin_catanhl       lngt: 17      
@3810   function_decl    name: @3811    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3812   
                         lang: C        body: undefined 
                         link: extern  
@3811   identifier_node  strg: catanhf  lngt: 7       
@3812   function_decl    name: @3813    mngl: @3811    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3814    lang: C        body: undefined 
                         link: extern  
@3813   identifier_node  strg: __builtin_catanhf       lngt: 17      
@3814   function_decl    name: @3815    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3816   
                         lang: C        body: undefined 
                         link: extern  
@3815   identifier_node  strg: catanh   lngt: 6       
@3816   function_decl    name: @3817    mngl: @3815    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3818    lang: C        body: undefined 
                         link: extern  
@3817   identifier_node  strg: __builtin_catanh        lngt: 16      
@3818   function_decl    name: @3819    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3820   
                         lang: C        body: undefined 
                         link: extern  
@3819   identifier_node  strg: catanf   lngt: 6       
@3820   function_decl    name: @3821    mngl: @3819    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3822    lang: C        body: undefined 
                         link: extern  
@3821   identifier_node  strg: __builtin_catanf        lngt: 16      
@3822   function_decl    name: @3823    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3824   
                         lang: C        body: undefined 
                         link: extern  
@3823   identifier_node  strg: catan    lngt: 5       
@3824   function_decl    name: @3825    mngl: @3823    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3826    lang: C        body: undefined 
                         link: extern  
@3825   identifier_node  strg: __builtin_catan         lngt: 15      
@3826   function_decl    name: @3827    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3828   
                         lang: C        body: undefined 
                         link: extern  
@3827   identifier_node  strg: casinl   lngt: 6       
@3828   function_decl    name: @3829    mngl: @3827    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3830    lang: C        body: undefined 
                         link: extern  
@3829   identifier_node  strg: __builtin_casinl        lngt: 16      
@3830   function_decl    name: @3831    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3832   
                         lang: C        body: undefined 
                         link: extern  
@3831   identifier_node  strg: casinhl  lngt: 7       
@3832   function_decl    name: @3833    mngl: @3831    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3834    lang: C        body: undefined 
                         link: extern  
@3833   identifier_node  strg: __builtin_casinhl       lngt: 17      
@3834   function_decl    name: @3835    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3836   
                         lang: C        body: undefined 
                         link: extern  
@3835   identifier_node  strg: casinhf  lngt: 7       
@3836   function_decl    name: @3837    mngl: @3835    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3838    lang: C        body: undefined 
                         link: extern  
@3837   identifier_node  strg: __builtin_casinhf       lngt: 17      
@3838   function_decl    name: @3839    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3840   
                         lang: C        body: undefined 
                         link: extern  
@3839   identifier_node  strg: casinh   lngt: 6       
@3840   function_decl    name: @3841    mngl: @3839    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3842    lang: C        body: undefined 
                         link: extern  
@3841   identifier_node  strg: __builtin_casinh        lngt: 16      
@3842   function_decl    name: @3843    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3844   
                         lang: C        body: undefined 
                         link: extern  
@3843   identifier_node  strg: casinf   lngt: 6       
@3844   function_decl    name: @3845    mngl: @3843    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3846    lang: C        body: undefined 
                         link: extern  
@3845   identifier_node  strg: __builtin_casinf        lngt: 16      
@3846   function_decl    name: @3847    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3848   
                         lang: C        body: undefined 
                         link: extern  
@3847   identifier_node  strg: casin    lngt: 5       
@3848   function_decl    name: @3849    mngl: @3847    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3850    lang: C        body: undefined 
                         link: extern  
@3849   identifier_node  strg: __builtin_casin         lngt: 15      
@3850   function_decl    name: @3851    type: @3669    srcp: <built-in>:0      
                         note: artificial              chan: @3852   
                         lang: C        body: undefined 
                         link: extern  
@3851   identifier_node  strg: cargl    lngt: 5       
@3852   function_decl    name: @3853    mngl: @3851    type: @3669   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3854    lang: C        body: undefined 
                         link: extern  
@3853   identifier_node  strg: __builtin_cargl         lngt: 15      
@3854   function_decl    name: @3855    type: @3675    srcp: <built-in>:0      
                         note: artificial              chan: @3856   
                         lang: C        body: undefined 
                         link: extern  
@3855   identifier_node  strg: cargf    lngt: 5       
@3856   function_decl    name: @3857    mngl: @3855    type: @3675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3858    lang: C        body: undefined 
                         link: extern  
@3857   identifier_node  strg: __builtin_cargf         lngt: 15      
@3858   function_decl    name: @3859    type: @3681    srcp: <built-in>:0      
                         note: artificial              chan: @3860   
                         lang: C        body: undefined 
                         link: extern  
@3859   identifier_node  strg: carg     lngt: 4       
@3860   function_decl    name: @3861    mngl: @3859    type: @3681   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3862    lang: C        body: undefined 
                         link: extern  
@3861   identifier_node  strg: __builtin_carg          lngt: 14      
@3862   function_decl    name: @3863    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3864   
                         lang: C        body: undefined 
                         link: extern  
@3863   identifier_node  strg: cacosl   lngt: 6       
@3864   function_decl    name: @3865    mngl: @3863    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3866    lang: C        body: undefined 
                         link: extern  
@3865   identifier_node  strg: __builtin_cacosl        lngt: 16      
@3866   function_decl    name: @3867    type: @3602    srcp: <built-in>:0      
                         note: artificial              chan: @3868   
                         lang: C        body: undefined 
                         link: extern  
@3867   identifier_node  strg: cacoshl  lngt: 7       
@3868   function_decl    name: @3869    mngl: @3867    type: @3602   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3870    lang: C        body: undefined 
                         link: extern  
@3869   identifier_node  strg: __builtin_cacoshl       lngt: 17      
@3870   function_decl    name: @3871    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3872   
                         lang: C        body: undefined 
                         link: extern  
@3871   identifier_node  strg: cacoshf  lngt: 7       
@3872   function_decl    name: @3873    mngl: @3871    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3874    lang: C        body: undefined 
                         link: extern  
@3873   identifier_node  strg: __builtin_cacoshf       lngt: 17      
@3874   function_decl    name: @3875    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3876   
                         lang: C        body: undefined 
                         link: extern  
@3875   identifier_node  strg: cacosh   lngt: 6       
@3876   function_decl    name: @3877    mngl: @3875    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3878    lang: C        body: undefined 
                         link: extern  
@3877   identifier_node  strg: __builtin_cacosh        lngt: 16      
@3878   function_decl    name: @3879    type: @3613    srcp: <built-in>:0      
                         note: artificial              chan: @3880   
                         lang: C        body: undefined 
                         link: extern  
@3879   identifier_node  strg: cacosf   lngt: 6       
@3880   function_decl    name: @3881    mngl: @3879    type: @3613   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3882    lang: C        body: undefined 
                         link: extern  
@3881   identifier_node  strg: __builtin_cacosf        lngt: 16      
@3882   function_decl    name: @3883    type: @3619    srcp: <built-in>:0      
                         note: artificial              chan: @3884   
                         lang: C        body: undefined 
                         link: extern  
@3883   identifier_node  strg: cacos    lngt: 5       
@3884   function_decl    name: @3885    mngl: @3883    type: @3619   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3886    lang: C        body: undefined 
                         link: extern  
@3885   identifier_node  strg: __builtin_cacos         lngt: 15      
@3886   function_decl    name: @3887    type: @3669    srcp: <built-in>:0      
                         note: artificial              chan: @3888   
                         lang: C        body: undefined 
                         link: extern  
@3887   identifier_node  strg: cabsl    lngt: 5       
@3888   function_decl    name: @3889    mngl: @3887    type: @3669   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3890    lang: C        body: undefined 
                         link: extern  
@3889   identifier_node  strg: __builtin_cabsl         lngt: 15      
@3890   function_decl    name: @3891    type: @3675    srcp: <built-in>:0      
                         note: artificial              chan: @3892   
                         lang: C        body: undefined 
                         link: extern  
@3891   identifier_node  strg: cabsf    lngt: 5       
@3892   function_decl    name: @3893    mngl: @3891    type: @3675   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3894    lang: C        body: undefined 
                         link: extern  
@3893   identifier_node  strg: __builtin_cabsf         lngt: 15      
@3894   function_decl    name: @3895    type: @3681    srcp: <built-in>:0      
                         note: artificial              chan: @3896   
                         lang: C        body: undefined 
                         link: extern  
@3895   identifier_node  strg: cabs     lngt: 4       
@3896   function_decl    name: @3897    mngl: @3895    type: @3681   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3898    lang: C        body: undefined 
                         link: extern  
@3897   identifier_node  strg: __builtin_cabs          lngt: 14      
@3898   function_decl    name: @3899    type: @3900    srcp: <built-in>:0      
                         note: artificial              chan: @3901   
                         lang: C        body: undefined 
                         link: extern  
@3899   identifier_node  strg: ynl      lngt: 3       
@3900   function_type    size: @9       algn: 8        retn: @629    
                         prms: @3902   
@3901   function_decl    name: @3903    mngl: @3899    type: @3900   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3904    lang: C        body: undefined 
                         link: extern  
@3902   tree_list        valu: @10      chan: @3905   
@3903   identifier_node  strg: __builtin_ynl           lngt: 13      
@3904   function_decl    name: @3906    type: @3907    srcp: <built-in>:0      
                         note: artificial              chan: @3908   
                         lang: C        body: undefined 
                         link: extern  
@3905   tree_list        valu: @629     chan: @45     
@3906   identifier_node  strg: ynf      lngt: 3       
@3907   function_type    size: @9       algn: 8        retn: @100    
                         prms: @3909   
@3908   function_decl    name: @3910    mngl: @3906    type: @3907   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3911    lang: C        body: undefined 
                         link: extern  
@3909   tree_list        valu: @10      chan: @3912   
@3910   identifier_node  strg: __builtin_ynf           lngt: 13      
@3911   function_decl    name: @3913    type: @3914    srcp: math.h:508    
                         chan: @3915    lang: C        args: @3916   
                         body: undefined               link: extern  
@3912   tree_list        valu: @100     chan: @45     
@3913   identifier_node  strg: yn       lngt: 2       
@3914   function_type    size: @9       algn: 8        retn: @605    
                         prms: @3917   
@3915   function_decl    name: @3918    mngl: @3913    type: @3914   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3919    lang: C        body: undefined 
                         link: extern  
@3916   parm_decl        type: @10      srcp: math.h:508    
                         chan: @3920    argt: @10      size: @18     
                         algn: 32       used: 0       
@3917   tree_list        valu: @10      chan: @3921   
@3918   identifier_node  strg: __builtin_yn            lngt: 12      
@3919   function_decl    name: @3922    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @3924   
                         lang: C        body: undefined 
                         link: extern  
@3920   parm_decl        type: @605     srcp: math.h:508    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@3921   tree_list        valu: @605     chan: @45     
@3922   identifier_node  strg: y1l      lngt: 3       
@3923   function_type    size: @9       algn: 8        retn: @629    
                         prms: @3925   
@3924   function_decl    name: @3926    mngl: @3922    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3927    lang: C        body: undefined 
                         link: extern  
@3925   tree_list        valu: @629     chan: @45     
@3926   identifier_node  strg: __builtin_y1l           lngt: 13      
@3927   function_decl    name: @3928    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @3930   
                         lang: C        body: undefined 
                         link: extern  
@3928   identifier_node  strg: y1f      lngt: 3       
@3929   function_type    size: @9       algn: 8        retn: @100    
                         prms: @3931   
@3930   function_decl    name: @3932    mngl: @3928    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3933    lang: C        body: undefined 
                         link: extern  
@3931   tree_list        valu: @100     chan: @45     
@3932   identifier_node  strg: __builtin_y1f           lngt: 13      
@3933   function_decl    name: @3934    type: @3935    srcp: math.h:506    
                         chan: @3936    lang: C        args: @3937   
                         body: undefined               link: extern  
@3934   identifier_node  strg: y1       lngt: 2       
@3935   function_type    size: @9       algn: 8        retn: @605    
                         prms: @3938   
@3936   function_decl    name: @3939    mngl: @3934    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3940    lang: C        body: undefined 
                         link: extern  
@3937   parm_decl        type: @605     srcp: math.h:506    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@3938   tree_list        valu: @605     chan: @45     
@3939   identifier_node  strg: __builtin_y1            lngt: 12      
@3940   function_decl    name: @3941    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @3942   
                         lang: C        body: undefined 
                         link: extern  
@3941   identifier_node  strg: y0l      lngt: 3       
@3942   function_decl    name: @3943    mngl: @3941    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3944    lang: C        body: undefined 
                         link: extern  
@3943   identifier_node  strg: __builtin_y0l           lngt: 13      
@3944   function_decl    name: @3945    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @3946   
                         lang: C        body: undefined 
                         link: extern  
@3945   identifier_node  strg: y0f      lngt: 3       
@3946   function_decl    name: @3947    mngl: @3945    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3948    lang: C        body: undefined 
                         link: extern  
@3947   identifier_node  strg: __builtin_y0f           lngt: 13      
@3948   function_decl    name: @3949    type: @3935    srcp: math.h:504    
                         chan: @3950    lang: C        args: @3951   
                         body: undefined               link: extern  
@3949   identifier_node  strg: y0       lngt: 2       
@3950   function_decl    name: @3952    mngl: @3949    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3953    lang: C        body: undefined 
                         link: extern  
@3951   parm_decl        type: @605     srcp: math.h:504    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@3952   identifier_node  strg: __builtin_y0            lngt: 12      
@3953   function_decl    name: @3954    type: @3923    srcp: math.h:470    
                         chan: @3955    lang: C        args: @3956   
                         body: undefined               link: extern  
@3954   identifier_node  strg: truncl   lngt: 6       
@3955   function_decl    name: @3957    mngl: @3954    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3958    lang: C        body: undefined 
                         link: extern  
@3956   parm_decl        type: @629     srcp: math.h:470    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@3957   identifier_node  strg: __builtin_truncl        lngt: 16      
@3958   function_decl    name: @3959    type: @3929    srcp: math.h:393    
                         chan: @3960    lang: C        args: @3961   
                         body: undefined               link: extern  
@3959   identifier_node  strg: truncf   lngt: 6       
@3960   function_decl    name: @3962    mngl: @3959    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3963    lang: C        body: undefined 
                         link: extern  
@3961   parm_decl        type: @100     srcp: math.h:393    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@3962   identifier_node  strg: __builtin_truncf        lngt: 16      
@3963   function_decl    name: @3964    type: @3935    srcp: math.h:392    
                         chan: @3965    lang: C        args: @3966   
                         body: undefined               link: extern  
@3964   identifier_node  strg: trunc    lngt: 5       
@3965   function_decl    name: @3967    mngl: @3964    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3968    lang: C        body: undefined 
                         link: extern  
@3966   parm_decl        type: @605     srcp: math.h:392    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@3967   identifier_node  strg: __builtin_trunc         lngt: 15      
@3968   function_decl    name: @3969    type: @3923    srcp: math.h:460    
                         chan: @3970    lang: C        args: @3971   
                         body: undefined               link: extern  
@3969   identifier_node  strg: tgammal  lngt: 7       
@3970   function_decl    name: @3972    mngl: @3969    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3973    lang: C        body: undefined 
                         link: extern  
@3971   parm_decl        type: @629     srcp: math.h:460    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@3972   identifier_node  strg: __builtin_tgammal       lngt: 17      
@3973   function_decl    name: @3974    type: @3929    srcp: math.h:363    
                         chan: @3975    lang: C        args: @3976   
                         body: undefined               link: extern  
@3974   identifier_node  strg: tgammaf  lngt: 7       
@3975   function_decl    name: @3977    mngl: @3974    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3978    lang: C        body: undefined 
                         link: extern  
@3976   parm_decl        type: @100     srcp: math.h:363    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@3977   identifier_node  strg: __builtin_tgammaf       lngt: 17      
@3978   function_decl    name: @3979    type: @3935    srcp: math.h:362    
                         chan: @3980    lang: C        args: @3981   
                         body: undefined               link: extern  
@3979   identifier_node  strg: tgamma   lngt: 6       
@3980   function_decl    name: @3982    mngl: @3979    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3983    lang: C        body: undefined 
                         link: extern  
@3981   parm_decl        type: @605     srcp: math.h:362    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@3982   identifier_node  strg: __builtin_tgamma        lngt: 16      
@3983   function_decl    name: @3984    type: @3923    srcp: math.h:431    
                         chan: @3985    lang: C        args: @3986   
                         body: undefined               link: extern  
@3984   identifier_node  strg: tanl     lngt: 4       
@3985   function_decl    name: @3987    mngl: @3984    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3988    lang: C        body: undefined 
                         link: extern  
@3986   parm_decl        type: @629     srcp: math.h:431    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@3987   identifier_node  strg: __builtin_tanl          lngt: 14      
@3988   function_decl    name: @3989    type: @3923    srcp: math.h:437    
                         chan: @3990    lang: C        args: @3991   
                         body: undefined               link: extern  
@3989   identifier_node  strg: tanhl    lngt: 5       
@3990   function_decl    name: @3992    mngl: @3989    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3993    lang: C        body: undefined 
                         link: extern  
@3991   parm_decl        type: @629     srcp: math.h:437    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@3992   identifier_node  strg: __builtin_tanhl         lngt: 15      
@3993   function_decl    name: @3994    type: @3929    srcp: math.h:294    
                         chan: @3995    lang: C        args: @3996   
                         body: undefined               link: extern  
@3994   identifier_node  strg: tanhf    lngt: 5       
@3995   function_decl    name: @3997    mngl: @3994    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3998    lang: C        body: undefined 
                         link: extern  
@3996   parm_decl        type: @100     srcp: math.h:294    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@3997   identifier_node  strg: __builtin_tanhf         lngt: 15      
@3998   function_decl    name: @3999    type: @3935    srcp: math.h:293    
                         chan: @4000    lang: C        args: @4001   
                         body: undefined               link: extern  
@3999   identifier_node  strg: tanh     lngt: 4       
@4000   function_decl    name: @4002    mngl: @3999    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4003    lang: C        body: undefined 
                         link: extern  
@4001   parm_decl        type: @605     srcp: math.h:293    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4002   identifier_node  strg: __builtin_tanh          lngt: 14      
@4003   function_decl    name: @4004    type: @3929    srcp: math.h:276    
                         chan: @4005    lang: C        args: @4006   
                         body: undefined               link: extern  
@4004   identifier_node  strg: tanf     lngt: 4       
@4005   function_decl    name: @4007    mngl: @4004    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4008    lang: C        body: undefined 
                         link: extern  
@4006   parm_decl        type: @100     srcp: math.h:276    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4007   identifier_node  strg: __builtin_tanf          lngt: 14      
@4008   function_decl    name: @4009    type: @3935    srcp: math.h:275    
                         chan: @4010    lang: C        args: @4011   
                         body: undefined               link: extern  
@4009   identifier_node  strg: tan      lngt: 3       
@4010   function_decl    name: @4012    mngl: @4009    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4013    lang: C        body: undefined 
                         link: extern  
@4011   parm_decl        type: @605     srcp: math.h:275    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4012   identifier_node  strg: __builtin_tan           lngt: 13      
@4013   function_decl    name: @4014    type: @3923    srcp: math.h:456    
                         chan: @4015    lang: C        args: @4016   
                         body: undefined               link: extern  
@4014   identifier_node  strg: sqrtl    lngt: 5       
@4015   function_decl    name: @4017    mngl: @4014    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4018    lang: C        body: undefined 
                         link: extern  
@4016   parm_decl        type: @629     srcp: math.h:456    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4017   identifier_node  strg: __builtin_sqrtl         lngt: 15      
@4018   function_decl    name: @4019    type: @3929    srcp: math.h:351    
                         chan: @4020    lang: C        args: @4021   
                         body: undefined               link: extern  
@4019   identifier_node  strg: sqrtf    lngt: 5       
@4020   function_decl    name: @4022    mngl: @4019    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4023    lang: C        body: undefined 
                         link: extern  
@4021   parm_decl        type: @100     srcp: math.h:351    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4022   identifier_node  strg: __builtin_sqrtf         lngt: 15      
@4023   function_decl    name: @4024    type: @3935    srcp: math.h:350    
                         chan: @4025    lang: C        args: @4026   
                         body: undefined               link: extern  
@4024   identifier_node  strg: sqrt     lngt: 4       
@4025   function_decl    name: @4027    mngl: @4024    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4028    lang: C        body: undefined 
                         link: extern  
@4026   parm_decl        type: @605     srcp: math.h:350    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4027   identifier_node  strg: __builtin_sqrt          lngt: 14      
@4028   function_decl    name: @4029    type: @3923    srcp: math.h:430    
                         chan: @4030    lang: C        args: @4031   
                         body: undefined               link: extern  
@4029   identifier_node  strg: sinl     lngt: 4       
@4030   function_decl    name: @4032    mngl: @4029    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4033    lang: C        body: undefined 
                         link: extern  
@4031   parm_decl        type: @629     srcp: math.h:430    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4032   identifier_node  strg: __builtin_sinl          lngt: 14      
@4033   function_decl    name: @4034    type: @3923    srcp: math.h:436    
                         chan: @4035    lang: C        args: @4036   
                         body: undefined               link: extern  
@4034   identifier_node  strg: sinhl    lngt: 5       
@4035   function_decl    name: @4037    mngl: @4034    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4038    lang: C        body: undefined 
                         link: extern  
@4036   parm_decl        type: @629     srcp: math.h:436    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4037   identifier_node  strg: __builtin_sinhl         lngt: 15      
@4038   function_decl    name: @4039    type: @3929    srcp: math.h:291    
                         chan: @4040    lang: C        args: @4041   
                         body: undefined               link: extern  
@4039   identifier_node  strg: sinhf    lngt: 5       
@4040   function_decl    name: @4042    mngl: @4039    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4043    lang: C        body: undefined 
                         link: extern  
@4041   parm_decl        type: @100     srcp: math.h:291    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4042   identifier_node  strg: __builtin_sinhf         lngt: 15      
@4043   function_decl    name: @4044    type: @3935    srcp: math.h:290    
                         chan: @4045    lang: C        args: @4046   
                         body: undefined               link: extern  
@4044   identifier_node  strg: sinh     lngt: 4       
@4045   function_decl    name: @4047    mngl: @4044    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4048    lang: C        body: undefined 
                         link: extern  
@4046   parm_decl        type: @605     srcp: math.h:290    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4047   identifier_node  strg: __builtin_sinh          lngt: 14      
@4048   function_decl    name: @4049    type: @3929    srcp: math.h:273    
                         chan: @4050    lang: C        args: @4051   
                         body: undefined               link: extern  
@4049   identifier_node  strg: sinf     lngt: 4       
@4050   function_decl    name: @4052    mngl: @4049    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4053    lang: C        body: undefined 
                         link: extern  
@4051   parm_decl        type: @100     srcp: math.h:273    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4052   identifier_node  strg: __builtin_sinf          lngt: 14      
@4053   function_decl    name: @4054    type: @4055    srcp: <built-in>:0      
                         note: artificial              chan: @4056   
                         lang: C        body: undefined 
                         link: extern  
@4054   identifier_node  strg: sincosl  lngt: 7       
@4055   function_type    size: @9       algn: 8        retn: @19     
                         prms: @4057   
@4056   function_decl    name: @4058    mngl: @4054    type: @4055   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4059    lang: C        body: undefined 
                         link: extern  
@4057   tree_list        valu: @629     chan: @4060   
@4058   identifier_node  strg: __builtin_sincosl       lngt: 17      
@4059   function_decl    name: @4061    type: @4062    srcp: <built-in>:0      
                         note: artificial              chan: @4063   
                         lang: C        body: undefined 
                         link: extern  
@4060   tree_list        valu: @4064    chan: @4065   
@4061   identifier_node  strg: sincosf  lngt: 7       
@4062   function_type    size: @9       algn: 8        retn: @19     
                         prms: @4066   
@4063   function_decl    name: @4067    mngl: @4061    type: @4062   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4068    lang: C        body: undefined 
                         link: extern  
@4064   pointer_type     size: @18      algn: 32       ptd : @629    
@4065   tree_list        valu: @4064    chan: @45     
@4066   tree_list        valu: @100     chan: @4069   
@4067   identifier_node  strg: __builtin_sincosf       lngt: 17      
@4068   function_decl    name: @4070    type: @4071    srcp: <built-in>:0      
                         note: artificial              chan: @4072   
                         lang: C        body: undefined 
                         link: extern  
@4069   tree_list        valu: @1680    chan: @4073   
@4070   identifier_node  strg: sincos   lngt: 6       
@4071   function_type    size: @9       algn: 8        retn: @19     
                         prms: @4074   
@4072   function_decl    name: @4075    mngl: @4070    type: @4071   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4076    lang: C        body: undefined 
                         link: extern  
@4073   tree_list        valu: @1680    chan: @45     
@4074   tree_list        valu: @605     chan: @4077   
@4075   identifier_node  strg: __builtin_sincos        lngt: 16      
@4076   function_decl    name: @4078    type: @3935    srcp: math.h:272    
                         chan: @4079    lang: C        args: @4080   
                         body: undefined               link: extern  
@4077   tree_list        valu: @1610    chan: @4081   
@4078   identifier_node  strg: sin      lngt: 3       
@4079   function_decl    name: @4082    mngl: @4078    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4083    lang: C        body: undefined 
                         link: extern  
@4080   parm_decl        type: @605     srcp: math.h:272    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4081   tree_list        valu: @1610    chan: @45     
@4082   identifier_node  strg: __builtin_sin           lngt: 13      
@4083   function_decl    name: @4084    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @4085   
                         lang: C        body: undefined 
                         link: extern  
@4084   identifier_node  strg: significandl            lngt: 12      
@4085   function_decl    name: @4086    mngl: @4084    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4087    lang: C        body: undefined 
                         link: extern  
@4086   identifier_node  strg: __builtin_significandl  lngt: 22      
@4087   function_decl    name: @4088    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @4089   
                         lang: C        body: undefined 
                         link: extern  
@4088   identifier_node  strg: significandf            lngt: 12      
@4089   function_decl    name: @4090    mngl: @4088    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4091    lang: C        body: undefined 
                         link: extern  
@4090   identifier_node  strg: __builtin_significandf  lngt: 22      
@4091   function_decl    name: @4092    type: @3935    srcp: math.h:595    
                         chan: @4093    lang: C        args: @4094   
                         body: undefined               link: extern  
@4092   identifier_node  strg: significand             lngt: 11      
@4093   function_decl    name: @4095    mngl: @4092    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4096    lang: C        body: undefined 
                         link: extern  
@4094   parm_decl        type: @605     srcp: math.h:595    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4095   identifier_node  strg: __builtin_significand   lngt: 21      
@4096   function_decl    name: @4097    type: @655     srcp: <built-in>:0      
                         note: artificial              chan: @4098   
                         lang: C        body: undefined 
                         link: extern  
@4097   identifier_node  strg: signbitl lngt: 8       
@4098   function_decl    name: @4099    mngl: @4097    type: @655    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4100    lang: C        body: undefined 
                         link: extern  
@4099   identifier_node  strg: __builtin_signbitl      lngt: 18      
@4100   function_decl    name: @4101    type: @670     srcp: <built-in>:0      
                         note: artificial              chan: @4102   
                         lang: C        body: undefined 
                         link: extern  
@4101   identifier_node  strg: signbitf lngt: 8       
@4102   function_decl    name: @4103    mngl: @4101    type: @670    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4104    lang: C        body: undefined 
                         link: extern  
@4103   identifier_node  strg: __builtin_signbitf      lngt: 18      
@4104   function_decl    name: @4105    type: @661     srcp: <built-in>:0      
                         note: artificial              chan: @4106   
                         lang: C        body: undefined 
                         link: extern  
@4105   identifier_node  strg: signbit  lngt: 7       
@4106   function_decl    name: @4107    mngl: @4105    type: @661    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4108    lang: C        body: undefined 
                         link: extern  
@4107   identifier_node  strg: __builtin_signbit       lngt: 17      
@4108   function_decl    name: @4109    type: @4110    srcp: math.h:450    
                         chan: @4111    lang: C        args: @4112   
                         body: undefined               link: extern  
@4109   identifier_node  strg: scalbnl  lngt: 7       
@4110   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4113   
@4111   function_decl    name: @4114    mngl: @4109    type: @4110   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4115    lang: C        body: undefined 
                         link: extern  
@4112   parm_decl        type: @629     srcp: math.h:450    
                         chan: @4116    argt: @629     size: @254    
                         algn: 128      used: 0       
@4113   tree_list        valu: @629     chan: @4117   
@4114   identifier_node  strg: __builtin_scalbnl       lngt: 17      
@4115   function_decl    name: @4118    type: @4119    srcp: math.h:333    
                         chan: @4120    lang: C        args: @4121   
                         body: undefined               link: extern  
@4116   parm_decl        type: @10      srcp: math.h:450    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@4117   tree_list        valu: @10      chan: @45     
@4118   identifier_node  strg: scalbnf  lngt: 7       
@4119   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4122   
@4120   function_decl    name: @4123    mngl: @4118    type: @4119   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4124    lang: C        body: undefined 
                         link: extern  
@4121   parm_decl        type: @100     srcp: math.h:333    
                         chan: @4125    argt: @100     size: @18     
                         algn: 32       used: 0       
@4122   tree_list        valu: @100     chan: @4126   
@4123   identifier_node  strg: __builtin_scalbnf       lngt: 17      
@4124   function_decl    name: @4127    type: @4128    srcp: math.h:332    
                         chan: @4129    lang: C        args: @4130   
                         body: undefined               link: extern  
@4125   parm_decl        type: @10      srcp: math.h:333    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@4126   tree_list        valu: @10      chan: @45     
@4127   identifier_node  strg: scalbn   lngt: 6       
@4128   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4131   
@4129   function_decl    name: @4132    mngl: @4127    type: @4128   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4133    lang: C        body: undefined 
                         link: extern  
@4130   parm_decl        type: @605     srcp: math.h:332    
                         chan: @4134    argt: @605     size: @41     
                         algn: 64       used: 0       
@4131   tree_list        valu: @605     chan: @4135   
@4132   identifier_node  strg: __builtin_scalbn        lngt: 16      
@4133   function_decl    name: @4136    type: @4137    srcp: math.h:451    
                         chan: @4138    lang: C        args: @4139   
                         body: undefined               link: extern  
@4134   parm_decl        type: @10      srcp: math.h:332    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@4135   tree_list        valu: @10      chan: @45     
@4136   identifier_node  strg: scalblnl lngt: 8       
@4137   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4140   
@4138   function_decl    name: @4141    mngl: @4136    type: @4137   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4142    lang: C        body: undefined 
                         link: extern  
@4139   parm_decl        type: @629     srcp: math.h:451    
                         chan: @4143    argt: @629     size: @254    
                         algn: 128      used: 0       
@4140   tree_list        valu: @629     chan: @4144   
@4141   identifier_node  strg: __builtin_scalblnl      lngt: 18      
@4142   function_decl    name: @4145    type: @4146    srcp: math.h:336    
                         chan: @4147    lang: C        args: @4148   
                         body: undefined               link: extern  
@4143   parm_decl        type: @91      srcp: math.h:451    
                         argt: @91      size: @18      algn: 32      
                         used: 0       
@4144   tree_list        valu: @91      chan: @45     
@4145   identifier_node  strg: scalblnf lngt: 8       
@4146   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4149   
@4147   function_decl    name: @4150    mngl: @4145    type: @4146   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4151    lang: C        body: undefined 
                         link: extern  
@4148   parm_decl        type: @100     srcp: math.h:336    
                         chan: @4152    argt: @100     size: @18     
                         algn: 32       used: 0       
@4149   tree_list        valu: @100     chan: @4153   
@4150   identifier_node  strg: __builtin_scalblnf      lngt: 18      
@4151   function_decl    name: @4154    type: @4155    srcp: math.h:335    
                         chan: @4156    lang: C        args: @4157   
                         body: undefined               link: extern  
@4152   parm_decl        type: @91      srcp: math.h:336    
                         argt: @91      size: @18      algn: 32      
                         used: 0       
@4153   tree_list        valu: @91      chan: @45     
@4154   identifier_node  strg: scalbln  lngt: 7       
@4155   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4158   
@4156   function_decl    name: @4159    mngl: @4154    type: @4155   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4160    lang: C        body: undefined 
                         link: extern  
@4157   parm_decl        type: @605     srcp: math.h:335    
                         chan: @4161    argt: @605     size: @41     
                         algn: 64       used: 0       
@4158   tree_list        valu: @605     chan: @4162   
@4159   identifier_node  strg: __builtin_scalbln       lngt: 17      
@4160   function_decl    name: @4163    type: @4164    srcp: <built-in>:0      
                         note: artificial              chan: @4165   
                         lang: C        body: undefined 
                         link: extern  
@4161   parm_decl        type: @91      srcp: math.h:335    
                         argt: @91      size: @18      algn: 32      
                         used: 0       
@4162   tree_list        valu: @91      chan: @45     
@4163   identifier_node  strg: scalbl   lngt: 6       
@4164   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4166   
@4165   function_decl    name: @4167    mngl: @4163    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4168    lang: C        body: undefined 
                         link: extern  
@4166   tree_list        valu: @629     chan: @4169   
@4167   identifier_node  strg: __builtin_scalbl        lngt: 16      
@4168   function_decl    name: @4170    type: @4171    srcp: <built-in>:0      
                         note: artificial              chan: @4172   
                         lang: C        body: undefined 
                         link: extern  
@4169   tree_list        valu: @629     chan: @45     
@4170   identifier_node  strg: scalbf   lngt: 6       
@4171   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4173   
@4172   function_decl    name: @4174    mngl: @4170    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4175    lang: C        body: undefined 
                         link: extern  
@4173   tree_list        valu: @100     chan: @4176   
@4174   identifier_node  strg: __builtin_scalbf        lngt: 16      
@4175   function_decl    name: @4177    type: @4178    srcp: math.h:510    
                         chan: @4179    lang: C        args: @4180   
                         body: undefined               link: extern  
@4176   tree_list        valu: @100     chan: @45     
@4177   identifier_node  strg: scalb    lngt: 5       
@4178   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4181   
@4179   function_decl    name: @4182    mngl: @4177    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4183    lang: C        body: undefined 
                         link: extern  
@4180   parm_decl        type: @605     srcp: math.h:510    
                         chan: @4184    argt: @605     size: @41     
                         algn: 64       used: 0       
@4181   tree_list        valu: @605     chan: @4185   
@4182   identifier_node  strg: __builtin_scalb         lngt: 15      
@4183   function_decl    name: @4186    type: @3923    srcp: math.h:467    
                         chan: @4187    lang: C        args: @4188   
                         body: undefined               link: extern  
@4184   parm_decl        type: @605     srcp: math.h:510    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4185   tree_list        valu: @605     chan: @45     
@4186   identifier_node  strg: roundl   lngt: 6       
@4187   function_decl    name: @4189    mngl: @4186    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4190    lang: C        body: undefined 
                         link: extern  
@4188   parm_decl        type: @629     srcp: math.h:467    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4189   identifier_node  strg: __builtin_roundl        lngt: 16      
@4190   function_decl    name: @4191    type: @3929    srcp: math.h:384    
                         chan: @4192    lang: C        args: @4193   
                         body: undefined               link: extern  
@4191   identifier_node  strg: roundf   lngt: 6       
@4192   function_decl    name: @4194    mngl: @4191    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4195    lang: C        body: undefined 
                         link: extern  
@4193   parm_decl        type: @100     srcp: math.h:384    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4194   identifier_node  strg: __builtin_roundf        lngt: 16      
@4195   function_decl    name: @4196    type: @3935    srcp: math.h:383    
                         chan: @4197    lang: C        args: @4198   
                         body: undefined               link: extern  
@4196   identifier_node  strg: round    lngt: 5       
@4197   function_decl    name: @4199    mngl: @4196    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4200    lang: C        body: undefined 
                         link: extern  
@4198   parm_decl        type: @605     srcp: math.h:383    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4199   identifier_node  strg: __builtin_round         lngt: 15      
@4200   function_decl    name: @4201    type: @3923    srcp: math.h:464    
                         chan: @4202    lang: C        args: @4203   
                         body: undefined               link: extern  
@4201   identifier_node  strg: rintl    lngt: 5       
@4202   function_decl    name: @4204    mngl: @4201    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4205    lang: C        body: undefined 
                         link: extern  
@4203   parm_decl        type: @629     srcp: math.h:464    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4204   identifier_node  strg: __builtin_rintl         lngt: 15      
@4205   function_decl    name: @4206    type: @3929    srcp: math.h:375    
                         chan: @4207    lang: C        args: @4208   
                         body: undefined               link: extern  
@4206   identifier_node  strg: rintf    lngt: 5       
@4207   function_decl    name: @4209    mngl: @4206    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4210    lang: C        body: undefined 
                         link: extern  
@4208   parm_decl        type: @100     srcp: math.h:375    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4209   identifier_node  strg: __builtin_rintf         lngt: 15      
@4210   function_decl    name: @4211    type: @3935    srcp: math.h:374    
                         chan: @4212    lang: C        args: @4213   
                         body: undefined               link: extern  
@4211   identifier_node  strg: rint     lngt: 4       
@4212   function_decl    name: @4214    mngl: @4211    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4215    lang: C        body: undefined 
                         link: extern  
@4213   parm_decl        type: @605     srcp: math.h:374    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4214   identifier_node  strg: __builtin_rint          lngt: 14      
@4215   function_decl    name: @4216    type: @4217    srcp: math.h:473    
                         chan: @4218    lang: C        args: @4219   
                         body: undefined               link: extern  
@4216   identifier_node  strg: remquol  lngt: 7       
@4217   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4220   
@4218   function_decl    name: @4221    mngl: @4216    type: @4217   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4222    lang: C        body: undefined 
                         link: extern  
@4219   parm_decl        type: @629     srcp: math.h:473    
                         chan: @4223    argt: @629     size: @254    
                         algn: 128      used: 0       
@4220   tree_list        valu: @629     chan: @4224   
@4221   identifier_node  strg: __builtin_remquol       lngt: 17      
@4222   function_decl    name: @4225    type: @4226    srcp: math.h:402    
                         chan: @4227    lang: C        args: @4228   
                         body: undefined               link: extern  
@4223   parm_decl        type: @629     srcp: math.h:473    
                         chan: @4229    argt: @629     size: @254    
                         algn: 128      used: 0       
@4224   tree_list        valu: @629     chan: @4230   
@4225   identifier_node  strg: remquof  lngt: 7       
@4226   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4231   
@4227   function_decl    name: @4232    mngl: @4225    type: @4226   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4233    lang: C        body: undefined 
                         link: extern  
@4228   parm_decl        type: @100     srcp: math.h:402    
                         chan: @4234    argt: @100     size: @18     
                         algn: 32       used: 0       
@4229   parm_decl        type: @1616    srcp: math.h:473    
                         argt: @1616    size: @18      algn: 32      
                         used: 0       
@4230   tree_list        valu: @1616    chan: @45     
@4231   tree_list        valu: @100     chan: @4235   
@4232   identifier_node  strg: __builtin_remquof       lngt: 17      
@4233   function_decl    name: @4236    type: @4237    srcp: math.h:401    
                         chan: @4238    lang: C        args: @4239   
                         body: undefined               link: extern  
@4234   parm_decl        type: @100     srcp: math.h:402    
                         chan: @4240    argt: @100     size: @18     
                         algn: 32       used: 0       
@4235   tree_list        valu: @100     chan: @4241   
@4236   identifier_node  strg: remquo   lngt: 6       
@4237   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4242   
@4238   function_decl    name: @4243    mngl: @4236    type: @4237   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4244    lang: C        body: undefined 
                         link: extern  
@4239   parm_decl        type: @605     srcp: math.h:401    
                         chan: @4245    argt: @605     size: @41     
                         algn: 64       used: 0       
@4240   parm_decl        type: @1616    srcp: math.h:402    
                         argt: @1616    size: @18      algn: 32      
                         used: 0       
@4241   tree_list        valu: @1616    chan: @45     
@4242   tree_list        valu: @605     chan: @4246   
@4243   identifier_node  strg: __builtin_remquo        lngt: 16      
@4244   function_decl    name: @4247    type: @4164    srcp: math.h:472    
                         chan: @4248    lang: C        args: @4249   
                         body: undefined               link: extern  
@4245   parm_decl        type: @605     srcp: math.h:401    
                         chan: @4250    argt: @605     size: @41     
                         algn: 64       used: 0       
@4246   tree_list        valu: @605     chan: @4251   
@4247   identifier_node  strg: remainderl              lngt: 10      
@4248   function_decl    name: @4252    mngl: @4247    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4253    lang: C        body: undefined 
                         link: extern  
@4249   parm_decl        type: @629     srcp: math.h:472    
                         chan: @4254    argt: @629     size: @254    
                         algn: 128      used: 0       
@4250   parm_decl        type: @1616    srcp: math.h:401    
                         argt: @1616    size: @18      algn: 32      
                         used: 0       
@4251   tree_list        valu: @1616    chan: @45     
@4252   identifier_node  strg: __builtin_remainderl    lngt: 20      
@4253   function_decl    name: @4255    type: @4171    srcp: math.h:399    
                         chan: @4256    lang: C        args: @4257   
                         body: undefined               link: extern  
@4254   parm_decl        type: @629     srcp: math.h:472    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4255   identifier_node  strg: remainderf              lngt: 10      
@4256   function_decl    name: @4258    mngl: @4255    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4259    lang: C        body: undefined 
                         link: extern  
@4257   parm_decl        type: @100     srcp: math.h:399    
                         chan: @4260    argt: @100     size: @18     
                         algn: 32       used: 0       
@4258   identifier_node  strg: __builtin_remainderf    lngt: 20      
@4259   function_decl    name: @4261    type: @4178    srcp: math.h:398    
                         chan: @4262    lang: C        args: @4263   
                         body: undefined               link: extern  
@4260   parm_decl        type: @100     srcp: math.h:399    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4261   identifier_node  strg: remainder               lngt: 9       
@4262   function_decl    name: @4264    mngl: @4261    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4265    lang: C        body: undefined 
                         link: extern  
@4263   parm_decl        type: @605     srcp: math.h:398    
                         chan: @4266    argt: @605     size: @41     
                         algn: 64       used: 0       
@4264   identifier_node  strg: __builtin_remainder     lngt: 19      
@4265   function_decl    name: @4267    type: @4164    srcp: math.h:455    
                         chan: @4268    lang: C        args: @4269   
                         body: undefined               link: extern  
@4266   parm_decl        type: @605     srcp: math.h:398    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4267   identifier_node  strg: powl     lngt: 4       
@4268   function_decl    name: @4270    mngl: @4267    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4271    lang: C        body: undefined 
                         link: extern  
@4269   parm_decl        type: @629     srcp: math.h:455    
                         chan: @4272    argt: @629     size: @254    
                         algn: 128      used: 0       
@4270   identifier_node  strg: __builtin_powl          lngt: 14      
@4271   function_decl    name: @4273    type: @4110    srcp: <built-in>:0      
                         note: artificial              chan: @4274   
                         lang: C        body: undefined 
                         link: extern  
@4272   parm_decl        type: @629     srcp: math.h:455    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4273   identifier_node  strg: __builtin_powil         lngt: 15      
@4274   function_decl    name: @4275    type: @4119    srcp: <built-in>:0      
                         note: artificial              chan: @4276   
                         lang: C        body: undefined 
                         link: extern  
@4275   identifier_node  strg: __builtin_powif         lngt: 15      
@4276   function_decl    name: @4277    type: @4128    srcp: <built-in>:0      
                         note: artificial              chan: @4278   
                         lang: C        body: undefined 
                         link: extern  
@4277   identifier_node  strg: __builtin_powi          lngt: 14      
@4278   function_decl    name: @4279    type: @4171    srcp: math.h:348    
                         chan: @4280    lang: C        args: @4281   
                         body: undefined               link: extern  
@4279   identifier_node  strg: powf     lngt: 4       
@4280   function_decl    name: @4282    mngl: @4279    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4283    lang: C        body: undefined 
                         link: extern  
@4281   parm_decl        type: @100     srcp: math.h:348    
                         chan: @4284    argt: @100     size: @18     
                         algn: 32       used: 0       
@4282   identifier_node  strg: __builtin_powf          lngt: 14      
@4283   function_decl    name: @4285    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @4286   
                         lang: C        body: undefined 
                         link: extern  
@4284   parm_decl        type: @100     srcp: math.h:348    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4285   identifier_node  strg: pow10l   lngt: 6       
@4286   function_decl    name: @4287    mngl: @4285    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4288    lang: C        body: undefined 
                         link: extern  
@4287   identifier_node  strg: __builtin_pow10l        lngt: 16      
@4288   function_decl    name: @4289    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @4290   
                         lang: C        body: undefined 
                         link: extern  
@4289   identifier_node  strg: pow10f   lngt: 6       
@4290   function_decl    name: @4291    mngl: @4289    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4292    lang: C        body: undefined 
                         link: extern  
@4291   identifier_node  strg: __builtin_pow10f        lngt: 16      
@4292   function_decl    name: @4293    type: @3935    srcp: <built-in>:0      
                         note: artificial              chan: @4294   
                         lang: C        body: undefined 
                         link: extern  
@4293   identifier_node  strg: pow10    lngt: 5       
@4294   function_decl    name: @4295    mngl: @4293    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4296    lang: C        body: undefined 
                         link: extern  
@4295   identifier_node  strg: __builtin_pow10         lngt: 15      
@4296   function_decl    name: @4297    type: @4178    srcp: math.h:347    
                         chan: @4298    lang: C        args: @4299   
                         body: undefined               link: extern  
@4297   identifier_node  strg: pow      lngt: 3       
@4298   function_decl    name: @4300    mngl: @4297    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4301    lang: C        body: undefined 
                         link: extern  
@4299   parm_decl        type: @605     srcp: math.h:347    
                         chan: @4302    argt: @605     size: @41     
                         algn: 64       used: 0       
@4300   identifier_node  strg: __builtin_pow           lngt: 13      
@4301   function_decl    name: @4303    type: @4164    srcp: math.h:479    
                         chan: @4304    lang: C        args: @4305   
                         body: undefined               link: extern  
@4302   parm_decl        type: @605     srcp: math.h:347    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4303   identifier_node  strg: nexttowardl             lngt: 11      
@4304   function_decl    name: @4306    mngl: @4303    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4307    lang: C        body: undefined 
                         link: extern  
@4305   parm_decl        type: @629     srcp: math.h:479    
                         chan: @4308    argt: @629     size: @254    
                         algn: 128      used: 0       
@4306   identifier_node  strg: __builtin_nexttowardl   lngt: 21      
@4307   function_decl    name: @4309    type: @4310    srcp: math.h:478    
                         chan: @4311    lang: C        args: @4312   
                         body: undefined               link: extern  
@4308   parm_decl        type: @629     srcp: math.h:479    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4309   identifier_node  strg: nexttowardf             lngt: 11      
@4310   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4313   
@4311   function_decl    name: @4314    mngl: @4309    type: @4310   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4315    lang: C        body: undefined 
                         link: extern  
@4312   parm_decl        type: @100     srcp: math.h:478    
                         chan: @4316    argt: @100     size: @18     
                         algn: 32       used: 0       
@4313   tree_list        valu: @100     chan: @4317   
@4314   identifier_node  strg: __builtin_nexttowardf   lngt: 21      
@4315   function_decl    name: @4318    type: @4319    srcp: math.h:477    
                         chan: @4320    lang: C        args: @4321   
                         body: undefined               link: extern  
@4316   parm_decl        type: @629     srcp: math.h:478    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4317   tree_list        valu: @629     chan: @45     
@4318   identifier_node  strg: nexttoward              lngt: 10      
@4319   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4322   
@4320   function_decl    name: @4323    mngl: @4318    type: @4319   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4324    lang: C        body: undefined 
                         link: extern  
@4321   parm_decl        type: @605     srcp: math.h:477    
                         chan: @4325    argt: @605     size: @41     
                         algn: 64       used: 0       
@4322   tree_list        valu: @605     chan: @4326   
@4323   identifier_node  strg: __builtin_nexttoward    lngt: 20      
@4324   function_decl    name: @4327    type: @4164    srcp: math.h:476    
                         chan: @4328    lang: C        args: @4329   
                         body: undefined               link: extern  
@4325   parm_decl        type: @629     srcp: math.h:477    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4326   tree_list        valu: @629     chan: @45     
@4327   identifier_node  strg: nextafterl              lngt: 10      
@4328   function_decl    name: @4330    mngl: @4327    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4331    lang: C        body: undefined 
                         link: extern  
@4329   parm_decl        type: @629     srcp: math.h:476    
                         chan: @4332    argt: @629     size: @254    
                         algn: 128      used: 0       
@4330   identifier_node  strg: __builtin_nextafterl    lngt: 20      
@4331   function_decl    name: @4333    type: @4171    srcp: math.h:411    
                         chan: @4334    lang: C        args: @4335   
                         body: undefined               link: extern  
@4332   parm_decl        type: @629     srcp: math.h:476    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4333   identifier_node  strg: nextafterf              lngt: 10      
@4334   function_decl    name: @4336    mngl: @4333    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4337    lang: C        body: undefined 
                         link: extern  
@4335   parm_decl        type: @100     srcp: math.h:411    
                         chan: @4338    argt: @100     size: @18     
                         algn: 32       used: 0       
@4336   identifier_node  strg: __builtin_nextafterf    lngt: 20      
@4337   function_decl    name: @4339    type: @4178    srcp: math.h:410    
                         chan: @4340    lang: C        args: @4341   
                         body: undefined               link: extern  
@4338   parm_decl        type: @100     srcp: math.h:411    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4339   identifier_node  strg: nextafter               lngt: 9       
@4340   function_decl    name: @4342    mngl: @4339    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4343    lang: C        body: undefined 
                         link: extern  
@4341   parm_decl        type: @605     srcp: math.h:410    
                         chan: @4344    argt: @605     size: @41     
                         algn: 64       used: 0       
@4342   identifier_node  strg: __builtin_nextafter     lngt: 19      
@4343   function_decl    name: @4345    type: @3923    srcp: math.h:463    
                         chan: @4346    lang: C        args: @4347   
                         body: undefined               link: extern  
@4344   parm_decl        type: @605     srcp: math.h:410    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4345   identifier_node  strg: nearbyintl              lngt: 10      
@4346   function_decl    name: @4348    mngl: @4345    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4349    lang: C        body: undefined 
                         link: extern  
@4347   parm_decl        type: @629     srcp: math.h:463    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4348   identifier_node  strg: __builtin_nearbyintl    lngt: 20      
@4349   function_decl    name: @4350    type: @3929    srcp: math.h:372    
                         chan: @4351    lang: C        args: @4352   
                         body: undefined               link: extern  
@4350   identifier_node  strg: nearbyintf              lngt: 10      
@4351   function_decl    name: @4353    mngl: @4350    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4354    lang: C        body: undefined 
                         link: extern  
@4352   parm_decl        type: @100     srcp: math.h:372    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4353   identifier_node  strg: __builtin_nearbyintf    lngt: 20      
@4354   function_decl    name: @4355    type: @3935    srcp: math.h:371    
                         chan: @4356    lang: C        args: @4357   
                         body: undefined               link: extern  
@4355   identifier_node  strg: nearbyint               lngt: 9       
@4356   function_decl    name: @4358    mngl: @4355    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4359    lang: C        body: undefined 
                         link: extern  
@4357   parm_decl        type: @605     srcp: math.h:371    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4358   identifier_node  strg: __builtin_nearbyint     lngt: 19      
@4359   function_decl    name: @4360    type: @4361    srcp: <built-in>:0      
                         note: artificial              chan: @4362   
                         lang: C        body: undefined 
                         link: extern  
@4360   identifier_node  strg: __builtin_nansl         lngt: 15      
@4361   function_type    size: @9       algn: 8        retn: @629    
                         prms: @643    
@4362   function_decl    name: @4363    type: @4364    srcp: <built-in>:0      
                         note: artificial              chan: @4365   
                         lang: C        body: undefined 
                         link: extern  
@4363   identifier_node  strg: __builtin_nansf         lngt: 15      
@4364   function_type    size: @9       algn: 8        retn: @100    
                         prms: @648    
@4365   function_decl    name: @4366    type: @4367    srcp: <built-in>:0      
                         note: artificial              chan: @4368   
                         lang: C        body: undefined 
                         link: extern  
@4366   identifier_node  strg: __builtin_nans          lngt: 14      
@4367   function_type    size: @9       algn: 8        retn: @605    
                         prms: @653    
@4368   function_decl    name: @4369    type: @4370    srcp: <built-in>:0      
                         note: artificial              chan: @4371   
                         lang: C        body: undefined 
                         link: extern  
@4369   identifier_node  strg: __builtin_nand128       lngt: 17      
@4370   function_type    size: @9       algn: 8        retn: @2828   
                         prms: @4372   
@4371   function_decl    name: @4373    type: @4374    srcp: <built-in>:0      
                         note: artificial              chan: @4375   
                         lang: C        body: undefined 
                         link: extern  
@4372   tree_list        valu: @89      chan: @45     
@4373   identifier_node  strg: __builtin_nand64        lngt: 16      
@4374   function_type    size: @9       algn: 8        retn: @2835   
                         prms: @4376   
@4375   function_decl    name: @4377    type: @4378    srcp: <built-in>:0      
                         note: artificial              chan: @4379   
                         lang: C        body: undefined 
                         link: extern  
@4376   tree_list        valu: @89      chan: @45     
@4377   identifier_node  strg: __builtin_nand32        lngt: 16      
@4378   function_type    size: @9       algn: 8        retn: @2842   
                         prms: @4380   
@4379   function_decl    name: @4381    type: @4361    srcp: <built-in>:0      
                         note: artificial              chan: @4382   
                         lang: C        body: undefined 
                         link: extern  
@4380   tree_list        valu: @89      chan: @45     
@4381   identifier_node  strg: __builtin_nanl          lngt: 14      
@4382   function_decl    name: @4383    type: @4364    srcp: <built-in>:0      
                         note: artificial              chan: @4384   
                         lang: C        body: undefined 
                         link: extern  
@4383   identifier_node  strg: __builtin_nanf          lngt: 14      
@4384   function_decl    name: @4385    type: @4367    srcp: <built-in>:0      
                         note: artificial              chan: @4386   
                         lang: C        body: undefined 
                         link: extern  
@4385   identifier_node  strg: __builtin_nan           lngt: 13      
@4386   function_decl    name: @4387    type: @4388    srcp: math.h:446    
                         chan: @4389    lang: C        args: @4390   
                         body: undefined               link: extern  
@4387   identifier_node  strg: modfl    lngt: 5       
@4388   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4391   
@4389   function_decl    name: @4392    mngl: @4387    type: @4388   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4393    lang: C        body: undefined 
                         link: extern  
@4390   parm_decl        type: @629     srcp: math.h:446    
                         chan: @4394    argt: @629     size: @254    
                         algn: 128      used: 0       
@4391   tree_list        valu: @629     chan: @4395   
@4392   identifier_node  strg: __builtin_modfl         lngt: 15      
@4393   function_decl    name: @4396    type: @4397    srcp: math.h:321    
                         chan: @4398    lang: C        args: @4399   
                         body: undefined               link: extern  
@4394   parm_decl        type: @4064    srcp: math.h:446    
                         argt: @4064    size: @18      algn: 32      
                         used: 0       
@4395   tree_list        valu: @4064    chan: @45     
@4396   identifier_node  strg: modff    lngt: 5       
@4397   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4400   
@4398   function_decl    name: @4401    mngl: @4396    type: @4397   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4402    lang: C        body: undefined 
                         link: extern  
@4399   parm_decl        type: @100     srcp: math.h:321    
                         chan: @4403    argt: @100     size: @18     
                         algn: 32       used: 0       
@4400   tree_list        valu: @100     chan: @4404   
@4401   identifier_node  strg: __builtin_modff         lngt: 15      
@4402   function_decl    name: @4405    type: @4406    srcp: math.h:320    
                         chan: @4407    lang: C        args: @4408   
                         body: undefined               link: extern  
@4403   parm_decl        type: @1680    srcp: math.h:321    
                         argt: @1680    size: @18      algn: 32      
                         used: 0       
@4404   tree_list        valu: @1680    chan: @45     
@4405   identifier_node  strg: modf     lngt: 4       
@4406   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4409   
@4407   function_decl    name: @4410    mngl: @4405    type: @4406   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4411    lang: C        body: undefined 
                         link: extern  
@4408   parm_decl        type: @605     srcp: math.h:320    
                         chan: @4412    argt: @605     size: @41     
                         algn: 64       used: 0       
@4409   tree_list        valu: @605     chan: @4413   
@4410   identifier_node  strg: __builtin_modf          lngt: 14      
@4411   function_decl    name: @4414    type: @4415    srcp: math.h:468    
                         chan: @4416    lang: C        args: @4417   
                         body: undefined               link: extern  
@4412   parm_decl        type: @1610    srcp: math.h:320    
                         argt: @1610    size: @18      algn: 32      
                         used: 0       
@4413   tree_list        valu: @1610    chan: @45     
@4414   identifier_node  strg: lroundl  lngt: 7       
@4415   function_type    size: @9       algn: 8        retn: @91     
                         prms: @4418   
@4416   function_decl    name: @4419    mngl: @4414    type: @4415   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4420    lang: C        body: undefined 
                         link: extern  
@4417   parm_decl        type: @629     srcp: math.h:468    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4418   tree_list        valu: @629     chan: @45     
@4419   identifier_node  strg: __builtin_lroundl       lngt: 17      
@4420   function_decl    name: @4421    type: @4422    srcp: math.h:387    
                         chan: @4423    lang: C        args: @4424   
                         body: undefined               link: extern  
@4421   identifier_node  strg: lroundf  lngt: 7       
@4422   function_type    size: @9       algn: 8        retn: @91     
                         prms: @4425   
@4423   function_decl    name: @4426    mngl: @4421    type: @4422   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4427    lang: C        body: undefined 
                         link: extern  
@4424   parm_decl        type: @100     srcp: math.h:387    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4425   tree_list        valu: @100     chan: @45     
@4426   identifier_node  strg: __builtin_lroundf       lngt: 17      
@4427   function_decl    name: @4428    type: @594     srcp: math.h:386    
                         chan: @4429    lang: C        args: @4430   
                         body: undefined               link: extern  
@4428   identifier_node  strg: lround   lngt: 6       
@4429   function_decl    name: @4431    mngl: @4428    type: @594    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4432    lang: C        body: undefined 
                         link: extern  
@4430   parm_decl        type: @605     srcp: math.h:386    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4431   identifier_node  strg: __builtin_lround        lngt: 16      
@4432   function_decl    name: @4433    type: @4415    srcp: math.h:465    
                         chan: @4434    lang: C        args: @4435   
                         body: undefined               link: extern  
@4433   identifier_node  strg: lrintl   lngt: 6       
@4434   function_decl    name: @4436    mngl: @4433    type: @4415   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4437    lang: C        body: undefined 
                         link: extern  
@4435   parm_decl        type: @629     srcp: math.h:465    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4436   identifier_node  strg: __builtin_lrintl        lngt: 16      
@4437   function_decl    name: @4438    type: @4422    srcp: math.h:378    
                         chan: @4439    lang: C        args: @4440   
                         body: undefined               link: extern  
@4438   identifier_node  strg: lrintf   lngt: 6       
@4439   function_decl    name: @4441    mngl: @4438    type: @4422   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4442    lang: C        body: undefined 
                         link: extern  
@4440   parm_decl        type: @100     srcp: math.h:378    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4441   identifier_node  strg: __builtin_lrintf        lngt: 16      
@4442   function_decl    name: @4443    type: @594     srcp: math.h:377    
                         chan: @4444    lang: C        args: @4445   
                         body: undefined               link: extern  
@4443   identifier_node  strg: lrint    lngt: 5       
@4444   function_decl    name: @4446    mngl: @4443    type: @594    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4447    lang: C        body: undefined 
                         link: extern  
@4445   parm_decl        type: @605     srcp: math.h:377    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4446   identifier_node  strg: __builtin_lrint         lngt: 15      
@4447   function_decl    name: @4448    type: @3923    srcp: math.h:441    
                         chan: @4449    lang: C        args: @4450   
                         body: undefined               link: extern  
@4448   identifier_node  strg: logl     lngt: 4       
@4449   function_decl    name: @4451    mngl: @4448    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4452    lang: C        body: undefined 
                         link: extern  
@4450   parm_decl        type: @629     srcp: math.h:441    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4451   identifier_node  strg: __builtin_logl          lngt: 14      
@4452   function_decl    name: @4453    type: @3929    srcp: math.h:306    
                         chan: @4454    lang: C        args: @4455   
                         body: undefined               link: extern  
@4453   identifier_node  strg: logf     lngt: 4       
@4454   function_decl    name: @4456    mngl: @4453    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4457    lang: C        body: undefined 
                         link: extern  
@4455   parm_decl        type: @100     srcp: math.h:306    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4456   identifier_node  strg: __builtin_logf          lngt: 14      
@4457   function_decl    name: @4458    type: @3923    srcp: math.h:445    
                         chan: @4459    lang: C        args: @4460   
                         body: undefined               link: extern  
@4458   identifier_node  strg: logbl    lngt: 5       
@4459   function_decl    name: @4461    mngl: @4458    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4462    lang: C        body: undefined 
                         link: extern  
@4460   parm_decl        type: @629     srcp: math.h:445    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4461   identifier_node  strg: __builtin_logbl         lngt: 15      
@4462   function_decl    name: @4463    type: @3929    srcp: math.h:318    
                         chan: @4464    lang: C        args: @4465   
                         body: undefined               link: extern  
@4463   identifier_node  strg: logbf    lngt: 5       
@4464   function_decl    name: @4466    mngl: @4463    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4467    lang: C        body: undefined 
                         link: extern  
@4465   parm_decl        type: @100     srcp: math.h:318    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4466   identifier_node  strg: __builtin_logbf         lngt: 15      
@4467   function_decl    name: @4468    type: @3935    srcp: math.h:317    
                         chan: @4469    lang: C        args: @4470   
                         body: undefined               link: extern  
@4468   identifier_node  strg: logb     lngt: 4       
@4469   function_decl    name: @4471    mngl: @4468    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4472    lang: C        body: undefined 
                         link: extern  
@4470   parm_decl        type: @605     srcp: math.h:317    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4471   identifier_node  strg: __builtin_logb          lngt: 14      
@4472   function_decl    name: @4473    type: @3923    srcp: math.h:443    
                         chan: @4474    lang: C        args: @4475   
                         body: undefined               link: extern  
@4473   identifier_node  strg: log2l    lngt: 5       
@4474   function_decl    name: @4476    mngl: @4473    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4477    lang: C        body: undefined 
                         link: extern  
@4475   parm_decl        type: @629     srcp: math.h:443    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4476   identifier_node  strg: __builtin_log2l         lngt: 15      
@4477   function_decl    name: @4478    type: @3929    srcp: math.h:312    
                         chan: @4479    lang: C        args: @4480   
                         body: undefined               link: extern  
@4478   identifier_node  strg: log2f    lngt: 5       
@4479   function_decl    name: @4481    mngl: @4478    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4482    lang: C        body: undefined 
                         link: extern  
@4480   parm_decl        type: @100     srcp: math.h:312    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4481   identifier_node  strg: __builtin_log2f         lngt: 15      
@4482   function_decl    name: @4483    type: @3935    srcp: math.h:311    
                         chan: @4484    lang: C        args: @4485   
                         body: undefined               link: extern  
@4483   identifier_node  strg: log2     lngt: 4       
@4484   function_decl    name: @4486    mngl: @4483    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4487    lang: C        body: undefined 
                         link: extern  
@4485   parm_decl        type: @605     srcp: math.h:311    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4486   identifier_node  strg: __builtin_log2          lngt: 14      
@4487   function_decl    name: @4488    type: @3923    srcp: math.h:444    
                         chan: @4489    lang: C        args: @4490   
                         body: undefined               link: extern  
@4488   identifier_node  strg: log1pl   lngt: 6       
@4489   function_decl    name: @4491    mngl: @4488    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4492    lang: C        body: undefined 
                         link: extern  
@4490   parm_decl        type: @629     srcp: math.h:444    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4491   identifier_node  strg: __builtin_log1pl        lngt: 16      
@4492   function_decl    name: @4493    type: @3929    srcp: math.h:315    
                         chan: @4494    lang: C        args: @4495   
                         body: undefined               link: extern  
@4493   identifier_node  strg: log1pf   lngt: 6       
@4494   function_decl    name: @4496    mngl: @4493    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4497    lang: C        body: undefined 
                         link: extern  
@4495   parm_decl        type: @100     srcp: math.h:315    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4496   identifier_node  strg: __builtin_log1pf        lngt: 16      
@4497   function_decl    name: @4498    type: @3935    srcp: math.h:314    
                         chan: @4499    lang: C        args: @4500   
                         body: undefined               link: extern  
@4498   identifier_node  strg: log1p    lngt: 5       
@4499   function_decl    name: @4501    mngl: @4498    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4502    lang: C        body: undefined 
                         link: extern  
@4500   parm_decl        type: @605     srcp: math.h:314    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4501   identifier_node  strg: __builtin_log1p         lngt: 15      
@4502   function_decl    name: @4503    type: @3923    srcp: math.h:442    
                         chan: @4504    lang: C        args: @4505   
                         body: undefined               link: extern  
@4503   identifier_node  strg: log10l   lngt: 6       
@4504   function_decl    name: @4506    mngl: @4503    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4507    lang: C        body: undefined 
                         link: extern  
@4505   parm_decl        type: @629     srcp: math.h:442    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4506   identifier_node  strg: __builtin_log10l        lngt: 16      
@4507   function_decl    name: @4508    type: @3929    srcp: math.h:309    
                         chan: @4509    lang: C        args: @4510   
                         body: undefined               link: extern  
@4508   identifier_node  strg: log10f   lngt: 6       
@4509   function_decl    name: @4511    mngl: @4508    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4512    lang: C        body: undefined 
                         link: extern  
@4510   parm_decl        type: @100     srcp: math.h:309    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4511   identifier_node  strg: __builtin_log10f        lngt: 16      
@4512   function_decl    name: @4513    type: @3935    srcp: math.h:308    
                         chan: @4514    lang: C        args: @4515   
                         body: undefined               link: extern  
@4513   identifier_node  strg: log10    lngt: 5       
@4514   function_decl    name: @4516    mngl: @4513    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4517    lang: C        body: undefined 
                         link: extern  
@4515   parm_decl        type: @605     srcp: math.h:308    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4516   identifier_node  strg: __builtin_log10         lngt: 15      
@4517   function_decl    name: @4518    type: @3935    srcp: math.h:305    
                         chan: @4519    lang: C        args: @4520   
                         body: undefined               link: extern  
@4518   identifier_node  strg: log      lngt: 3       
@4519   function_decl    name: @4521    mngl: @4518    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4522    lang: C        body: undefined 
                         link: extern  
@4520   parm_decl        type: @605     srcp: math.h:305    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4521   identifier_node  strg: __builtin_log           lngt: 13      
@4522   function_decl    name: @4523    type: @4524    srcp: math.h:469    
                         chan: @4525    lang: C        args: @4526   
                         body: undefined               link: extern  
@4523   identifier_node  strg: llroundl lngt: 8       
@4524   function_type    size: @9       algn: 8        retn: @434    
                         prms: @4527   
@4525   function_decl    name: @4528    mngl: @4523    type: @4524   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4529    lang: C        body: undefined 
                         link: extern  
@4526   parm_decl        type: @629     srcp: math.h:469    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4527   tree_list        valu: @629     chan: @45     
@4528   identifier_node  strg: __builtin_llroundl      lngt: 18      
@4529   function_decl    name: @4530    type: @4531    srcp: math.h:390    
                         chan: @4532    lang: C        args: @4533   
                         body: undefined               link: extern  
@4530   identifier_node  strg: llroundf lngt: 8       
@4531   function_type    size: @9       algn: 8        retn: @434    
                         prms: @4534   
@4532   function_decl    name: @4535    mngl: @4530    type: @4531   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4536    lang: C        body: undefined 
                         link: extern  
@4533   parm_decl        type: @100     srcp: math.h:390    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4534   tree_list        valu: @100     chan: @45     
@4535   identifier_node  strg: __builtin_llroundf      lngt: 18      
@4536   function_decl    name: @4537    type: @4538    srcp: math.h:389    
                         chan: @4539    lang: C        args: @4540   
                         body: undefined               link: extern  
@4537   identifier_node  strg: llround  lngt: 7       
@4538   function_type    size: @9       algn: 8        retn: @434    
                         prms: @4541   
@4539   function_decl    name: @4542    mngl: @4537    type: @4538   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4543    lang: C        body: undefined 
                         link: extern  
@4540   parm_decl        type: @605     srcp: math.h:389    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4541   tree_list        valu: @605     chan: @45     
@4542   identifier_node  strg: __builtin_llround       lngt: 17      
@4543   function_decl    name: @4544    type: @4524    srcp: math.h:466    
                         chan: @4545    lang: C        args: @4546   
                         body: undefined               link: extern  
@4544   identifier_node  strg: llrintl  lngt: 7       
@4545   function_decl    name: @4547    mngl: @4544    type: @4524   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4548    lang: C        body: undefined 
                         link: extern  
@4546   parm_decl        type: @629     srcp: math.h:466    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4547   identifier_node  strg: __builtin_llrintl       lngt: 17      
@4548   function_decl    name: @4549    type: @4531    srcp: math.h:381    
                         chan: @4550    lang: C        args: @4551   
                         body: undefined               link: extern  
@4549   identifier_node  strg: llrintf  lngt: 7       
@4550   function_decl    name: @4552    mngl: @4549    type: @4531   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4553    lang: C        body: undefined 
                         link: extern  
@4551   parm_decl        type: @100     srcp: math.h:381    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4552   identifier_node  strg: __builtin_llrintf       lngt: 17      
@4553   function_decl    name: @4554    type: @4538    srcp: math.h:380    
                         chan: @4555    lang: C        args: @4556   
                         body: undefined               link: extern  
@4554   identifier_node  strg: llrint   lngt: 6       
@4555   function_decl    name: @4557    mngl: @4554    type: @4538   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4558    lang: C        body: undefined 
                         link: extern  
@4556   parm_decl        type: @605     srcp: math.h:380    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4557   identifier_node  strg: __builtin_llrint        lngt: 16      
@4558   function_decl    name: @4559    type: @4524    srcp: <built-in>:0      
                         note: artificial              chan: @4560   
                         lang: C        body: undefined 
                         link: extern  
@4559   identifier_node  strg: __builtin_llfloorl      lngt: 18      
@4560   function_decl    name: @4561    type: @4531    srcp: <built-in>:0      
                         note: artificial              chan: @4562   
                         lang: C        body: undefined 
                         link: extern  
@4561   identifier_node  strg: __builtin_llfloorf      lngt: 18      
@4562   function_decl    name: @4563    type: @4538    srcp: <built-in>:0      
                         note: artificial              chan: @4564   
                         lang: C        body: undefined 
                         link: extern  
@4563   identifier_node  strg: __builtin_llfloor       lngt: 17      
@4564   function_decl    name: @4565    type: @4524    srcp: <built-in>:0      
                         note: artificial              chan: @4566   
                         lang: C        body: undefined 
                         link: extern  
@4565   identifier_node  strg: __builtin_llceill       lngt: 17      
@4566   function_decl    name: @4567    type: @4531    srcp: <built-in>:0      
                         note: artificial              chan: @4568   
                         lang: C        body: undefined 
                         link: extern  
@4567   identifier_node  strg: __builtin_llceilf       lngt: 17      
@4568   function_decl    name: @4569    type: @4538    srcp: <built-in>:0      
                         note: artificial              chan: @4570   
                         lang: C        body: undefined 
                         link: extern  
@4569   identifier_node  strg: __builtin_llceil        lngt: 16      
@4570   function_decl    name: @4571    type: @3923    srcp: math.h:459    
                         chan: @4572    lang: C        args: @4573   
                         body: undefined               link: extern  
@4571   identifier_node  strg: lgammal  lngt: 7       
@4572   function_decl    name: @4574    mngl: @4571    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4575    lang: C        body: undefined 
                         link: extern  
@4573   parm_decl        type: @629     srcp: math.h:459    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4574   identifier_node  strg: __builtin_lgammal       lngt: 17      
@4575   function_decl    name: @4576    type: @3929    srcp: math.h:360    
                         chan: @4577    lang: C        args: @4578   
                         body: undefined               link: extern  
@4576   identifier_node  strg: lgammaf  lngt: 7       
@4577   function_decl    name: @4579    mngl: @4576    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4580    lang: C        body: undefined 
                         link: extern  
@4578   parm_decl        type: @100     srcp: math.h:360    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4579   identifier_node  strg: __builtin_lgammaf       lngt: 17      
@4580   function_decl    name: @4581    type: @3935    srcp: math.h:359    
                         chan: @4582    lang: C        args: @4583   
                         body: undefined               link: extern  
@4581   identifier_node  strg: lgamma   lngt: 6       
@4582   function_decl    name: @4584    mngl: @4581    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4585    lang: C        body: undefined 
                         link: extern  
@4583   parm_decl        type: @605     srcp: math.h:359    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4584   identifier_node  strg: __builtin_lgamma        lngt: 16      
@4585   function_decl    name: @4586    type: @4415    srcp: <built-in>:0      
                         note: artificial              chan: @4587   
                         lang: C        body: undefined 
                         link: extern  
@4586   identifier_node  strg: __builtin_lfloorl       lngt: 17      
@4587   function_decl    name: @4588    type: @4422    srcp: <built-in>:0      
                         note: artificial              chan: @4589   
                         lang: C        body: undefined 
                         link: extern  
@4588   identifier_node  strg: __builtin_lfloorf       lngt: 17      
@4589   function_decl    name: @4590    type: @594     srcp: <built-in>:0      
                         note: artificial              chan: @4591   
                         lang: C        body: undefined 
                         link: extern  
@4590   identifier_node  strg: __builtin_lfloor        lngt: 16      
@4591   function_decl    name: @4592    type: @4110    srcp: math.h:447    
                         chan: @4593    lang: C        args: @4594   
                         body: undefined               link: extern  
@4592   identifier_node  strg: ldexpl   lngt: 6       
@4593   function_decl    name: @4595    mngl: @4592    type: @4110   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4596    lang: C        body: undefined 
                         link: extern  
@4594   parm_decl        type: @629     srcp: math.h:447    
                         chan: @4597    argt: @629     size: @254    
                         algn: 128      used: 0       
@4595   identifier_node  strg: __builtin_ldexpl        lngt: 16      
@4596   function_decl    name: @4598    type: @4119    srcp: math.h:324    
                         chan: @4599    lang: C        args: @4600   
                         body: undefined               link: extern  
@4597   parm_decl        type: @10      srcp: math.h:447    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@4598   identifier_node  strg: ldexpf   lngt: 6       
@4599   function_decl    name: @4601    mngl: @4598    type: @4119   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4602    lang: C        body: undefined 
                         link: extern  
@4600   parm_decl        type: @100     srcp: math.h:324    
                         chan: @4603    argt: @100     size: @18     
                         algn: 32       used: 0       
@4601   identifier_node  strg: __builtin_ldexpf        lngt: 16      
@4602   function_decl    name: @4604    type: @4128    srcp: math.h:323    
                         chan: @4605    lang: C        args: @4606   
                         body: undefined               link: extern  
@4603   parm_decl        type: @10      srcp: math.h:324    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@4604   identifier_node  strg: ldexp    lngt: 5       
@4605   function_decl    name: @4607    mngl: @4604    type: @4128   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4608    lang: C        body: undefined 
                         link: extern  
@4606   parm_decl        type: @605     srcp: math.h:323    
                         chan: @4609    argt: @605     size: @41     
                         algn: 64       used: 0       
@4607   identifier_node  strg: __builtin_ldexp         lngt: 15      
@4608   function_decl    name: @4610    type: @4415    srcp: <built-in>:0      
                         note: artificial              chan: @4611   
                         lang: C        body: undefined 
                         link: extern  
@4609   parm_decl        type: @10      srcp: math.h:323    
                         argt: @10      size: @18      algn: 32      
                         used: 0       
@4610   identifier_node  strg: __builtin_lceill        lngt: 16      
@4611   function_decl    name: @4612    type: @4422    srcp: <built-in>:0      
                         note: artificial              chan: @4613   
                         lang: C        body: undefined 
                         link: extern  
@4612   identifier_node  strg: __builtin_lceilf        lngt: 16      
@4613   function_decl    name: @4614    type: @594     srcp: <built-in>:0      
                         note: artificial              chan: @4615   
                         lang: C        body: undefined 
                         link: extern  
@4614   identifier_node  strg: __builtin_lceil         lngt: 15      
@4615   function_decl    name: @4616    type: @3900    srcp: <built-in>:0      
                         note: artificial              chan: @4617   
                         lang: C        body: undefined 
                         link: extern  
@4616   identifier_node  strg: jnl      lngt: 3       
@4617   function_decl    name: @4618    mngl: @4616    type: @3900   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4619    lang: C        body: undefined 
                         link: extern  
@4618   identifier_node  strg: __builtin_jnl           lngt: 13      
@4619   function_decl    name: @4620    type: @3907    srcp: <built-in>:0      
                         note: artificial              chan: @4621   
                         lang: C        body: undefined 
                         link: extern  
@4620   identifier_node  strg: jnf      lngt: 3       
@4621   function_decl    name: @4622    mngl: @4620    type: @3907   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4623    lang: C        body: undefined 
                         link: extern  
@4622   identifier_node  strg: __builtin_jnf           lngt: 13      
@4623   function_decl    name: @4624    type: @3914    srcp: math.h:502    
                         chan: @4625    lang: C        args: @4626   
                         body: undefined               link: extern  
@4624   identifier_node  strg: jn       lngt: 2       
@4625   function_decl    name: @4627    mngl: @4624    type: @3914   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4628    lang: C        body: undefined 
                         link: extern  
@4626   parm_decl        type: @10      srcp: math.h:502    
                         chan: @4629    argt: @10      size: @18     
                         algn: 32       used: 0       
@4627   identifier_node  strg: __builtin_jn            lngt: 12      
@4628   function_decl    name: @4630    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @4631   
                         lang: C        body: undefined 
                         link: extern  
@4629   parm_decl        type: @605     srcp: math.h:502    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4630   identifier_node  strg: j1l      lngt: 3       
@4631   function_decl    name: @4632    mngl: @4630    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4633    lang: C        body: undefined 
                         link: extern  
@4632   identifier_node  strg: __builtin_j1l           lngt: 13      
@4633   function_decl    name: @4634    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @4635   
                         lang: C        body: undefined 
                         link: extern  
@4634   identifier_node  strg: j1f      lngt: 3       
@4635   function_decl    name: @4636    mngl: @4634    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4637    lang: C        body: undefined 
                         link: extern  
@4636   identifier_node  strg: __builtin_j1f           lngt: 13      
@4637   function_decl    name: @4638    type: @3935    srcp: math.h:500    
                         chan: @4639    lang: C        args: @4640   
                         body: undefined               link: extern  
@4638   identifier_node  strg: j1       lngt: 2       
@4639   function_decl    name: @4641    mngl: @4638    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4642    lang: C        body: undefined 
                         link: extern  
@4640   parm_decl        type: @605     srcp: math.h:500    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4641   identifier_node  strg: __builtin_j1            lngt: 12      
@4642   function_decl    name: @4643    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @4644   
                         lang: C        body: undefined 
                         link: extern  
@4643   identifier_node  strg: j0l      lngt: 3       
@4644   function_decl    name: @4645    mngl: @4643    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4646    lang: C        body: undefined 
                         link: extern  
@4645   identifier_node  strg: __builtin_j0l           lngt: 13      
@4646   function_decl    name: @4647    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @4648   
                         lang: C        body: undefined 
                         link: extern  
@4647   identifier_node  strg: j0f      lngt: 3       
@4648   function_decl    name: @4649    mngl: @4647    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4650    lang: C        body: undefined 
                         link: extern  
@4649   identifier_node  strg: __builtin_j0f           lngt: 13      
@4650   function_decl    name: @4651    type: @3935    srcp: math.h:498    
                         chan: @4652    lang: C        args: @4653   
                         body: undefined               link: extern  
@4651   identifier_node  strg: j0       lngt: 2       
@4652   function_decl    name: @4654    mngl: @4651    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4655    lang: C        body: undefined 
                         link: extern  
@4653   parm_decl        type: @605     srcp: math.h:498    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4654   identifier_node  strg: __builtin_j0            lngt: 12      
@4655   function_decl    name: @4656    type: @4657    srcp: <built-in>:0      
                         note: artificial              chan: @4658   
                         lang: C        body: undefined 
                         link: extern  
@4656   identifier_node  strg: __builtin_infd128       lngt: 17      
@4657   function_type    size: @9       algn: 8        retn: @2828   
                         prms: @45     
@4658   function_decl    name: @4659    type: @4660    srcp: <built-in>:0      
                         note: artificial              chan: @4661   
                         lang: C        body: undefined 
                         link: extern  
@4659   identifier_node  strg: __builtin_infd64        lngt: 16      
@4660   function_type    size: @9       algn: 8        retn: @2835   
                         prms: @45     
@4661   function_decl    name: @4662    type: @4663    srcp: <built-in>:0      
                         note: artificial              chan: @4664   
                         lang: C        body: undefined 
                         link: extern  
@4662   identifier_node  strg: __builtin_infd32        lngt: 16      
@4663   function_type    size: @9       algn: 8        retn: @2842   
                         prms: @45     
@4664   function_decl    name: @4665    type: @624     srcp: <built-in>:0      
                         note: artificial              chan: @4666   
                         lang: C        body: undefined 
                         link: extern  
@4665   identifier_node  strg: __builtin_infl          lngt: 14      
@4666   function_decl    name: @4667    type: @617     srcp: <built-in>:0      
                         note: artificial              chan: @4668   
                         lang: C        body: undefined 
                         link: extern  
@4667   identifier_node  strg: __builtin_inff          lngt: 14      
@4668   function_decl    name: @4669    type: @636     srcp: <built-in>:0      
                         note: artificial              chan: @4670   
                         lang: C        body: undefined 
                         link: extern  
@4669   identifier_node  strg: __builtin_inf           lngt: 13      
@4670   function_decl    name: @4671    type: @655     srcp: math.h:449    
                         chan: @4672    lang: C        args: @4673   
                         body: undefined               link: extern  
@4671   identifier_node  strg: ilogbl   lngt: 6       
@4672   function_decl    name: @4674    mngl: @4671    type: @655    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4675    lang: C        body: undefined 
                         link: extern  
@4673   parm_decl        type: @629     srcp: math.h:449    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4674   identifier_node  strg: __builtin_ilogbl        lngt: 16      
@4675   function_decl    name: @4676    type: @670     srcp: math.h:330    
                         chan: @4677    lang: C        args: @4678   
                         body: undefined               link: extern  
@4676   identifier_node  strg: ilogbf   lngt: 6       
@4677   function_decl    name: @4679    mngl: @4676    type: @670    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4680    lang: C        body: undefined 
                         link: extern  
@4678   parm_decl        type: @100     srcp: math.h:330    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4679   identifier_node  strg: __builtin_ilogbf        lngt: 16      
@4680   function_decl    name: @4681    type: @661     srcp: math.h:329    
                         chan: @4682    lang: C        args: @4683   
                         body: undefined               link: extern  
@4681   identifier_node  strg: ilogb    lngt: 5       
@4682   function_decl    name: @4684    mngl: @4681    type: @661    
                         srcp: <built-in>:0            note: artificial 
                         chan: @4685    lang: C        body: undefined 
                         link: extern  
@4683   parm_decl        type: @605     srcp: math.h:329    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4684   identifier_node  strg: __builtin_ilogb         lngt: 15      
@4685   function_decl    name: @4686    type: @4164    srcp: math.h:454    
                         chan: @4687    lang: C        args: @4688   
                         body: undefined               link: extern  
@4686   identifier_node  strg: hypotl   lngt: 6       
@4687   function_decl    name: @4689    mngl: @4686    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4690    lang: C        body: undefined 
                         link: extern  
@4688   parm_decl        type: @629     srcp: math.h:454    
                         chan: @4691    argt: @629     size: @254    
                         algn: 128      used: 0       
@4689   identifier_node  strg: __builtin_hypotl        lngt: 16      
@4690   function_decl    name: @4692    type: @4171    srcp: math.h:345    
                         chan: @4693    lang: C        args: @4694   
                         body: undefined               link: extern  
@4691   parm_decl        type: @629     srcp: math.h:454    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4692   identifier_node  strg: hypotf   lngt: 6       
@4693   function_decl    name: @4695    mngl: @4692    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4696    lang: C        body: undefined 
                         link: extern  
@4694   parm_decl        type: @100     srcp: math.h:345    
                         chan: @4697    argt: @100     size: @18     
                         algn: 32       used: 0       
@4695   identifier_node  strg: __builtin_hypotf        lngt: 16      
@4696   function_decl    name: @4698    type: @4178    srcp: math.h:344    
                         chan: @4699    lang: C        args: @4700   
                         body: undefined               link: extern  
@4697   parm_decl        type: @100     srcp: math.h:345    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4698   identifier_node  strg: hypot    lngt: 5       
@4699   function_decl    name: @4701    mngl: @4698    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4702    lang: C        body: undefined 
                         link: extern  
@4700   parm_decl        type: @605     srcp: math.h:344    
                         chan: @4703    argt: @605     size: @41     
                         algn: 64       used: 0       
@4701   identifier_node  strg: __builtin_hypot         lngt: 15      
@4702   function_decl    name: @4704    type: @624     srcp: <built-in>:0      
                         note: artificial              chan: @4705   
                         lang: C        body: undefined 
                         link: extern  
@4703   parm_decl        type: @605     srcp: math.h:344    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4704   identifier_node  strg: __builtin_huge_vall     lngt: 19      
@4705   function_decl    name: @4706    type: @617     srcp: <built-in>:0      
                         note: artificial              chan: @4707   
                         lang: C        body: undefined 
                         link: extern  
@4706   identifier_node  strg: __builtin_huge_valf     lngt: 19      
@4707   function_decl    name: @4708    type: @636     srcp: <built-in>:0      
                         note: artificial              chan: @4709   
                         lang: C        body: undefined 
                         link: extern  
@4708   identifier_node  strg: __builtin_huge_val      lngt: 18      
@4709   function_decl    name: @4710    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @4711   
                         lang: C        body: undefined 
                         link: extern  
@4710   identifier_node  strg: gammal   lngt: 6       
@4711   function_decl    name: @4712    mngl: @4710    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4713    lang: C        body: undefined 
                         link: extern  
@4712   identifier_node  strg: __builtin_gammal        lngt: 16      
@4713   function_decl    name: @4714    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @4715   
                         lang: C        body: undefined 
                         link: extern  
@4714   identifier_node  strg: gammaf   lngt: 6       
@4715   function_decl    name: @4716    mngl: @4714    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4717    lang: C        body: undefined 
                         link: extern  
@4716   identifier_node  strg: __builtin_gammaf        lngt: 16      
@4717   function_decl    name: @4718    type: @3935    srcp: math.h:584    
                         chan: @4719    lang: C        args: @4720   
                         body: undefined               link: extern  
@4718   identifier_node  strg: gamma    lngt: 5       
@4719   function_decl    name: @4721    mngl: @4718    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4722    lang: C        body: undefined 
                         link: extern  
@4720   parm_decl        type: @605     srcp: math.h:584    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4721   identifier_node  strg: __builtin_gamma         lngt: 15      
@4722   function_decl    name: @4723    type: @4724    srcp: math.h:448    
                         chan: @4725    lang: C        args: @4726   
                         body: undefined               link: extern  
@4723   identifier_node  strg: frexpl   lngt: 6       
@4724   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4727   
@4725   function_decl    name: @4728    mngl: @4723    type: @4724   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4729    lang: C        body: undefined 
                         link: extern  
@4726   parm_decl        type: @629     srcp: math.h:448    
                         chan: @4730    argt: @629     size: @254    
                         algn: 128      used: 0       
@4727   tree_list        valu: @629     chan: @4731   
@4728   identifier_node  strg: __builtin_frexpl        lngt: 16      
@4729   function_decl    name: @4732    type: @4733    srcp: math.h:327    
                         chan: @4734    lang: C        args: @4735   
                         body: undefined               link: extern  
@4730   parm_decl        type: @1616    srcp: math.h:448    
                         argt: @1616    size: @18      algn: 32      
                         used: 0       
@4731   tree_list        valu: @1616    chan: @45     
@4732   identifier_node  strg: frexpf   lngt: 6       
@4733   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4736   
@4734   function_decl    name: @4737    mngl: @4732    type: @4733   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4738    lang: C        body: undefined 
                         link: extern  
@4735   parm_decl        type: @100     srcp: math.h:327    
                         chan: @4739    argt: @100     size: @18     
                         algn: 32       used: 0       
@4736   tree_list        valu: @100     chan: @4740   
@4737   identifier_node  strg: __builtin_frexpf        lngt: 16      
@4738   function_decl    name: @4741    type: @4742    srcp: math.h:326    
                         chan: @4743    lang: C        args: @4744   
                         body: undefined               link: extern  
@4739   parm_decl        type: @1616    srcp: math.h:327    
                         argt: @1616    size: @18      algn: 32      
                         used: 0       
@4740   tree_list        valu: @1616    chan: @45     
@4741   identifier_node  strg: frexp    lngt: 5       
@4742   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4745   
@4743   function_decl    name: @4746    mngl: @4741    type: @4742   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4747    lang: C        body: undefined 
                         link: extern  
@4744   parm_decl        type: @605     srcp: math.h:326    
                         chan: @4748    argt: @605     size: @41     
                         algn: 64       used: 0       
@4745   tree_list        valu: @605     chan: @4749   
@4746   identifier_node  strg: __builtin_frexp         lngt: 15      
@4747   function_decl    name: @4750    type: @4164    srcp: math.h:471    
                         chan: @4751    lang: C        args: @4752   
                         body: undefined               link: extern  
@4748   parm_decl        type: @1616    srcp: math.h:326    
                         argt: @1616    size: @18      algn: 32      
                         used: 0       
@4749   tree_list        valu: @1616    chan: @45     
@4750   identifier_node  strg: fmodl    lngt: 5       
@4751   function_decl    name: @4753    mngl: @4750    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4754    lang: C        body: undefined 
                         link: extern  
@4752   parm_decl        type: @629     srcp: math.h:471    
                         chan: @4755    argt: @629     size: @254    
                         algn: 128      used: 0       
@4753   identifier_node  strg: __builtin_fmodl         lngt: 15      
@4754   function_decl    name: @4756    type: @4171    srcp: math.h:396    
                         chan: @4757    lang: C        args: @4758   
                         body: undefined               link: extern  
@4755   parm_decl        type: @629     srcp: math.h:471    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4756   identifier_node  strg: fmodf    lngt: 5       
@4757   function_decl    name: @4759    mngl: @4756    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4760    lang: C        body: undefined 
                         link: extern  
@4758   parm_decl        type: @100     srcp: math.h:396    
                         chan: @4761    argt: @100     size: @18     
                         algn: 32       used: 0       
@4759   identifier_node  strg: __builtin_fmodf         lngt: 15      
@4760   function_decl    name: @4762    type: @4178    srcp: math.h:395    
                         chan: @4763    lang: C        args: @4764   
                         body: undefined               link: extern  
@4761   parm_decl        type: @100     srcp: math.h:396    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4762   identifier_node  strg: fmod     lngt: 4       
@4763   function_decl    name: @4765    mngl: @4762    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4766    lang: C        body: undefined 
                         link: extern  
@4764   parm_decl        type: @605     srcp: math.h:395    
                         chan: @4767    argt: @605     size: @41     
                         algn: 64       used: 0       
@4765   identifier_node  strg: __builtin_fmod          lngt: 14      
@4766   function_decl    name: @4768    type: @4164    srcp: math.h:482    
                         chan: @4769    lang: C        args: @4770   
                         body: undefined               link: extern  
@4767   parm_decl        type: @605     srcp: math.h:395    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4768   identifier_node  strg: fminl    lngt: 5       
@4769   function_decl    name: @4771    mngl: @4768    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4772    lang: C        body: undefined 
                         link: extern  
@4770   parm_decl        type: @629     srcp: math.h:482    
                         chan: @4773    argt: @629     size: @254    
                         algn: 128      used: 0       
@4771   identifier_node  strg: __builtin_fminl         lngt: 15      
@4772   function_decl    name: @4774    type: @4171    srcp: math.h:420    
                         chan: @4775    lang: C        args: @4776   
                         body: undefined               link: extern  
@4773   parm_decl        type: @629     srcp: math.h:482    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4774   identifier_node  strg: fminf    lngt: 5       
@4775   function_decl    name: @4777    mngl: @4774    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4778    lang: C        body: undefined 
                         link: extern  
@4776   parm_decl        type: @100     srcp: math.h:420    
                         chan: @4779    argt: @100     size: @18     
                         algn: 32       used: 0       
@4777   identifier_node  strg: __builtin_fminf         lngt: 15      
@4778   function_decl    name: @4780    type: @4178    srcp: math.h:419    
                         chan: @4781    lang: C        args: @4782   
                         body: undefined               link: extern  
@4779   parm_decl        type: @100     srcp: math.h:420    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4780   identifier_node  strg: fmin     lngt: 4       
@4781   function_decl    name: @4783    mngl: @4780    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4784    lang: C        body: undefined 
                         link: extern  
@4782   parm_decl        type: @605     srcp: math.h:419    
                         chan: @4785    argt: @605     size: @41     
                         algn: 64       used: 0       
@4783   identifier_node  strg: __builtin_fmin          lngt: 14      
@4784   function_decl    name: @4786    type: @4164    srcp: math.h:481    
                         chan: @4787    lang: C        args: @4788   
                         body: undefined               link: extern  
@4785   parm_decl        type: @605     srcp: math.h:419    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4786   identifier_node  strg: fmaxl    lngt: 5       
@4787   function_decl    name: @4789    mngl: @4786    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4790    lang: C        body: undefined 
                         link: extern  
@4788   parm_decl        type: @629     srcp: math.h:481    
                         chan: @4791    argt: @629     size: @254    
                         algn: 128      used: 0       
@4789   identifier_node  strg: __builtin_fmaxl         lngt: 15      
@4790   function_decl    name: @4792    type: @4171    srcp: math.h:417    
                         chan: @4793    lang: C        args: @4794   
                         body: undefined               link: extern  
@4791   parm_decl        type: @629     srcp: math.h:481    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4792   identifier_node  strg: fmaxf    lngt: 5       
@4793   function_decl    name: @4795    mngl: @4792    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4796    lang: C        body: undefined 
                         link: extern  
@4794   parm_decl        type: @100     srcp: math.h:417    
                         chan: @4797    argt: @100     size: @18     
                         algn: 32       used: 0       
@4795   identifier_node  strg: __builtin_fmaxf         lngt: 15      
@4796   function_decl    name: @4798    type: @4178    srcp: math.h:416    
                         chan: @4799    lang: C        args: @4800   
                         body: undefined               link: extern  
@4797   parm_decl        type: @100     srcp: math.h:417    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4798   identifier_node  strg: fmax     lngt: 4       
@4799   function_decl    name: @4801    mngl: @4798    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4802    lang: C        body: undefined 
                         link: extern  
@4800   parm_decl        type: @605     srcp: math.h:416    
                         chan: @4803    argt: @605     size: @41     
                         algn: 64       used: 0       
@4801   identifier_node  strg: __builtin_fmax          lngt: 14      
@4802   function_decl    name: @4804    type: @4805    srcp: math.h:483    
                         chan: @4806    lang: C        args: @4807   
                         body: undefined               link: extern  
@4803   parm_decl        type: @605     srcp: math.h:416    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4804   identifier_node  strg: fmal     lngt: 4       
@4805   function_type    size: @9       algn: 8        retn: @629    
                         prms: @4808   
@4806   function_decl    name: @4809    mngl: @4804    type: @4805   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4810    lang: C        body: undefined 
                         link: extern  
@4807   parm_decl        type: @629     srcp: math.h:483    
                         chan: @4811    argt: @629     size: @254    
                         algn: 128      used: 0       
@4808   tree_list        valu: @629     chan: @4812   
@4809   identifier_node  strg: __builtin_fmal          lngt: 14      
@4810   function_decl    name: @4813    type: @4814    srcp: math.h:423    
                         chan: @4815    lang: C        args: @4816   
                         body: undefined               link: extern  
@4811   parm_decl        type: @629     srcp: math.h:483    
                         chan: @4817    argt: @629     size: @254    
                         algn: 128      used: 0       
@4812   tree_list        valu: @629     chan: @4818   
@4813   identifier_node  strg: fmaf     lngt: 4       
@4814   function_type    size: @9       algn: 8        retn: @100    
                         prms: @4819   
@4815   function_decl    name: @4820    mngl: @4813    type: @4814   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4821    lang: C        body: undefined 
                         link: extern  
@4816   parm_decl        type: @100     srcp: math.h:423    
                         chan: @4822    argt: @100     size: @18     
                         algn: 32       used: 0       
@4817   parm_decl        type: @629     srcp: math.h:483    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4818   tree_list        valu: @629     chan: @45     
@4819   tree_list        valu: @100     chan: @4823   
@4820   identifier_node  strg: __builtin_fmaf          lngt: 14      
@4821   function_decl    name: @4824    type: @4825    srcp: math.h:422    
                         chan: @4826    lang: C        args: @4827   
                         body: undefined               link: extern  
@4822   parm_decl        type: @100     srcp: math.h:423    
                         chan: @4828    argt: @100     size: @18     
                         algn: 32       used: 0       
@4823   tree_list        valu: @100     chan: @4829   
@4824   identifier_node  strg: fma      lngt: 3       
@4825   function_type    size: @9       algn: 8        retn: @605    
                         prms: @4830   
@4826   function_decl    name: @4831    mngl: @4824    type: @4825   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4832    lang: C        body: undefined 
                         link: extern  
@4827   parm_decl        type: @605     srcp: math.h:422    
                         chan: @4833    argt: @605     size: @41     
                         algn: 64       used: 0       
@4828   parm_decl        type: @100     srcp: math.h:423    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4829   tree_list        valu: @100     chan: @45     
@4830   tree_list        valu: @605     chan: @4834   
@4831   identifier_node  strg: __builtin_fma           lngt: 13      
@4832   function_decl    name: @4835    type: @3923    srcp: math.h:462    
                         chan: @4836    lang: C        args: @4837   
                         body: undefined               link: extern  
@4833   parm_decl        type: @605     srcp: math.h:422    
                         chan: @4838    argt: @605     size: @41     
                         algn: 64       used: 0       
@4834   tree_list        valu: @605     chan: @4839   
@4835   identifier_node  strg: floorl   lngt: 6       
@4836   function_decl    name: @4840    mngl: @4835    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4841    lang: C        body: undefined 
                         link: extern  
@4837   parm_decl        type: @629     srcp: math.h:462    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4838   parm_decl        type: @605     srcp: math.h:422    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4839   tree_list        valu: @605     chan: @45     
@4840   identifier_node  strg: __builtin_floorl        lngt: 16      
@4841   function_decl    name: @4842    type: @3929    srcp: math.h:369    
                         chan: @4843    lang: C        args: @4844   
                         body: undefined               link: extern  
@4842   identifier_node  strg: floorf   lngt: 6       
@4843   function_decl    name: @4845    mngl: @4842    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4846    lang: C        body: undefined 
                         link: extern  
@4844   parm_decl        type: @100     srcp: math.h:369    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4845   identifier_node  strg: __builtin_floorf        lngt: 16      
@4846   function_decl    name: @4847    type: @3935    srcp: math.h:368    
                         chan: @4848    lang: C        args: @4849   
                         body: undefined               link: extern  
@4847   identifier_node  strg: floor    lngt: 5       
@4848   function_decl    name: @4850    mngl: @4847    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4851    lang: C        body: undefined 
                         link: extern  
@4849   parm_decl        type: @605     srcp: math.h:368    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4850   identifier_node  strg: __builtin_floor         lngt: 15      
@4851   function_decl    name: @4852    type: @4164    srcp: math.h:480    
                         chan: @4853    lang: C        args: @4854   
                         body: undefined               link: extern  
@4852   identifier_node  strg: fdiml    lngt: 5       
@4853   function_decl    name: @4855    mngl: @4852    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4856    lang: C        body: undefined 
                         link: extern  
@4854   parm_decl        type: @629     srcp: math.h:480    
                         chan: @4857    argt: @629     size: @254    
                         algn: 128      used: 0       
@4855   identifier_node  strg: __builtin_fdiml         lngt: 15      
@4856   function_decl    name: @4858    type: @4171    srcp: math.h:414    
                         chan: @4859    lang: C        args: @4860   
                         body: undefined               link: extern  
@4857   parm_decl        type: @629     srcp: math.h:480    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4858   identifier_node  strg: fdimf    lngt: 5       
@4859   function_decl    name: @4861    mngl: @4858    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4862    lang: C        body: undefined 
                         link: extern  
@4860   parm_decl        type: @100     srcp: math.h:414    
                         chan: @4863    argt: @100     size: @18     
                         algn: 32       used: 0       
@4861   identifier_node  strg: __builtin_fdimf         lngt: 15      
@4862   function_decl    name: @4864    type: @4178    srcp: math.h:413    
                         chan: @4865    lang: C        args: @4866   
                         body: undefined               link: extern  
@4863   parm_decl        type: @100     srcp: math.h:414    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4864   identifier_node  strg: fdim     lngt: 4       
@4865   function_decl    name: @4867    mngl: @4864    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4868    lang: C        body: undefined 
                         link: extern  
@4866   parm_decl        type: @605     srcp: math.h:413    
                         chan: @4869    argt: @605     size: @41     
                         algn: 64       used: 0       
@4867   identifier_node  strg: __builtin_fdim          lngt: 14      
@4868   function_decl    name: @4870    type: @3923    srcp: math.h:452    
                         chan: @4871    lang: C        args: @4872   
                         body: undefined               link: extern  
@4869   parm_decl        type: @605     srcp: math.h:413    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4870   identifier_node  strg: fabsl    lngt: 5       
@4871   function_decl    name: @4873    mngl: @4870    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4874    lang: C        body: undefined 
                         link: extern  
@4872   parm_decl        type: @629     srcp: math.h:452    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4873   identifier_node  strg: __builtin_fabsl         lngt: 15      
@4874   function_decl    name: @894     type: @3929    srcp: math.h:339    
                         chan: @4875    lang: C        args: @4876   
                         body: undefined               link: extern  
@4875   function_decl    name: @4877    mngl: @894     type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4878    lang: C        body: undefined 
                         link: extern  
@4876   parm_decl        type: @100     srcp: math.h:339    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4877   identifier_node  strg: __builtin_fabsf         lngt: 15      
@4878   function_decl    name: @4879    type: @3935    srcp: math.h:338    
                         chan: @4880    lang: C        args: @4881   
                         body: undefined               link: extern  
@4879   identifier_node  strg: fabs     lngt: 4       
@4880   function_decl    name: @4882    mngl: @4879    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4883    lang: C        body: undefined 
                         link: extern  
@4881   parm_decl        type: @605     srcp: math.h:338    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4882   identifier_node  strg: __builtin_fabs          lngt: 14      
@4883   function_decl    name: @4884    type: @3923    srcp: math.h:440    
                         chan: @4885    lang: C        args: @4886   
                         body: undefined               link: extern  
@4884   identifier_node  strg: expm1l   lngt: 6       
@4885   function_decl    name: @4887    mngl: @4884    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4888    lang: C        body: undefined 
                         link: extern  
@4886   parm_decl        type: @629     srcp: math.h:440    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4887   identifier_node  strg: __builtin_expm1l        lngt: 16      
@4888   function_decl    name: @4889    type: @3929    srcp: math.h:303    
                         chan: @4890    lang: C        args: @4891   
                         body: undefined               link: extern  
@4889   identifier_node  strg: expm1f   lngt: 6       
@4890   function_decl    name: @4892    mngl: @4889    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4893    lang: C        body: undefined 
                         link: extern  
@4891   parm_decl        type: @100     srcp: math.h:303    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4892   identifier_node  strg: __builtin_expm1f        lngt: 16      
@4893   function_decl    name: @4894    type: @3935    srcp: math.h:302    
                         chan: @4895    lang: C        args: @4896   
                         body: undefined               link: extern  
@4894   identifier_node  strg: expm1    lngt: 5       
@4895   function_decl    name: @4897    mngl: @4894    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4898    lang: C        body: undefined 
                         link: extern  
@4896   parm_decl        type: @605     srcp: math.h:302    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4897   identifier_node  strg: __builtin_expm1         lngt: 15      
@4898   function_decl    name: @4899    type: @3923    srcp: math.h:438    
                         chan: @4900    lang: C        args: @4901   
                         body: undefined               link: extern  
@4899   identifier_node  strg: expl     lngt: 4       
@4900   function_decl    name: @4902    mngl: @4899    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4903    lang: C        body: undefined 
                         link: extern  
@4901   parm_decl        type: @629     srcp: math.h:438    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4902   identifier_node  strg: __builtin_expl          lngt: 14      
@4903   function_decl    name: @4904    type: @3929    srcp: math.h:297    
                         chan: @4905    lang: C        args: @4906   
                         body: undefined               link: extern  
@4904   identifier_node  strg: expf     lngt: 4       
@4905   function_decl    name: @4907    mngl: @4904    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4908    lang: C        body: undefined 
                         link: extern  
@4906   parm_decl        type: @100     srcp: math.h:297    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4907   identifier_node  strg: __builtin_expf          lngt: 14      
@4908   function_decl    name: @4909    type: @3923    srcp: math.h:439    
                         chan: @4910    lang: C        args: @4911   
                         body: undefined               link: extern  
@4909   identifier_node  strg: exp2l    lngt: 5       
@4910   function_decl    name: @4912    mngl: @4909    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4913    lang: C        body: undefined 
                         link: extern  
@4911   parm_decl        type: @629     srcp: math.h:439    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4912   identifier_node  strg: __builtin_exp2l         lngt: 15      
@4913   function_decl    name: @4914    type: @3929    srcp: math.h:300    
                         chan: @4915    lang: C        args: @4916   
                         body: undefined               link: extern  
@4914   identifier_node  strg: exp2f    lngt: 5       
@4915   function_decl    name: @4917    mngl: @4914    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4918    lang: C        body: undefined 
                         link: extern  
@4916   parm_decl        type: @100     srcp: math.h:300    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4917   identifier_node  strg: __builtin_exp2f         lngt: 15      
@4918   function_decl    name: @4919    type: @3935    srcp: math.h:299    
                         chan: @4920    lang: C        args: @4921   
                         body: undefined               link: extern  
@4919   identifier_node  strg: exp2     lngt: 4       
@4920   function_decl    name: @4922    mngl: @4919    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4923    lang: C        body: undefined 
                         link: extern  
@4921   parm_decl        type: @605     srcp: math.h:299    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4922   identifier_node  strg: __builtin_exp2          lngt: 14      
@4923   function_decl    name: @4924    type: @3923    srcp: <built-in>:0      
                         note: artificial              chan: @4925   
                         lang: C        body: undefined 
                         link: extern  
@4924   identifier_node  strg: exp10l   lngt: 6       
@4925   function_decl    name: @4926    mngl: @4924    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4927    lang: C        body: undefined 
                         link: extern  
@4926   identifier_node  strg: __builtin_exp10l        lngt: 16      
@4927   function_decl    name: @4928    type: @3929    srcp: <built-in>:0      
                         note: artificial              chan: @4929   
                         lang: C        body: undefined 
                         link: extern  
@4928   identifier_node  strg: exp10f   lngt: 6       
@4929   function_decl    name: @4930    mngl: @4928    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4931    lang: C        body: undefined 
                         link: extern  
@4930   identifier_node  strg: __builtin_exp10f        lngt: 16      
@4931   function_decl    name: @4932    type: @3935    srcp: <built-in>:0      
                         note: artificial              chan: @4933   
                         lang: C        body: undefined 
                         link: extern  
@4932   identifier_node  strg: exp10    lngt: 5       
@4933   function_decl    name: @4934    mngl: @4932    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4935    lang: C        body: undefined 
                         link: extern  
@4934   identifier_node  strg: __builtin_exp10         lngt: 15      
@4935   function_decl    name: @4936    type: @3935    srcp: math.h:296    
                         chan: @4937    lang: C        args: @4938   
                         body: undefined               link: extern  
@4936   identifier_node  strg: exp      lngt: 3       
@4937   function_decl    name: @4939    mngl: @4936    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4940    lang: C        body: undefined 
                         link: extern  
@4938   parm_decl        type: @605     srcp: math.h:296    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4939   identifier_node  strg: __builtin_exp           lngt: 13      
@4940   function_decl    name: @4941    type: @3923    srcp: math.h:457    
                         chan: @4942    lang: C        args: @4943   
                         body: undefined               link: extern  
@4941   identifier_node  strg: erfl     lngt: 4       
@4942   function_decl    name: @4944    mngl: @4941    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4945    lang: C        body: undefined 
                         link: extern  
@4943   parm_decl        type: @629     srcp: math.h:457    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4944   identifier_node  strg: __builtin_erfl          lngt: 14      
@4945   function_decl    name: @4946    type: @3929    srcp: math.h:354    
                         chan: @4947    lang: C        args: @4948   
                         body: undefined               link: extern  
@4946   identifier_node  strg: erff     lngt: 4       
@4947   function_decl    name: @4949    mngl: @4946    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4950    lang: C        body: undefined 
                         link: extern  
@4948   parm_decl        type: @100     srcp: math.h:354    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4949   identifier_node  strg: __builtin_erff          lngt: 14      
@4950   function_decl    name: @4951    type: @3923    srcp: math.h:458    
                         chan: @4952    lang: C        args: @4953   
                         body: undefined               link: extern  
@4951   identifier_node  strg: erfcl    lngt: 5       
@4952   function_decl    name: @4954    mngl: @4951    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4955    lang: C        body: undefined 
                         link: extern  
@4953   parm_decl        type: @629     srcp: math.h:458    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4954   identifier_node  strg: __builtin_erfcl         lngt: 15      
@4955   function_decl    name: @4956    type: @3929    srcp: math.h:357    
                         chan: @4957    lang: C        args: @4958   
                         body: undefined               link: extern  
@4956   identifier_node  strg: erfcf    lngt: 5       
@4957   function_decl    name: @4959    mngl: @4956    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4960    lang: C        body: undefined 
                         link: extern  
@4958   parm_decl        type: @100     srcp: math.h:357    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4959   identifier_node  strg: __builtin_erfcf         lngt: 15      
@4960   function_decl    name: @4961    type: @3935    srcp: math.h:356    
                         chan: @4962    lang: C        args: @4963   
                         body: undefined               link: extern  
@4961   identifier_node  strg: erfc     lngt: 4       
@4962   function_decl    name: @4964    mngl: @4961    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4965    lang: C        body: undefined 
                         link: extern  
@4963   parm_decl        type: @605     srcp: math.h:356    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4964   identifier_node  strg: __builtin_erfc          lngt: 14      
@4965   function_decl    name: @4966    type: @3935    srcp: math.h:353    
                         chan: @4967    lang: C        args: @4968   
                         body: undefined               link: extern  
@4966   identifier_node  strg: erf      lngt: 3       
@4967   function_decl    name: @4969    mngl: @4966    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4970    lang: C        body: undefined 
                         link: extern  
@4968   parm_decl        type: @605     srcp: math.h:353    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4969   identifier_node  strg: __builtin_erf           lngt: 13      
@4970   function_decl    name: @4971    type: @4164    srcp: <built-in>:0      
                         note: artificial              chan: @4972   
                         lang: C        body: undefined 
                         link: extern  
@4971   identifier_node  strg: dreml    lngt: 5       
@4972   function_decl    name: @4973    mngl: @4971    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4974    lang: C        body: undefined 
                         link: extern  
@4973   identifier_node  strg: __builtin_dreml         lngt: 15      
@4974   function_decl    name: @4975    type: @4171    srcp: <built-in>:0      
                         note: artificial              chan: @4976   
                         lang: C        body: undefined 
                         link: extern  
@4975   identifier_node  strg: dremf    lngt: 5       
@4976   function_decl    name: @4977    mngl: @4975    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4978    lang: C        body: undefined 
                         link: extern  
@4977   identifier_node  strg: __builtin_dremf         lngt: 15      
@4978   function_decl    name: @4979    type: @4178    srcp: math.h:600    
                         chan: @4980    lang: C        args: @4981   
                         body: undefined               link: extern  
@4979   identifier_node  strg: drem     lngt: 4       
@4980   function_decl    name: @4982    mngl: @4979    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4983    lang: C        body: undefined 
                         link: extern  
@4981   parm_decl        type: @605     srcp: math.h:600    
                         chan: @4984    argt: @605     size: @41     
                         algn: 64       used: 0       
@4982   identifier_node  strg: __builtin_drem          lngt: 14      
@4983   function_decl    name: @4985    type: @3923    srcp: math.h:429    
                         chan: @4986    lang: C        args: @4987   
                         body: undefined               link: extern  
@4984   parm_decl        type: @605     srcp: math.h:600    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@4985   identifier_node  strg: cosl     lngt: 4       
@4986   function_decl    name: @4988    mngl: @4985    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4989    lang: C        body: undefined 
                         link: extern  
@4987   parm_decl        type: @629     srcp: math.h:429    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4988   identifier_node  strg: __builtin_cosl          lngt: 14      
@4989   function_decl    name: @4990    type: @3923    srcp: math.h:435    
                         chan: @4991    lang: C        args: @4992   
                         body: undefined               link: extern  
@4990   identifier_node  strg: coshl    lngt: 5       
@4991   function_decl    name: @4993    mngl: @4990    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4994    lang: C        body: undefined 
                         link: extern  
@4992   parm_decl        type: @629     srcp: math.h:435    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@4993   identifier_node  strg: __builtin_coshl         lngt: 15      
@4994   function_decl    name: @4995    type: @3929    srcp: math.h:288    
                         chan: @4996    lang: C        args: @4997   
                         body: undefined               link: extern  
@4995   identifier_node  strg: coshf    lngt: 5       
@4996   function_decl    name: @4998    mngl: @4995    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4999    lang: C        body: undefined 
                         link: extern  
@4997   parm_decl        type: @100     srcp: math.h:288    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@4998   identifier_node  strg: __builtin_coshf         lngt: 15      
@4999   function_decl    name: @5000    type: @3935    srcp: math.h:287    
                         chan: @5001    lang: C        args: @5002   
                         body: undefined               link: extern  
@5000   identifier_node  strg: cosh     lngt: 4       
@5001   function_decl    name: @5003    mngl: @5000    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5004    lang: C        body: undefined 
                         link: extern  
@5002   parm_decl        type: @605     srcp: math.h:287    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5003   identifier_node  strg: __builtin_cosh          lngt: 14      
@5004   function_decl    name: @5005    type: @3929    srcp: math.h:270    
                         chan: @5006    lang: C        args: @5007   
                         body: undefined               link: extern  
@5005   identifier_node  strg: cosf     lngt: 4       
@5006   function_decl    name: @5008    mngl: @5005    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5009    lang: C        body: undefined 
                         link: extern  
@5007   parm_decl        type: @100     srcp: math.h:270    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5008   identifier_node  strg: __builtin_cosf          lngt: 14      
@5009   function_decl    name: @5010    type: @3935    srcp: math.h:269    
                         chan: @5011    lang: C        args: @5012   
                         body: undefined               link: extern  
@5010   identifier_node  strg: cos      lngt: 3       
@5011   function_decl    name: @5013    mngl: @5010    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5014    lang: C        body: undefined 
                         link: extern  
@5012   parm_decl        type: @605     srcp: math.h:269    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5013   identifier_node  strg: __builtin_cos           lngt: 13      
@5014   function_decl    name: @5015    type: @4164    srcp: math.h:474    
                         chan: @5016    lang: C        args: @5017   
                         body: undefined               link: extern  
@5015   identifier_node  strg: copysignl               lngt: 9       
@5016   function_decl    name: @5018    mngl: @5015    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5019    lang: C        body: undefined 
                         link: extern  
@5017   parm_decl        type: @629     srcp: math.h:474    
                         chan: @5020    argt: @629     size: @254    
                         algn: 128      used: 0       
@5018   identifier_node  strg: __builtin_copysignl     lngt: 19      
@5019   function_decl    name: @5021    type: @4171    srcp: math.h:405    
                         chan: @5022    lang: C        args: @5023   
                         body: undefined               link: extern  
@5020   parm_decl        type: @629     srcp: math.h:474    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5021   identifier_node  strg: copysignf               lngt: 9       
@5022   function_decl    name: @5024    mngl: @5021    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5025    lang: C        body: undefined 
                         link: extern  
@5023   parm_decl        type: @100     srcp: math.h:405    
                         chan: @5026    argt: @100     size: @18     
                         algn: 32       used: 0       
@5024   identifier_node  strg: __builtin_copysignf     lngt: 19      
@5025   function_decl    name: @5027    type: @4178    srcp: math.h:404    
                         chan: @5028    lang: C        args: @5029   
                         body: undefined               link: extern  
@5026   parm_decl        type: @100     srcp: math.h:405    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5027   identifier_node  strg: copysign lngt: 8       
@5028   function_decl    name: @5030    mngl: @5027    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5031    lang: C        body: undefined 
                         link: extern  
@5029   parm_decl        type: @605     srcp: math.h:404    
                         chan: @5032    argt: @605     size: @41     
                         algn: 64       used: 0       
@5030   identifier_node  strg: __builtin_copysign      lngt: 18      
@5031   function_decl    name: @5033    type: @3923    srcp: math.h:461    
                         chan: @5034    lang: C        args: @5035   
                         body: undefined               link: extern  
@5032   parm_decl        type: @605     srcp: math.h:404    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5033   identifier_node  strg: ceill    lngt: 5       
@5034   function_decl    name: @5036    mngl: @5033    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5037    lang: C        body: undefined 
                         link: extern  
@5035   parm_decl        type: @629     srcp: math.h:461    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5036   identifier_node  strg: __builtin_ceill         lngt: 15      
@5037   function_decl    name: @5038    type: @3929    srcp: math.h:366    
                         chan: @5039    lang: C        args: @5040   
                         body: undefined               link: extern  
@5038   identifier_node  strg: ceilf    lngt: 5       
@5039   function_decl    name: @5041    mngl: @5038    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5042    lang: C        body: undefined 
                         link: extern  
@5040   parm_decl        type: @100     srcp: math.h:366    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5041   identifier_node  strg: __builtin_ceilf         lngt: 15      
@5042   function_decl    name: @5043    type: @3935    srcp: math.h:365    
                         chan: @5044    lang: C        args: @5045   
                         body: undefined               link: extern  
@5043   identifier_node  strg: ceil     lngt: 4       
@5044   function_decl    name: @5046    mngl: @5043    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5047    lang: C        body: undefined 
                         link: extern  
@5045   parm_decl        type: @605     srcp: math.h:365    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5046   identifier_node  strg: __builtin_ceil          lngt: 14      
@5047   function_decl    name: @5048    type: @3923    srcp: math.h:453    
                         chan: @5049    lang: C        args: @5050   
                         body: undefined               link: extern  
@5048   identifier_node  strg: cbrtl    lngt: 5       
@5049   function_decl    name: @5051    mngl: @5048    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5052    lang: C        body: undefined 
                         link: extern  
@5050   parm_decl        type: @629     srcp: math.h:453    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5051   identifier_node  strg: __builtin_cbrtl         lngt: 15      
@5052   function_decl    name: @5053    type: @3929    srcp: math.h:342    
                         chan: @5054    lang: C        args: @5055   
                         body: undefined               link: extern  
@5053   identifier_node  strg: cbrtf    lngt: 5       
@5054   function_decl    name: @5056    mngl: @5053    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5057    lang: C        body: undefined 
                         link: extern  
@5055   parm_decl        type: @100     srcp: math.h:342    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5056   identifier_node  strg: __builtin_cbrtf         lngt: 15      
@5057   function_decl    name: @5058    type: @3935    srcp: math.h:341    
                         chan: @5059    lang: C        args: @5060   
                         body: undefined               link: extern  
@5058   identifier_node  strg: cbrt     lngt: 4       
@5059   function_decl    name: @5061    mngl: @5058    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5062    lang: C        body: undefined 
                         link: extern  
@5060   parm_decl        type: @605     srcp: math.h:341    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5061   identifier_node  strg: __builtin_cbrt          lngt: 14      
@5062   function_decl    name: @5063    type: @3923    srcp: math.h:427    
                         chan: @5064    lang: C        args: @5065   
                         body: undefined               link: extern  
@5063   identifier_node  strg: atanl    lngt: 5       
@5064   function_decl    name: @5066    mngl: @5063    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5067    lang: C        body: undefined 
                         link: extern  
@5065   parm_decl        type: @629     srcp: math.h:427    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5066   identifier_node  strg: __builtin_atanl         lngt: 15      
@5067   function_decl    name: @5068    type: @3923    srcp: math.h:434    
                         chan: @5069    lang: C        args: @5070   
                         body: undefined               link: extern  
@5068   identifier_node  strg: atanhl   lngt: 6       
@5069   function_decl    name: @5071    mngl: @5068    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5072    lang: C        body: undefined 
                         link: extern  
@5070   parm_decl        type: @629     srcp: math.h:434    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5071   identifier_node  strg: __builtin_atanhl        lngt: 16      
@5072   function_decl    name: @5073    type: @3929    srcp: math.h:285    
                         chan: @5074    lang: C        args: @5075   
                         body: undefined               link: extern  
@5073   identifier_node  strg: atanhf   lngt: 6       
@5074   function_decl    name: @5076    mngl: @5073    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5077    lang: C        body: undefined 
                         link: extern  
@5075   parm_decl        type: @100     srcp: math.h:285    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5076   identifier_node  strg: __builtin_atanhf        lngt: 16      
@5077   function_decl    name: @5078    type: @3935    srcp: math.h:284    
                         chan: @5079    lang: C        args: @5080   
                         body: undefined               link: extern  
@5078   identifier_node  strg: atanh    lngt: 5       
@5079   function_decl    name: @5081    mngl: @5078    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5082    lang: C        body: undefined 
                         link: extern  
@5080   parm_decl        type: @605     srcp: math.h:284    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5081   identifier_node  strg: __builtin_atanh         lngt: 15      
@5082   function_decl    name: @5083    type: @3929    srcp: math.h:264    
                         chan: @5084    lang: C        args: @5085   
                         body: undefined               link: extern  
@5083   identifier_node  strg: atanf    lngt: 5       
@5084   function_decl    name: @5086    mngl: @5083    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5087    lang: C        body: undefined 
                         link: extern  
@5085   parm_decl        type: @100     srcp: math.h:264    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5086   identifier_node  strg: __builtin_atanf         lngt: 15      
@5087   function_decl    name: @5088    type: @4164    srcp: math.h:428    
                         chan: @5089    lang: C        args: @5090   
                         body: undefined               link: extern  
@5088   identifier_node  strg: atan2l   lngt: 6       
@5089   function_decl    name: @5091    mngl: @5088    type: @4164   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5092    lang: C        body: undefined 
                         link: extern  
@5090   parm_decl        type: @629     srcp: math.h:428    
                         chan: @5093    argt: @629     size: @254    
                         algn: 128      used: 0       
@5091   identifier_node  strg: __builtin_atan2l        lngt: 16      
@5092   function_decl    name: @5094    type: @4171    srcp: math.h:267    
                         chan: @5095    lang: C        args: @5096   
                         body: undefined               link: extern  
@5093   parm_decl        type: @629     srcp: math.h:428    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5094   identifier_node  strg: atan2f   lngt: 6       
@5095   function_decl    name: @5097    mngl: @5094    type: @4171   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5098    lang: C        body: undefined 
                         link: extern  
@5096   parm_decl        type: @100     srcp: math.h:267    
                         chan: @5099    argt: @100     size: @18     
                         algn: 32       used: 0       
@5097   identifier_node  strg: __builtin_atan2f        lngt: 16      
@5098   function_decl    name: @5100    type: @4178    srcp: math.h:266    
                         chan: @5101    lang: C        args: @5102   
                         body: undefined               link: extern  
@5099   parm_decl        type: @100     srcp: math.h:267    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5100   identifier_node  strg: atan2    lngt: 5       
@5101   function_decl    name: @5103    mngl: @5100    type: @4178   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5104    lang: C        body: undefined 
                         link: extern  
@5102   parm_decl        type: @605     srcp: math.h:266    
                         chan: @5105    argt: @605     size: @41     
                         algn: 64       used: 0       
@5103   identifier_node  strg: __builtin_atan2         lngt: 15      
@5104   function_decl    name: @5106    type: @3935    srcp: math.h:263    
                         chan: @5107    lang: C        args: @5108   
                         body: undefined               link: extern  
@5105   parm_decl        type: @605     srcp: math.h:266    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5106   identifier_node  strg: atan     lngt: 4       
@5107   function_decl    name: @5109    mngl: @5106    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5110    lang: C        body: undefined 
                         link: extern  
@5108   parm_decl        type: @605     srcp: math.h:263    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5109   identifier_node  strg: __builtin_atan          lngt: 14      
@5110   function_decl    name: @5111    type: @3923    srcp: math.h:426    
                         chan: @5112    lang: C        args: @5113   
                         body: undefined               link: extern  
@5111   identifier_node  strg: asinl    lngt: 5       
@5112   function_decl    name: @5114    mngl: @5111    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5115    lang: C        body: undefined 
                         link: extern  
@5113   parm_decl        type: @629     srcp: math.h:426    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5114   identifier_node  strg: __builtin_asinl         lngt: 15      
@5115   function_decl    name: @5116    type: @3923    srcp: math.h:433    
                         chan: @5117    lang: C        args: @5118   
                         body: undefined               link: extern  
@5116   identifier_node  strg: asinhl   lngt: 6       
@5117   function_decl    name: @5119    mngl: @5116    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5120    lang: C        body: undefined 
                         link: extern  
@5118   parm_decl        type: @629     srcp: math.h:433    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5119   identifier_node  strg: __builtin_asinhl        lngt: 16      
@5120   function_decl    name: @5121    type: @3929    srcp: math.h:282    
                         chan: @5122    lang: C        args: @5123   
                         body: undefined               link: extern  
@5121   identifier_node  strg: asinhf   lngt: 6       
@5122   function_decl    name: @5124    mngl: @5121    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5125    lang: C        body: undefined 
                         link: extern  
@5123   parm_decl        type: @100     srcp: math.h:282    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5124   identifier_node  strg: __builtin_asinhf        lngt: 16      
@5125   function_decl    name: @5126    type: @3935    srcp: math.h:281    
                         chan: @5127    lang: C        args: @5128   
                         body: undefined               link: extern  
@5126   identifier_node  strg: asinh    lngt: 5       
@5127   function_decl    name: @5129    mngl: @5126    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5130    lang: C        body: undefined 
                         link: extern  
@5128   parm_decl        type: @605     srcp: math.h:281    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5129   identifier_node  strg: __builtin_asinh         lngt: 15      
@5130   function_decl    name: @5131    type: @3929    srcp: math.h:261    
                         chan: @5132    lang: C        args: @5133   
                         body: undefined               link: extern  
@5131   identifier_node  strg: asinf    lngt: 5       
@5132   function_decl    name: @5134    mngl: @5131    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5135    lang: C        body: undefined 
                         link: extern  
@5133   parm_decl        type: @100     srcp: math.h:261    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5134   identifier_node  strg: __builtin_asinf         lngt: 15      
@5135   function_decl    name: @5136    type: @3935    srcp: math.h:260    
                         chan: @5137    lang: C        args: @5138   
                         body: undefined               link: extern  
@5136   identifier_node  strg: asin     lngt: 4       
@5137   function_decl    name: @5139    mngl: @5136    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5140    lang: C        body: undefined 
                         link: extern  
@5138   parm_decl        type: @605     srcp: math.h:260    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5139   identifier_node  strg: __builtin_asin          lngt: 14      
@5140   function_decl    name: @5141    type: @3923    srcp: math.h:425    
                         chan: @5142    lang: C        args: @5143   
                         body: undefined               link: extern  
@5141   identifier_node  strg: acosl    lngt: 5       
@5142   function_decl    name: @5144    mngl: @5141    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5145    lang: C        body: undefined 
                         link: extern  
@5143   parm_decl        type: @629     srcp: math.h:425    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5144   identifier_node  strg: __builtin_acosl         lngt: 15      
@5145   function_decl    name: @5146    type: @3923    srcp: math.h:432    
                         chan: @5147    lang: C        args: @5148   
                         body: undefined               link: extern  
@5146   identifier_node  strg: acoshl   lngt: 6       
@5147   function_decl    name: @5149    mngl: @5146    type: @3923   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5150    lang: C        body: undefined 
                         link: extern  
@5148   parm_decl        type: @629     srcp: math.h:432    
                         argt: @629     size: @254     algn: 128     
                         used: 0       
@5149   identifier_node  strg: __builtin_acoshl        lngt: 16      
@5150   function_decl    name: @5151    type: @3929    srcp: math.h:279    
                         chan: @5152    lang: C        args: @5153   
                         body: undefined               link: extern  
@5151   identifier_node  strg: acoshf   lngt: 6       
@5152   function_decl    name: @5154    mngl: @5151    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5155    lang: C        body: undefined 
                         link: extern  
@5153   parm_decl        type: @100     srcp: math.h:279    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5154   identifier_node  strg: __builtin_acoshf        lngt: 16      
@5155   function_decl    name: @5156    type: @3935    srcp: math.h:278    
                         chan: @5157    lang: C        args: @5158   
                         body: undefined               link: extern  
@5156   identifier_node  strg: acosh    lngt: 5       
@5157   function_decl    name: @5159    mngl: @5156    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5160    lang: C        body: undefined 
                         link: extern  
@5158   parm_decl        type: @605     srcp: math.h:278    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5159   identifier_node  strg: __builtin_acosh         lngt: 15      
@5160   function_decl    name: @5161    type: @3929    srcp: math.h:258    
                         chan: @5162    lang: C        args: @5163   
                         body: undefined               link: extern  
@5161   identifier_node  strg: acosf    lngt: 5       
@5162   function_decl    name: @5164    mngl: @5161    type: @3929   
                         srcp: <built-in>:0            note: artificial 
                         chan: @5165    lang: C        body: undefined 
                         link: extern  
@5163   parm_decl        type: @100     srcp: math.h:258    
                         argt: @100     size: @18      algn: 32      
                         used: 0       
@5164   identifier_node  strg: __builtin_acosf         lngt: 15      
@5165   function_decl    name: @5166    type: @3935    srcp: math.h:257    
                         chan: @5167    lang: C        args: @5168   
                         body: undefined               link: extern  
@5166   identifier_node  strg: acos     lngt: 4       
@5167   function_decl    name: @5169    mngl: @5166    type: @3935   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2582    lang: C        body: undefined 
                         link: extern  
@5168   parm_decl        type: @605     srcp: math.h:257    
                         argt: @605     size: @41      algn: 64      
                         used: 0       
@5169   identifier_node  strg: __builtin_acos          lngt: 14      
