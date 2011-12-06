@1      namespace_decl   name: @2       srcp: <built-in>:0      
                         dcls: @3      
@2      identifier_node  strg: ::       lngt: 2       
@3      function_decl    name: @4       mngl: @5       type: @6      
                         srcp: structs.cpp:20          chan: @7      
                         link: extern   body: @8      
@4      identifier_node  strg: returnA  lngt: 7       
@5      identifier_node  strg: _Z7returnAv             lngt: 11      
@6      function_type    size: @9       algn: 8        retn: @10     
                         prms: @11     
@7      function_decl    name: @12      mngl: @13      type: @14     
                         srcp: structs.cpp:14          chan: @15     
                         link: extern   body: @16     
@8      statement_list   0   : @17      1   : @18      2   : @19     
                         3   : @20     
@9      integer_cst      type: @21      low : 8       
@10     record_type      name: @15      size: @22      algn: 32      
                         tag : struct   flds: @23      fncs: @24     
                         binf: @25     
@11     tree_list        valu: @26     
@12     identifier_node  strg: createA  lngt: 7       
@13     identifier_node  strg: _Z7createAv             lngt: 11      
@14     function_type    size: @9       algn: 8        retn: @27     
                         prms: @11     
@15     type_decl        name: @28      type: @10      srcp: structs.cpp:10     
                         chan: @29     
@16     statement_list   0   : @30      1   : @31      2   : @32     
@17     modify_expr      type: @33      op 0: @34      op 1: @35     
@18     modify_expr      type: @36      op 0: @37      op 1: @38     
@19     modify_expr      type: @39      op 0: @40      op 1: @41     
@20     return_expr      type: @26      expr: @42     
@21     integer_type     name: @43      size: @44      algn: 64      
                         prec: 36       sign: unsigned min : @45     
                         max : @46     
@22     integer_cst      type: @21      low : 128     
@23     field_decl       name: @47      type: @33      scpe: @10     
                         srcp: structs.cpp:5           chan: @48     
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@24     function_decl    name: @28      type: @50      scpe: @10     
                         srcp: structs.cpp:10          note: artificial 
                         chan: @51      note: member   accs: pub     
                         note: constructor             args: @52     
                         link: extern  
@25     binfo            type: @10      bases: 0       
@26     void_type        name: @53      algn: 8       
@27     pointer_type     size: @49      algn: 32       ptd : @10     
@28     identifier_node  strg: A        lngt: 1       
@29     function_decl    name: @54      type: @55      srcp: stdlib.h:963    
                         chan: @56      lang: C        args: @57     
                         body: undefined               link: extern  
@30     modify_expr      type: @58      op 0: @59      op 1: @60     
@31     modify_expr      type: @27      op 0: @61      op 1: @62     
@32     return_expr      type: @26      expr: @63     
@33     integer_type     name: @64      size: @49      algn: 32      
                         prec: 32       sign: signed   min : @65     
                         max : @66     
@34     component_ref    type: @33      op 0: @42      op 1: @23     
@35     integer_cst      type: @33      low : 10      
@36     real_type        name: @67      size: @44      algn: 64      
                         prec: 64      
@37     component_ref    type: @36      op 0: @42      op 1: @48     
@38     real_cst         type: @36     
@39     pointer_type     size: @49      algn: 32       ptd : @68     
@40     component_ref    type: @39      op 0: @42      op 1: @69     
@41     addr_expr        type: @70      op 0: @71     
@42     result_decl      name: @72      type: @10      scpe: @3      
                         srcp: structs.cpp:22          size: @22     
                         algn: 32      
@43     identifier_node  strg: bit_size_type           lngt: 13      
@44     integer_cst      type: @21      low : 64      
@45     integer_cst      type: @21      low : 0       
@46     integer_cst      type: @21      high: 15       low : -1      
@47     identifier_node  strg: x        lngt: 1       
@48     field_decl       name: @73      type: @36      scpe: @10     
                         srcp: structs.cpp:6           chan: @69     
                         accs: pub      size: @44      algn: 32      
                         bpos: @49     
@49     integer_cst      type: @21      low : 32      
@50     method_type      unql: @74      size: @9       algn: 8       
                         clas: @10      retn: @26      prms: @75     
@51     function_decl    name: @76      orig: @24      type: @50     
                         scpe: @10      srcp: structs.cpp:10     
                         note: artificial              chan: @77     
                         note: member   accs: pub      note: constructor 
                         args: @78      link: extern  
@52     parm_decl        name: @79      type: @80      srcp: structs.cpp:27     
                         note: artificial              chan: @81     
                         argt: @80      size: @49      algn: 32      
                         used: 0       
@53     type_decl        name: @82      type: @26      srcp: <built-in>:0      
                         note: artificial 
@54     identifier_node  strg: getloadavg              lngt: 10      
@55     function_type    size: @9       algn: 8        retn: @33     
                         prms: @83     
@56     function_decl    name: @84      type: @85      srcp: stdlib.h:955    
                         chan: @86      lang: C        body: undefined 
                         link: extern  
@57     parm_decl        name: @87      type: @88      srcp: stdlib.h:963    
                         chan: @89      argt: @88      size: @49     
                         algn: 32       used: 0       
@58     pointer_type     size: @49      algn: 32       ptd : @26     
@59     var_decl         type: @58      scpe: @7       srcp: structs.cpp:16     
                         note: artificial              size: @49     
                         algn: 32       used: 1       
@60     call_expr        type: @58      fn  : @90      args: @91     
@61     var_decl         type: @27      scpe: @7       srcp: structs.cpp:16     
                         note: artificial              chan: @59     
                         size: @49      algn: 32       used: 1       
@62     nop_expr         type: @27      op 0: @59     
@63     modify_expr      type: @27      op 0: @92      op 1: @61     
@64     type_decl        name: @93      type: @33      srcp: <built-in>:0      
                         note: artificial 
@65     integer_cst      type: @33      high: -1       low : -2147483648 
@66     integer_cst      type: @33      low : 2147483647 
@67     type_decl        name: @94      type: @36      srcp: <built-in>:0      
                         note: artificial 
@68     integer_type     name: @95      size: @9       algn: 8       
                         prec: 8        sign: signed   min : @96     
                         max : @97     
@69     field_decl       name: @98      type: @39      scpe: @10     
                         srcp: structs.cpp:7           chan: @99     
                         accs: pub      size: @49      algn: 32      
                         bpos: @100    
@70     pointer_type     size: @49      algn: 32       ptd : @101    
@71     array_ref        type: @101     op 0: @102     op 1: @103    
                         op 2: @103     op 3: @104    
@72     identifier_node  strg: a        lngt: 1       
@73     identifier_node  strg: y        lngt: 1       
@74     method_type      size: @9       algn: 8        clas: @10     
                         retn: @26      prms: @75     
@75     tree_list        valu: @27      chan: @105    
@76     identifier_node  strg: __base_ctor             lngt: 12      
@77     function_decl    name: @106     orig: @24      type: @50     
                         scpe: @10      srcp: structs.cpp:10     
                         note: artificial              chan: @107    
                         note: member   accs: pub      note: constructor 
                         args: @108     link: extern  
@78     parm_decl        name: @79      type: @80      scpe: @51     
                         srcp: structs.cpp:27          note: artificial 
                         chan: @109     argt: @80      size: @49     
                         algn: 32       used: 0       
@79     identifier_node  strg: this     lngt: 4       
@80     pointer_type     qual: c        unql: @27      size: @49     
                         algn: 32       ptd : @10     
@81     parm_decl        type: @110     srcp: structs.cpp:27     
                         argt: @110     size: @49      algn: 32      
                         used: 0       
@82     identifier_node  strg: void     lngt: 4       
@83     tree_list        valu: @88      chan: @111    
@84     identifier_node  strg: getpt    lngt: 5       
@85     function_type    size: @9       algn: 8        retn: @33     
                         prms: @11     
@86     function_decl    name: @112     type: @113     srcp: stdlib.h:952    
                         chan: @114     lang: C        args: @115    
                         body: undefined               link: extern  
@87     identifier_node  strg: __loadavg               lngt: 9       
@88     pointer_type     size: @49      algn: 32       ptd : @36     
@89     parm_decl        name: @116     type: @33      srcp: stdlib.h:963    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@90     addr_expr        type: @117     op 0: @118    
@91     tree_list        valu: @119     chan: @120    
@92     result_decl      type: @27      scpe: @7       srcp: structs.cpp:14     
                         note: artificial              size: @49     
                         algn: 32      
@93     identifier_node  strg: int      lngt: 3       
@94     identifier_node  strg: double   lngt: 6       
@95     type_decl        name: @121     type: @68      srcp: <built-in>:0      
                         note: artificial 
@96     integer_cst      type: @68      high: -1       low : -128    
@97     integer_cst      type: @68      low : 127     
@98     identifier_node  strg: str      lngt: 3       
@99     type_decl        name: @122     type: @10      scpe: @10     
                         srcp: structs.cpp:3           note: artificial 
@100    integer_cst      type: @21      low : 96      
@101    integer_type     qual: c        name: @95      unql: @68     
                         size: @9       algn: 8        prec: 8       
                         sign: signed   min : @96      max : @97     
@102    string_cst       type: @123    strg: Hi there, Mr A  lngt: 15      
@103    integer_cst      type: @124     low : 0       
@104    integer_cst      type: @124     low : 1       
@105    tree_list        valu: @110     chan: @11     
@106    identifier_node  strg: __comp_ctor             lngt: 12      
@107    function_decl    name: @28      type: @125     scpe: @10     
                         srcp: structs.cpp:10          note: artificial 
                         chan: @126     note: member   accs: pub     
                         note: constructor             args: @127    
                         link: extern  
@108    parm_decl        name: @79      type: @80      scpe: @77     
                         srcp: structs.cpp:27          note: artificial 
                         chan: @128     argt: @80      size: @49     
                         algn: 32       used: 0       
@109    parm_decl        type: @110     scpe: @51      srcp: structs.cpp:27     
                         argt: @110     size: @49      algn: 32      
                         used: 0       
@110    reference_type   size: @49      algn: 32       refd: @129    
@111    tree_list        valu: @33      chan: @11     
@112    identifier_node  strg: ptsname_r               lngt: 9       
@113    function_type    size: @9       algn: 8        retn: @33     
                         prms: @130    
@114    function_decl    name: @131     type: @132     srcp: stdlib.h:944    
                         chan: @133     lang: C        args: @134    
                         body: undefined               link: extern  
@115    parm_decl        name: @135     type: @33      srcp: stdlib.h:952    
                         chan: @136     argt: @33      size: @49     
                         algn: 32       used: 0       
@116    identifier_node  strg: __nelem  lngt: 7       
@117    pointer_type     size: @49      algn: 32       ptd : @137    
@118    function_decl    name: @138     type: @137     srcp: stdlib.h:592    
                         chan: @139     lang: C        args: @140    
                         body: undefined               link: extern  
@119    integer_cst      type: @141     low : 1       
@120    tree_list        valu: @142    
@121    identifier_node  strg: char     lngt: 4       
@122    identifier_node  strg: ._20     lngt: 4       
@123    array_type       qual: c        unql: @143     size: @144    
                         algn: 8        elts: @101     domn: @145    
@124    integer_type     name: @146     size: @49      algn: 32      
                         prec: 32       sign: unsigned min : @147    
                         max : @148    
@125    method_type      unql: @149     size: @9       algn: 8       
                         clas: @10      retn: @26      prms: @150    
@126    function_decl    name: @76      orig: @107     type: @125    
                         scpe: @10      srcp: structs.cpp:10     
                         note: artificial              chan: @151    
                         note: member   accs: pub      note: constructor 
                         args: @152     link: extern  
@127    parm_decl        name: @79      type: @80      srcp: structs.cpp:27     
                         note: artificial              argt: @80     
                         size: @49      algn: 32       used: 0       
@128    parm_decl        type: @110     scpe: @77      srcp: structs.cpp:27     
                         argt: @110     size: @49      algn: 32      
                         used: 0       
@129    record_type      qual: c        name: @15      unql: @10     
                         size: @22      algn: 32       tag : struct  
                         flds: @23      fncs: @107     binf: @25     
@130    tree_list        valu: @33      chan: @153    
@131    identifier_node  strg: ptsname  lngt: 7       
@132    function_type    unql: @154     size: @9       algn: 8       
                         retn: @39      prms: @155    
@133    function_decl    name: @156     type: @157     srcp: stdlib.h:939    
                         chan: @158     lang: C        args: @159    
                         body: undefined               link: extern  
@134    parm_decl        name: @135     type: @33      srcp: stdlib.h:944    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@135    identifier_node  strg: __fd     lngt: 4       
@136    parm_decl        name: @160     type: @39      srcp: stdlib.h:952    
                         chan: @161     argt: @39      size: @49     
                         algn: 32       used: 0       
@137    function_type    unql: @162     size: @9       algn: 8       
                         retn: @58      prms: @163    
@138    identifier_node  strg: calloc   lngt: 6       
@139    function_decl    name: @164     mngl: @138     type: @165    
                         srcp: <built-in>:0            note: artificial 
                         chan: @166     lang: C        body: undefined 
                         link: extern  
@140    parm_decl        name: @167     type: @141     srcp: stdlib.h:592    
                         chan: @168     argt: @141     size: @49     
                         algn: 32       used: 0       
@141    integer_type     name: @169     unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@142    integer_cst      type: @170     low : 16      
@143    array_type       size: @144     algn: 8        elts: @68     
                         domn: @145    
@144    integer_cst      type: @21      low : 120     
@145    integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @171    
@146    type_decl        name: @172     type: @170     srcp: <built-in>:0      
                         note: artificial 
@147    integer_cst      type: @170     low : 0       
@148    integer_cst      type: @170     low : -1      
@149    method_type      size: @9       algn: 8        clas: @10     
                         retn: @26      prms: @150    
@150    tree_list        valu: @27      chan: @11     
@151    function_decl    name: @106     orig: @107     type: @125    
                         scpe: @10      srcp: structs.cpp:10     
                         note: artificial              note: member  
                         accs: pub      note: constructor 
                         args: @173     link: extern  
@152    parm_decl        name: @79      type: @80      scpe: @126    
                         srcp: structs.cpp:27          note: artificial 
                         argt: @80      size: @49      algn: 32      
                         used: 0       
@153    tree_list        valu: @39      chan: @174    
@154    function_type    size: @9       algn: 8        retn: @39     
                         prms: @155    
@155    tree_list        valu: @33      chan: @11     
@156    identifier_node  strg: unlockpt lngt: 8       
@157    function_type    unql: @175     size: @9       algn: 8       
                         retn: @33      prms: @176    
@158    function_decl    name: @177     type: @157     srcp: stdlib.h:935    
                         chan: @178     lang: C        args: @179    
                         body: undefined               link: extern  
@159    parm_decl        name: @135     type: @33      srcp: stdlib.h:939    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@160    identifier_node  strg: __buf    lngt: 5       
@161    parm_decl        name: @180     type: @141     srcp: stdlib.h:952    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@162    function_type    size: @9       algn: 8        retn: @58     
                         prms: @163    
@163    tree_list        valu: @141     chan: @181    
@164    identifier_node  strg: __builtin_calloc        lngt: 16      
@165    function_type    size: @9       algn: 8        retn: @58     
                         prms: @182    
@166    function_decl    name: @183     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @184    
                         lang: C        body: undefined 
                         link: extern  
@167    identifier_node  strg: __nmemb  lngt: 7       
@168    parm_decl        name: @185     type: @141     srcp: stdlib.h:592    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@169    type_decl        name: @186     type: @141     srcp: stddef.h:214    
                         chan: @187    
@170    integer_type     name: @146     size: @49      algn: 32      
                         prec: 32       sign: unsigned min : @147    
                         max : @148    
@171    integer_cst      type: @124     low : 14      
@172    identifier_node  strg: unsigned int            lngt: 12      
@173    parm_decl        name: @79      type: @80      scpe: @151    
                         srcp: structs.cpp:27          note: artificial 
                         argt: @80      size: @49      algn: 32      
                         used: 0       
@174    tree_list        valu: @141     chan: @11     
@175    function_type    size: @9       algn: 8        retn: @33     
                         prms: @176    
@176    tree_list        valu: @33      chan: @11     
@177    identifier_node  strg: grantpt  lngt: 7       
@178    function_decl    name: @188     type: @175     srcp: stdlib.h:927    
                         chan: @189     lang: C        args: @190    
                         body: undefined               link: extern  
@179    parm_decl        name: @135     type: @33      srcp: stdlib.h:935    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@180    identifier_node  strg: __buflen lngt: 8       
@181    tree_list        valu: @141     chan: @11     
@182    tree_list        valu: @170     chan: @191    
@183    identifier_node  strg: __builtin_args_info     lngt: 19      
@184    function_decl    name: @192     type: @193     srcp: <built-in>:0      
                         note: artificial              chan: @194    
                         lang: C        body: undefined 
                         link: extern  
@185    identifier_node  strg: __size   lngt: 6       
@186    identifier_node  strg: size_t   lngt: 6       
@187    function_decl    name: @195     type: @196     srcp: <built-in>:0      
                         note: artificial              chan: @197    
                         lang: C        body: undefined 
                         link: extern  
@188    identifier_node  strg: posix_openpt            lngt: 12      
@189    function_decl    name: @198     type: @199     srcp: stdlib.h:919    
                         chan: @200     lang: C        args: @201    
                         body: undefined               link: extern  
@190    parm_decl        name: @202     type: @33      srcp: stdlib.h:927    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@191    tree_list        valu: @170     chan: @11     
@192    identifier_node  strg: __builtin_apply_args    lngt: 20      
@193    function_type    size: @9       algn: 8        retn: @58     
@194    function_decl    name: @203     type: @204     srcp: <built-in>:0      
                         note: artificial              chan: @205    
                         lang: C        body: undefined 
                         link: extern  
@195    identifier_node  strg: __cxa_call_unexpected   lngt: 21      
@196    function_type    size: @9       algn: 8        retn: @26     
                         prms: @206    
@197    function_decl    name: @207     type: @208     srcp: <built-in>:0      
                         note: artificial              chan: @209    
                         note: operator vecdelete      body: undefined 
                         link: extern  
@198    identifier_node  strg: setkey   lngt: 6       
@199    function_type    size: @9       algn: 8        retn: @26     
                         prms: @210    
@200    function_decl    name: @211     type: @212     srcp: stdlib.h:913    
                         chan: @213     lang: C        args: @214    
                         body: undefined               link: extern  
@201    parm_decl        name: @215     type: @70      srcp: stdlib.h:919    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@202    identifier_node  strg: __oflag  lngt: 7       
@203    identifier_node  strg: __builtin_apply         lngt: 15      
@204    function_type    size: @9       algn: 8        retn: @58     
                         prms: @216    
@205    function_decl    name: @217     type: @218     srcp: alloca.h:33     
                         chan: @219     lang: C        args: @220    
                         body: undefined               link: extern  
@206    tree_list        valu: @58      chan: @11     
@207    identifier_node  note: operator 
@208    function_type    unql: @196     size: @9       algn: 8       
                         retn: @26      prms: @206    
@209    function_decl    name: @221     type: @208     srcp: <built-in>:0      
                         note: artificial              chan: @222    
                         note: operator delete         body: undefined 
                         link: extern  
@210    tree_list        valu: @70      chan: @11     
@211    identifier_node  strg: getsubopt               lngt: 9       
@212    function_type    size: @9       algn: 8        retn: @33     
                         prms: @223    
@213    function_decl    name: @224     type: @225     srcp: stdlib.h:899    
                         chan: @226     lang: C        args: @227    
                         body: undefined               link: extern  
@214    parm_decl        name: @228     type: @229     srcp: stdlib.h:913    
                         chan: @230     argt: @229     size: @49     
                         algn: 32       used: 0       
@215    identifier_node  strg: __key    lngt: 5       
@216    tree_list        valu: @231     chan: @232    
@217    identifier_node  strg: alloca   lngt: 6       
@218    function_type    unql: @233     size: @9       algn: 8       
                         retn: @58      prms: @234    
@219    function_decl    name: @235     mngl: @217     type: @236    
                         srcp: <built-in>:0            note: artificial 
                         chan: @237     lang: C        body: undefined 
                         link: extern  
@220    parm_decl        name: @185     type: @141     srcp: alloca.h:33     
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@221    identifier_node  note: operator 
@222    function_decl    name: @238     type: @239     srcp: <built-in>:0      
                         note: artificial              chan: @240    
                         note: operator vecnew         body: undefined 
                         link: extern  
@223    tree_list        valu: @241     chan: @242    
@224    identifier_node  strg: rpmatch  lngt: 7       
@225    function_type    size: @9       algn: 8        retn: @33     
                         prms: @243    
@226    function_decl    name: @244     type: @245     srcp: stdlib.h:890    
                         chan: @246     lang: C        args: @247    
                         body: undefined               link: extern  
@227    parm_decl        name: @248     type: @70      srcp: stdlib.h:899    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@228    identifier_node  strg: __optionp               lngt: 9       
@229    pointer_type     qual:   r      unql: @241     size: @49     
                         algn: 32       ptd : @39     
@230    parm_decl        name: @249     type: @250     srcp: stdlib.h:913    
                         chan: @251     argt: @250     size: @49     
                         algn: 32       used: 0       
@231    pointer_type     size: @49      algn: 32       ptd : @252    
@232    tree_list        valu: @58      chan: @253    
@233    function_type    size: @9       algn: 8        retn: @58     
                         prms: @234    
@234    tree_list        valu: @141     chan: @11     
@235    identifier_node  strg: __builtin_alloca        lngt: 16      
@236    function_type    size: @9       algn: 8        retn: @58     
                         prms: @254    
@237    function_decl    name: @255     type: @193     srcp: <built-in>:0      
                         note: artificial              chan: @256    
                         lang: C        body: undefined 
                         link: extern  
@238    identifier_node  note: operator 
@239    function_type    unql: @236     size: @9       algn: 8       
                         retn: @58      prms: @254    
@240    function_decl    name: @257     type: @239     srcp: <built-in>:0      
                         note: artificial              chan: @258    
                         note: operator new            body: undefined 
                         link: extern  
@241    pointer_type     size: @49      algn: 32       ptd : @39     
@242    tree_list        valu: @259     chan: @260    
@243    tree_list        valu: @70      chan: @11     
@244    identifier_node  strg: wcstombs lngt: 8       
@245    function_type    unql: @261     size: @9       algn: 8       
                         retn: @141     prms: @262    
@246    function_decl    name: @263     type: @264     srcp: stdlib.h:886    
                         chan: @265     lang: C        args: @266    
                         body: undefined               link: extern  
@247    parm_decl        name: @267     type: @268     srcp: stdlib.h:890    
                         chan: @269     argt: @268     size: @49     
                         algn: 32       used: 0       
@248    identifier_node  strg: __response              lngt: 10      
@249    identifier_node  strg: __tokens lngt: 8       
@250    pointer_type     qual:   r      unql: @259     size: @49     
                         algn: 32       ptd : @270    
@251    parm_decl        name: @271     type: @229     srcp: stdlib.h:913    
                         argt: @229     size: @49      algn: 32      
                         used: 0       
@252    function_type    size: @9       algn: 8        retn: @26     
@253    tree_list        valu: @170     chan: @11     
@254    tree_list        valu: @170     chan: @11     
@255    identifier_node  strg: __builtin_aggregate_incoming_address 
                         lngt: 36      
@256    function_decl    name: @272     type: @157     srcp: stdlib.h:786    
                         chan: @273     lang: C        args: @274    
                         body: undefined               link: extern  
@257    identifier_node  note: operator 
@258    type_decl        name: @275     type: @276     srcp: <built-in>:0      
                         chan: @277    
@259    pointer_type     size: @49      algn: 32       ptd : @270    
@260    tree_list        valu: @241     chan: @11     
@261    function_type    size: @9       algn: 8        retn: @141    
                         prms: @262    
@262    tree_list        valu: @39      chan: @278    
@263    identifier_node  strg: mbstowcs lngt: 8       
@264    function_type    unql: @279     size: @9       algn: 8       
                         retn: @141     prms: @280    
@265    function_decl    name: @281     type: @282     srcp: stdlib.h:881    
                         chan: @283     lang: C        args: @284    
                         body: undefined               link: extern  
@266    parm_decl        name: @285     type: @286     srcp: stdlib.h:886    
                         chan: @287     argt: @286     size: @49     
                         algn: 32       used: 0       
@267    identifier_node  strg: __s      lngt: 3       
@268    pointer_type     qual:   r      unql: @39      size: @49     
                         algn: 32       ptd : @68     
@269    parm_decl        name: @285     type: @288     srcp: stdlib.h:890    
                         chan: @289     argt: @288     size: @49     
                         algn: 32       used: 0       
@270    pointer_type     qual: c        unql: @39      size: @49     
                         algn: 32       ptd : @68     
@271    identifier_node  strg: __valuep lngt: 8       
@272    identifier_node  strg: abs      lngt: 3       
@273    function_decl    name: @290     mngl: @272     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @291     lang: C        body: undefined 
                         link: extern  
@274    parm_decl        name: @292     type: @33      srcp: stdlib.h:786    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@275    identifier_node  strg: global type             lngt: 11      
@276    lang_type        name: @258     algn: 1       
@277    type_decl        name: @293     type: @294     srcp: <built-in>:0      
                         chan: @295    
@278    tree_list        valu: @296     chan: @297    
@279    function_type    size: @9       algn: 8        retn: @141    
                         prms: @280    
@280    tree_list        valu: @298     chan: @299    
@281    identifier_node  strg: wctomb   lngt: 6       
@282    function_type    unql: @300     size: @9       algn: 8       
                         retn: @33      prms: @301    
@283    function_decl    name: @302     type: @303     srcp: stdlib.h:878    
                         chan: @304     lang: C        args: @305    
                         body: undefined               link: extern  
@284    parm_decl        name: @267     type: @39      srcp: stdlib.h:881    
                         chan: @306     argt: @39      size: @49     
                         algn: 32       used: 0       
@285    identifier_node  strg: __pwcs   lngt: 6       
@286    pointer_type     qual:   r      unql: @298     size: @49     
                         algn: 32       ptd : @307    
@287    parm_decl        name: @267     type: @308     srcp: stdlib.h:886    
                         chan: @309     argt: @308     size: @49     
                         algn: 32       used: 0       
@288    pointer_type     qual:   r      unql: @296     size: @49     
                         algn: 32       ptd : @310    
@289    parm_decl        name: @311     type: @141     srcp: stdlib.h:890    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@290    identifier_node  strg: __builtin_abs           lngt: 13      
@291    function_decl    name: @312     type: @313     srcp: stdlib.h:628    
                         chan: @314     lang: C        body: undefined 
                         link: extern  
@292    identifier_node  strg: __x      lngt: 3       
@293    identifier_node  strg: unknown type            lngt: 12      
@294    lang_type        name: @277     algn: 1       
@295    function_decl    name: @315     type: @316     srcp: <built-in>:0      
                         note: artificial              chan: @317    
                         lang: C        body: undefined 
                         link: extern  
@296    pointer_type     size: @49      algn: 32       ptd : @310    
@297    tree_list        valu: @141     chan: @11     
@298    pointer_type     size: @49      algn: 32       ptd : @307    
@299    tree_list        valu: @70      chan: @318    
@300    function_type    size: @9       algn: 8        retn: @33     
                         prms: @301    
@301    tree_list        valu: @39      chan: @319    
@302    identifier_node  strg: mbtowc   lngt: 6       
@303    function_type    unql: @320     size: @9       algn: 8       
                         retn: @33      prms: @321    
@304    function_decl    name: @322     type: @323     srcp: stdlib.h:874    
                         chan: @324     lang: C        args: @325    
                         body: undefined               link: extern  
@305    parm_decl        name: @326     type: @286     srcp: stdlib.h:878    
                         chan: @327     argt: @286     size: @49     
                         algn: 32       used: 0       
@306    parm_decl        name: @328     type: @307     srcp: stdlib.h:881    
                         argt: @307     size: @49      algn: 32      
                         used: 0       
@307    integer_type     name: @329     size: @49      algn: 32      
                         prec: 32       sign: signed   min : @330    
                         max : @331    
@308    pointer_type     qual:   r      unql: @70      size: @49     
                         algn: 32       ptd : @101    
@309    parm_decl        name: @311     type: @141     srcp: stdlib.h:886    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@310    integer_type     qual: c        name: @329     unql: @307    
                         size: @49      algn: 32       prec: 32      
                         sign: signed   min : @330     max : @331    
@311    identifier_node  strg: __n      lngt: 3       
@312    identifier_node  strg: abort    lngt: 5       
@313    function_type    unql: @332     size: @9       algn: 8       
                         retn: @26      prms: @11     
@314    function_decl    name: @333     mngl: @312     type: @332    
                         srcp: <built-in>:0            note: artificial 
                         chan: @334     lang: C        body: undefined 
                         link: extern  
@315    identifier_node  strg: __divxc3 lngt: 8       
@316    function_type    size: @9       algn: 8        retn: @335    
                         prms: @336    
@317    function_decl    name: @337     type: @316     srcp: <built-in>:0      
                         note: artificial              chan: @338    
                         lang: C        body: undefined 
                         link: extern  
@318    tree_list        valu: @141     chan: @11     
@319    tree_list        valu: @307     chan: @11     
@320    function_type    size: @9       algn: 8        retn: @33     
                         prms: @321    
@321    tree_list        valu: @298     chan: @339    
@322    identifier_node  strg: mblen    lngt: 5       
@323    function_type    unql: @340     size: @9       algn: 8       
                         retn: @33      prms: @341    
@324    function_decl    name: @342     type: @343     srcp: stdlib.h:866    
                         chan: @344     lang: C        args: @345    
                         body: undefined               link: extern  
@325    parm_decl        name: @267     type: @70      srcp: stdlib.h:874    
                         chan: @346     argt: @70      size: @49     
                         algn: 32       used: 0       
@326    identifier_node  strg: __pwc    lngt: 5       
@327    parm_decl        name: @267     type: @308     srcp: stdlib.h:878    
                         chan: @347     argt: @308     size: @49     
                         algn: 32       used: 0       
@328    identifier_node  strg: __wchar  lngt: 7       
@329    type_decl        name: @348     type: @307     srcp: <built-in>:0      
                         note: artificial 
@330    integer_cst      type: @307     high: -1       low : -2147483648 
@331    integer_cst      type: @307     low : 2147483647 
@332    function_type    size: @9       algn: 8        retn: @26     
                         prms: @11     
@333    identifier_node  strg: __builtin_abort         lngt: 15      
@334    function_decl    name: @349     type: @350     srcp: <built-in>:0      
                         note: artificial              chan: @351    
                         lang: C        body: undefined 
                         link: extern  
@335    complex_type     name: @352     size: @353     algn: 32      
@336    tree_list        valu: @354     chan: @355    
@337    identifier_node  strg: __mulxc3 lngt: 8       
@338    function_decl    name: @356     type: @357     srcp: <built-in>:0      
                         note: artificial              chan: @358    
                         lang: C        body: undefined 
                         link: extern  
@339    tree_list        valu: @70      chan: @359    
@340    function_type    size: @9       algn: 8        retn: @33     
                         prms: @341    
@341    tree_list        valu: @70      chan: @360    
@342    identifier_node  strg: qfcvt_r  lngt: 7       
@343    function_type    size: @9       algn: 8        retn: @33     
                         prms: @361    
@344    function_decl    name: @362     type: @363     srcp: stdlib.h:862    
                         chan: @364     lang: C        args: @365    
                         body: undefined               link: extern  
@345    parm_decl        name: @366     type: @354     srcp: stdlib.h:866    
                         chan: @367     argt: @354     size: @100    
                         algn: 32       used: 0       
@346    parm_decl        name: @311     type: @141     srcp: stdlib.h:874    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@347    parm_decl        name: @311     type: @141     srcp: stdlib.h:878    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@348    identifier_node  strg: wchar_t  lngt: 7       
@349    identifier_node  strg: towupper lngt: 8       
@350    function_type    size: @9       algn: 8        retn: @170    
                         prms: @368    
@351    function_decl    name: @369     mngl: @349     type: @350    
                         srcp: <built-in>:0            note: artificial 
                         chan: @370     lang: C        body: undefined 
                         link: extern  
@352    type_decl        name: @371     type: @335     srcp: <built-in>:0      
                         chan: @372    
@353    integer_cst      type: @21      low : 192     
@354    real_type        name: @373     size: @100     algn: 32      
                         prec: 80      
@355    tree_list        valu: @354     chan: @374    
@356    identifier_node  strg: __divdc3 lngt: 8       
@357    function_type    size: @9       algn: 8        retn: @375    
                         prms: @376    
@358    function_decl    name: @377     type: @357     srcp: <built-in>:0      
                         note: artificial              chan: @378    
                         lang: C        body: undefined 
                         link: extern  
@359    tree_list        valu: @141     chan: @11     
@360    tree_list        valu: @141     chan: @11     
@361    tree_list        valu: @354     chan: @379    
@362    identifier_node  strg: qecvt_r  lngt: 7       
@363    function_type    size: @9       algn: 8        retn: @33     
                         prms: @361    
@364    function_decl    name: @380     type: @381     srcp: stdlib.h:857    
                         chan: @382     lang: C        args: @383    
                         body: undefined               link: extern  
@365    parm_decl        name: @366     type: @354     srcp: stdlib.h:862    
                         chan: @384     argt: @354     size: @100    
                         algn: 32       used: 0       
@366    identifier_node  strg: __value  lngt: 7       
@367    parm_decl        name: @385     type: @33      srcp: stdlib.h:866    
                         chan: @386     argt: @33      size: @49     
                         algn: 32       used: 0       
@368    tree_list        valu: @170     chan: @11     
@369    identifier_node  strg: __builtin_towupper      lngt: 18      
@370    function_decl    name: @387     type: @350     srcp: <built-in>:0      
                         note: artificial              chan: @388    
                         lang: C        body: undefined 
                         link: extern  
@371    identifier_node  strg: complex long double     lngt: 19      
@372    type_decl        name: @389     type: @375     srcp: <built-in>:0      
                         chan: @390    
@373    type_decl        name: @391     type: @354     srcp: <built-in>:0      
                         note: artificial 
@374    tree_list        valu: @354     chan: @392    
@375    complex_type     name: @372     size: @22      algn: 64      
@376    tree_list        valu: @36      chan: @393    
@377    identifier_node  strg: __muldc3 lngt: 8       
@378    function_decl    name: @394     type: @395     srcp: <built-in>:0      
                         note: artificial              chan: @396    
                         lang: C        body: undefined 
                         link: extern  
@379    tree_list        valu: @33      chan: @397    
@380    identifier_node  strg: fcvt_r   lngt: 6       
@381    function_type    size: @9       algn: 8        retn: @33     
                         prms: @398    
@382    function_decl    name: @399     type: @400     srcp: stdlib.h:854    
                         chan: @401     lang: C        args: @402    
                         body: undefined               link: extern  
@383    parm_decl        name: @366     type: @36      srcp: stdlib.h:857    
                         chan: @403     argt: @36      size: @44     
                         algn: 64       used: 0       
@384    parm_decl        name: @385     type: @33      srcp: stdlib.h:862    
                         chan: @404     argt: @33      size: @49     
                         algn: 32       used: 0       
@385    identifier_node  strg: __ndigit lngt: 8       
@386    parm_decl        name: @405     type: @406     srcp: stdlib.h:866    
                         chan: @407     argt: @406     size: @49     
                         algn: 32       used: 0       
@387    identifier_node  strg: towlower lngt: 8       
@388    function_decl    name: @408     mngl: @387     type: @350    
                         srcp: <built-in>:0            note: artificial 
                         chan: @409     lang: C        body: undefined 
                         link: extern  
@389    identifier_node  strg: complex double          lngt: 14      
@390    type_decl        name: @410     type: @411     srcp: <built-in>:0      
                         chan: @412    
@391    identifier_node  strg: long double             lngt: 11      
@392    tree_list        valu: @354     chan: @11     
@393    tree_list        valu: @36      chan: @413    
@394    identifier_node  strg: __divsc3 lngt: 8       
@395    function_type    size: @9       algn: 8        retn: @411    
                         prms: @414    
@396    function_decl    name: @415     type: @395     srcp: <built-in>:0      
                         note: artificial              chan: @416    
                         lang: C        body: undefined 
                         link: extern  
@397    tree_list        valu: @417     chan: @418    
@398    tree_list        valu: @36      chan: @419    
@399    identifier_node  strg: ecvt_r   lngt: 6       
@400    function_type    size: @9       algn: 8        retn: @33     
                         prms: @398    
@401    function_decl    name: @420     type: @421     srcp: stdlib.h:847    
                         chan: @422     lang: C        args: @423    
                         body: undefined               link: extern  
@402    parm_decl        name: @366     type: @36      srcp: stdlib.h:854    
                         chan: @424     argt: @36      size: @44     
                         algn: 64       used: 0       
@403    parm_decl        name: @385     type: @33      srcp: stdlib.h:857    
                         chan: @425     argt: @33      size: @49     
                         algn: 32       used: 0       
@404    parm_decl        name: @405     type: @406     srcp: stdlib.h:862    
                         chan: @426     argt: @406     size: @49     
                         algn: 32       used: 0       
@405    identifier_node  strg: __decpt  lngt: 7       
@406    pointer_type     qual:   r      unql: @417     size: @49     
                         algn: 32       ptd : @33     
@407    parm_decl        name: @427     type: @406     srcp: stdlib.h:866    
                         chan: @428     argt: @406     size: @49     
                         algn: 32       used: 0       
@408    identifier_node  strg: __builtin_towlower      lngt: 18      
@409    function_decl    name: @429     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @431    
                         lang: C        body: undefined 
                         link: extern  
@410    identifier_node  strg: complex float           lngt: 13      
@411    complex_type     name: @390     size: @44      algn: 32      
@412    type_decl        name: @432     type: @433     srcp: <built-in>:0      
                         chan: @434    
@413    tree_list        valu: @36      chan: @435    
@414    tree_list        valu: @436     chan: @437    
@415    identifier_node  strg: __mulsc3 lngt: 8       
@416    function_decl    name: @438     mngl: @439     type: @332    
                         srcp: <built-in>:0            note: artificial 
                         chan: @440     lang: C        body: undefined 
                         link: extern  
@417    pointer_type     size: @49      algn: 32       ptd : @33     
@418    tree_list        valu: @417     chan: @441    
@419    tree_list        valu: @33      chan: @442    
@420    identifier_node  strg: qgcvt    lngt: 5       
@421    function_type    size: @9       algn: 8        retn: @39     
                         prms: @443    
@422    function_decl    name: @444     type: @445     srcp: stdlib.h:845    
                         chan: @446     lang: C        args: @447    
                         body: undefined               link: extern  
@423    parm_decl        name: @366     type: @354     srcp: stdlib.h:847    
                         chan: @448     argt: @354     size: @100    
                         algn: 32       used: 0       
@424    parm_decl        name: @385     type: @33      srcp: stdlib.h:854    
                         chan: @449     argt: @33      size: @49     
                         algn: 32       used: 0       
@425    parm_decl        name: @405     type: @406     srcp: stdlib.h:857    
                         chan: @450     argt: @406     size: @49     
                         algn: 32       used: 0       
@426    parm_decl        name: @427     type: @406     srcp: stdlib.h:862    
                         chan: @451     argt: @406     size: @49     
                         algn: 32       used: 0       
@427    identifier_node  strg: __sign   lngt: 6       
@428    parm_decl        name: @160     type: @268     srcp: stdlib.h:866    
                         chan: @452     argt: @268     size: @49     
                         algn: 32       used: 0       
@429    identifier_node  strg: iswxdigit               lngt: 9       
@430    function_type    size: @9       algn: 8        retn: @33     
                         prms: @453    
@431    function_decl    name: @454     mngl: @429     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @455     lang: C        body: undefined 
                         link: extern  
@432    identifier_node  strg: complex int             lngt: 11      
@433    complex_type     name: @412     size: @44      algn: 32      
@434    type_decl        type: @456     srcp: <built-in>:0      
                         chan: @457    
@435    tree_list        valu: @36      chan: @11     
@436    real_type        name: @458     size: @49      algn: 32      
                         prec: 32      
@437    tree_list        valu: @436     chan: @459    
@438    identifier_node  strg: __builtin_profile_func_exit 
                         lngt: 27      
@439    identifier_node  strg: profile_func_exit       lngt: 17      
@440    function_decl    name: @460     mngl: @461     type: @332    
                         srcp: <built-in>:0            note: artificial 
                         chan: @462     lang: C        body: undefined 
                         link: extern  
@441    tree_list        valu: @39      chan: @463    
@442    tree_list        valu: @417     chan: @464    
@443    tree_list        valu: @354     chan: @465    
@444    identifier_node  strg: qfcvt    lngt: 5       
@445    function_type    size: @9       algn: 8        retn: @39     
                         prms: @466    
@446    function_decl    name: @467     type: @468     srcp: stdlib.h:842    
                         chan: @469     lang: C        args: @470    
                         body: undefined               link: extern  
@447    parm_decl        name: @366     type: @354     srcp: stdlib.h:845    
                         chan: @471     argt: @354     size: @100    
                         algn: 32       used: 0       
@448    parm_decl        name: @385     type: @33      srcp: stdlib.h:847    
                         chan: @472     argt: @33      size: @49     
                         algn: 32       used: 0       
@449    parm_decl        name: @405     type: @406     srcp: stdlib.h:854    
                         chan: @473     argt: @406     size: @49     
                         algn: 32       used: 0       
@450    parm_decl        name: @427     type: @406     srcp: stdlib.h:857    
                         chan: @474     argt: @406     size: @49     
                         algn: 32       used: 0       
@451    parm_decl        name: @160     type: @268     srcp: stdlib.h:862    
                         chan: @475     argt: @268     size: @49     
                         algn: 32       used: 0       
@452    parm_decl        name: @476     type: @141     srcp: stdlib.h:866    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@453    tree_list        valu: @170     chan: @11     
@454    identifier_node  strg: __builtin_iswxdigit     lngt: 19      
@455    function_decl    name: @477     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @478    
                         lang: C        body: undefined 
                         link: extern  
@456    integer_type     size: @44      algn: 64       prec: 64      
                         sign: unsigned min : @479     max : @480    
@457    type_decl        type: @481     srcp: <built-in>:0      
                         chan: @482    
@458    type_decl        name: @483     type: @436     srcp: <built-in>:0      
                         note: artificial 
@459    tree_list        valu: @436     chan: @484    
@460    identifier_node  strg: __builtin_profile_func_enter 
                         lngt: 28      
@461    identifier_node  strg: profile_func_enter      lngt: 18      
@462    function_decl    name: @485     type: @196     srcp: <built-in>:0      
                         note: artificial              chan: @486    
                         lang: C        body: undefined 
                         link: extern  
@463    tree_list        valu: @141     chan: @11     
@464    tree_list        valu: @417     chan: @487    
@465    tree_list        valu: @33      chan: @488    
@466    tree_list        valu: @354     chan: @489    
@467    identifier_node  strg: qecvt    lngt: 5       
@468    function_type    size: @9       algn: 8        retn: @39     
                         prms: @466    
@469    function_decl    name: @490     type: @491     srcp: stdlib.h:835    
                         chan: @492     lang: C        args: @493    
                         body: undefined               link: extern  
@470    parm_decl        name: @366     type: @354     srcp: stdlib.h:842    
                         chan: @494     argt: @354     size: @100    
                         algn: 32       used: 0       
@471    parm_decl        name: @385     type: @33      srcp: stdlib.h:845    
                         chan: @495     argt: @33      size: @49     
                         algn: 32       used: 0       
@472    parm_decl        name: @160     type: @39      srcp: stdlib.h:847    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@473    parm_decl        name: @427     type: @406     srcp: stdlib.h:854    
                         chan: @496     argt: @406     size: @49     
                         algn: 32       used: 0       
@474    parm_decl        name: @160     type: @268     srcp: stdlib.h:857    
                         chan: @497     argt: @268     size: @49     
                         algn: 32       used: 0       
@475    parm_decl        name: @476     type: @141     srcp: stdlib.h:862    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@476    identifier_node  strg: __len    lngt: 5       
@477    identifier_node  strg: iswupper lngt: 8       
@478    function_decl    name: @498     mngl: @477     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @499     lang: C        body: undefined 
                         link: extern  
@479    integer_cst      type: @456     low : 0       
@480    integer_cst      type: @456     high: -1       low : -1      
@481    integer_type     size: @44      algn: 64       prec: 64      
                         sign: signed   min : @500     max : @501    
@482    type_decl        type: @502     srcp: <built-in>:0      
                         chan: @503    
@483    identifier_node  strg: float    lngt: 5       
@484    tree_list        valu: @436     chan: @11     
@485    identifier_node  strg: __builtin_stack_restore lngt: 23      
@486    function_decl    name: @504     type: @505     srcp: <built-in>:0      
                         note: artificial              chan: @506    
                         lang: C        body: undefined 
                         link: extern  
@487    tree_list        valu: @39      chan: @507    
@488    tree_list        valu: @39      chan: @11     
@489    tree_list        valu: @33      chan: @508    
@490    identifier_node  strg: gcvt     lngt: 4       
@491    function_type    size: @9       algn: 8        retn: @39     
                         prms: @509    
@492    function_decl    name: @510     type: @511     srcp: stdlib.h:829    
                         chan: @512     lang: C        args: @513    
                         body: undefined               link: extern  
@493    parm_decl        name: @366     type: @36      srcp: stdlib.h:835    
                         chan: @514     argt: @36      size: @44     
                         algn: 64       used: 0       
@494    parm_decl        name: @385     type: @33      srcp: stdlib.h:842    
                         chan: @515     argt: @33      size: @49     
                         algn: 32       used: 0       
@495    parm_decl        name: @405     type: @406     srcp: stdlib.h:845    
                         chan: @516     argt: @406     size: @49     
                         algn: 32       used: 0       
@496    parm_decl        name: @160     type: @268     srcp: stdlib.h:854    
                         chan: @517     argt: @268     size: @49     
                         algn: 32       used: 0       
@497    parm_decl        name: @476     type: @141     srcp: stdlib.h:857    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@498    identifier_node  strg: __builtin_iswupper      lngt: 18      
@499    function_decl    name: @518     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @519    
                         lang: C        body: undefined 
                         link: extern  
@500    integer_cst      type: @481     high: -2147483648  low : 0       
@501    integer_cst      type: @481     high: 2147483647  low : -1      
@502    integer_type     name: @520     size: @44      algn: 64      
                         prec: 64       sign: unsigned min : @521    
                         max : @522    
@503    type_decl        type: @170     srcp: <built-in>:0      
                         chan: @523    
@504    identifier_node  strg: __builtin_stack_save    lngt: 20      
@505    function_type    size: @9       algn: 8        retn: @58     
                         prms: @11     
@506    function_decl    name: @524     type: @525     srcp: <built-in>:0      
                         note: artificial              chan: @526    
                         lang: C        body: undefined 
                         link: extern  
@507    tree_list        valu: @141     chan: @11     
@508    tree_list        valu: @417     chan: @527    
@509    tree_list        valu: @36      chan: @528    
@510    identifier_node  strg: fcvt     lngt: 4       
@511    function_type    size: @9       algn: 8        retn: @39     
                         prms: @529    
@512    function_decl    name: @530     type: @531     srcp: stdlib.h:823    
                         chan: @532     lang: C        args: @533    
                         body: undefined               link: extern  
@513    parm_decl        name: @366     type: @36      srcp: stdlib.h:829    
                         chan: @534     argt: @36      size: @44     
                         algn: 64       used: 0       
@514    parm_decl        name: @385     type: @33      srcp: stdlib.h:835    
                         chan: @535     argt: @33      size: @49     
                         algn: 32       used: 0       
@515    parm_decl        name: @405     type: @406     srcp: stdlib.h:842    
                         chan: @536     argt: @406     size: @49     
                         algn: 32       used: 0       
@516    parm_decl        name: @427     type: @406     srcp: stdlib.h:845    
                         argt: @406     size: @49      algn: 32      
                         used: 0       
@517    parm_decl        name: @476     type: @141     srcp: stdlib.h:854    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@518    identifier_node  strg: iswspace lngt: 8       
@519    function_decl    name: @537     mngl: @518     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @538     lang: C        body: undefined 
                         link: extern  
@520    type_decl        name: @539     type: @502     srcp: <built-in>:0      
                         note: artificial 
@521    integer_cst      type: @502     low : 0       
@522    integer_cst      type: @502     high: -1       low : -1      
@523    type_decl        type: @540     srcp: <built-in>:0      
                         chan: @541    
@524    identifier_node  strg: __builtin_nonlocal_goto lngt: 23      
@525    function_type    size: @9       algn: 8        retn: @26     
                         prms: @542    
@526    function_decl    name: @543     type: @544     srcp: <built-in>:0      
                         note: artificial              chan: @545    
                         lang: C        body: undefined 
                         link: extern  
@527    tree_list        valu: @417     chan: @11     
@528    tree_list        valu: @33      chan: @546    
@529    tree_list        valu: @36      chan: @547    
@530    identifier_node  strg: ecvt     lngt: 4       
@531    function_type    size: @9       algn: 8        retn: @39     
                         prms: @529    
@532    function_decl    name: @548     type: @549     srcp: stdlib.h:810    
                         chan: @550     lang: C        args: @551    
                         body: undefined               link: extern  
@533    parm_decl        name: @366     type: @36      srcp: stdlib.h:823    
                         chan: @552     argt: @36      size: @44     
                         algn: 64       used: 0       
@534    parm_decl        name: @385     type: @33      srcp: stdlib.h:829    
                         chan: @553     argt: @33      size: @49     
                         algn: 32       used: 0       
@535    parm_decl        name: @160     type: @39      srcp: stdlib.h:835    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@536    parm_decl        name: @427     type: @406     srcp: stdlib.h:842    
                         argt: @406     size: @49      algn: 32      
                         used: 0       
@537    identifier_node  strg: __builtin_iswspace      lngt: 18      
@538    function_decl    name: @554     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @555    
                         lang: C        body: undefined 
                         link: extern  
@539    identifier_node  strg: long long unsigned int  lngt: 22      
@540    integer_type     name: @556     size: @557     algn: 16      
                         prec: 16       sign: unsigned min : @558    
                         max : @559    
@541    type_decl        type: @560     srcp: <built-in>:0      
                         chan: @561    
@542    tree_list        valu: @58      chan: @562    
@543    identifier_node  strg: __builtin_adjust_trampoline 
                         lngt: 27      
@544    function_type    size: @9       algn: 8        retn: @58     
                         prms: @563    
@545    function_decl    name: @564     type: @565     srcp: <built-in>:0      
                         note: artificial              chan: @566    
                         lang: C        body: undefined 
                         link: extern  
@546    tree_list        valu: @39      chan: @11     
@547    tree_list        valu: @33      chan: @567    
@548    identifier_node  strg: lldiv    lngt: 5       
@549    function_type    unql: @568     size: @9       algn: 8       
                         retn: @569     prms: @570    
@550    function_decl    name: @571     type: @572     srcp: stdlib.h:803    
                         chan: @573     lang: C        args: @574    
                         body: undefined               link: extern  
@551    parm_decl        name: @575     type: @576     srcp: stdlib.h:810    
                         chan: @577     argt: @576     size: @44     
                         algn: 64       used: 0       
@552    parm_decl        name: @385     type: @33      srcp: stdlib.h:823    
                         chan: @578     argt: @33      size: @49     
                         algn: 32       used: 0       
@553    parm_decl        name: @405     type: @406     srcp: stdlib.h:829    
                         chan: @579     argt: @406     size: @49     
                         algn: 32       used: 0       
@554    identifier_node  strg: iswpunct lngt: 8       
@555    function_decl    name: @580     mngl: @554     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @581     lang: C        body: undefined 
                         link: extern  
@556    type_decl        name: @582     type: @540     srcp: <built-in>:0      
                         note: artificial 
@557    integer_cst      type: @21      low : 16      
@558    integer_cst      type: @540     low : 0       
@559    integer_cst      type: @540     low : 65535   
@560    integer_type     name: @583     size: @9       algn: 8       
                         prec: 8        sign: unsigned min : @584    
                         max : @585    
@561    type_decl        type: @576     srcp: <built-in>:0      
                         chan: @586    
@562    tree_list        valu: @58      chan: @11     
@563    tree_list        valu: @58      chan: @11     
@564    identifier_node  strg: __builtin_init_trampoline 
                         lngt: 25      
@565    function_type    size: @9       algn: 8        retn: @26     
                         prms: @587    
@566    function_decl    name: @588     type: @332     srcp: <built-in>:0      
                         note: artificial              chan: @589    
                         lang: C        body: undefined 
                         link: extern  
@567    tree_list        valu: @417     chan: @590    
@568    function_type    size: @9       algn: 8        retn: @569    
                         prms: @570    
@569    record_type      name: @591     size: @22      algn: 32      
                         tag : struct   flds: @592     binf: @593    
@570    tree_list        valu: @576     chan: @594    
@571    identifier_node  strg: ldiv     lngt: 4       
@572    function_type    unql: @595     size: @9       algn: 8       
                         retn: @596     prms: @597    
@573    function_decl    name: @598     type: @599     srcp: stdlib.h:801    
                         chan: @600     lang: C        args: @601    
                         body: undefined               link: extern  
@574    parm_decl        name: @575     type: @602     srcp: stdlib.h:803    
                         chan: @603     argt: @602     size: @49     
                         algn: 32       used: 0       
@575    identifier_node  strg: __numer  lngt: 7       
@576    integer_type     name: @604     size: @44      algn: 64      
                         prec: 64       sign: signed   min : @605    
                         max : @606    
@577    parm_decl        name: @607     type: @576     srcp: stdlib.h:810    
                         argt: @576     size: @44      algn: 64      
                         used: 0       
@578    parm_decl        name: @405     type: @406     srcp: stdlib.h:823    
                         chan: @608     argt: @406     size: @49     
                         algn: 32       used: 0       
@579    parm_decl        name: @427     type: @406     srcp: stdlib.h:829    
                         argt: @406     size: @49      algn: 32      
                         used: 0       
@580    identifier_node  strg: __builtin_iswpunct      lngt: 18      
@581    function_decl    name: @609     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @610    
                         lang: C        body: undefined 
                         link: extern  
@582    identifier_node  strg: short unsigned int      lngt: 18      
@583    type_decl        name: @611     type: @560     srcp: <built-in>:0      
                         note: artificial 
@584    integer_cst      type: @560     low : 0       
@585    integer_cst      type: @560     low : 255     
@586    type_decl        type: @33      srcp: <built-in>:0      
                         chan: @612    
@587    tree_list        valu: @58      chan: @613    
@588    identifier_node  strg: __sync_synchronize      lngt: 18      
@589    function_decl    name: @614     type: @615     srcp: <built-in>:0      
                         note: artificial              chan: @616    
                         lang: C        body: undefined 
                         link: extern  
@590    tree_list        valu: @417     chan: @11     
@591    type_decl        name: @617     type: @569     srcp: stdlib.h:122    
                         chan: @618    
@592    field_decl       name: @619     type: @576     scpe: @569    
                         srcp: stdlib.h:120            chan: @620    
                         accs: pub      size: @44      algn: 32      
                         bpos: @45     
@593    binfo            type: @569     bases: 0       
@594    tree_list        valu: @576     chan: @11     
@595    function_type    size: @9       algn: 8        retn: @596    
                         prms: @597    
@596    record_type      name: @618     size: @44      algn: 32      
                         tag : struct   flds: @621     binf: @622    
@597    tree_list        valu: @602     chan: @623    
@598    identifier_node  strg: div      lngt: 3       
@599    function_type    unql: @624     size: @9       algn: 8       
                         retn: @625     prms: @626    
@600    function_decl    name: @627     type: @628     srcp: stdlib.h:782    
                         chan: @629     lang: C        args: @630    
                         body: undefined               link: extern  
@601    parm_decl        name: @575     type: @33      srcp: stdlib.h:801    
                         chan: @631     argt: @33      size: @49     
                         algn: 32       used: 0       
@602    integer_type     name: @632     size: @49      algn: 32      
                         prec: 32       sign: signed   min : @633    
                         max : @634    
@603    parm_decl        name: @607     type: @602     srcp: stdlib.h:803    
                         argt: @602     size: @49      algn: 32      
                         used: 0       
@604    type_decl        name: @635     type: @576     srcp: <built-in>:0      
                         note: artificial 
@605    integer_cst      type: @576     high: -2147483648  low : 0       
@606    integer_cst      type: @576     high: 2147483647  low : -1      
@607    identifier_node  strg: __denom  lngt: 7       
@608    parm_decl        name: @427     type: @406     srcp: stdlib.h:823    
                         argt: @406     size: @49      algn: 32      
                         used: 0       
@609    identifier_node  strg: iswprint lngt: 8       
@610    function_decl    name: @636     mngl: @609     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @637     lang: C        body: undefined 
                         link: extern  
@611    identifier_node  strg: unsigned char           lngt: 13      
@612    type_decl        type: @638     srcp: <built-in>:0      
                         chan: @639    
@613    tree_list        valu: @58      chan: @640    
@614    identifier_node  strg: __sync_lock_release_16  lngt: 22      
@615    function_type    size: @9       algn: 8        retn: @26     
                         prms: @641    
@616    function_decl    name: @642     type: @615     srcp: <built-in>:0      
                         note: artificial              chan: @643    
                         lang: C        body: undefined 
                         link: extern  
@617    identifier_node  strg: lldiv_t  lngt: 7       
@618    type_decl        name: @644     type: @596     srcp: stdlib.h:110    
                         chan: @645    
@619    identifier_node  strg: quot     lngt: 4       
@620    field_decl       name: @646     type: @576     scpe: @569    
                         srcp: stdlib.h:121            chan: @647    
                         accs: pub      size: @44      algn: 32      
                         bpos: @44     
@621    field_decl       name: @619     type: @602     scpe: @596    
                         srcp: stdlib.h:108            chan: @648    
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@622    binfo            type: @596     bases: 0       
@623    tree_list        valu: @602     chan: @11     
@624    function_type    size: @9       algn: 8        retn: @625    
                         prms: @626    
@625    record_type      name: @645     size: @44      algn: 32      
                         tag : struct   flds: @649     binf: @650    
@626    tree_list        valu: @33      chan: @651    
@627    identifier_node  strg: qsort    lngt: 5       
@628    function_type    size: @9       algn: 8        retn: @26     
                         prms: @652    
@629    function_decl    name: @653     type: @654     srcp: stdlib.h:777    
                         chan: @655     lang: C        args: @656    
                         body: undefined               link: extern  
@630    parm_decl        name: @657     type: @58      srcp: stdlib.h:782    
                         chan: @658     argt: @58      size: @49     
                         algn: 32       used: 0       
@631    parm_decl        name: @607     type: @33      srcp: stdlib.h:801    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@632    type_decl        name: @659     type: @602     srcp: <built-in>:0      
                         note: artificial 
@633    integer_cst      type: @602     high: -1       low : -2147483648 
@634    integer_cst      type: @602     low : 2147483647 
@635    identifier_node  strg: long long int           lngt: 13      
@636    identifier_node  strg: __builtin_iswprint      lngt: 18      
@637    function_decl    name: @660     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @661    
                         lang: C        body: undefined 
                         link: extern  
@638    integer_type     name: @662     size: @557     algn: 16      
                         prec: 16       sign: signed   min : @663    
                         max : @664    
@639    type_decl        type: @665     srcp: <built-in>:0      
@640    tree_list        valu: @58      chan: @11     
@641    tree_list        valu: @666     chan: @11     
@642    identifier_node  strg: __sync_lock_release_8   lngt: 21      
@643    function_decl    name: @667     type: @615     srcp: <built-in>:0      
                         note: artificial              chan: @668    
                         lang: C        body: undefined 
                         link: extern  
@644    identifier_node  strg: ldiv_t   lngt: 6       
@645    type_decl        name: @669     type: @625     srcp: stdlib.h:102    
                         chan: @169    
@646    identifier_node  strg: rem      lngt: 3       
@647    type_decl        name: @670     type: @569     scpe: @569    
                         srcp: stdlib.h:119            note: artificial 
@648    field_decl       name: @646     type: @602     scpe: @596    
                         srcp: stdlib.h:109            chan: @671    
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@649    field_decl       name: @619     type: @33      scpe: @625    
                         srcp: stdlib.h:100            chan: @672    
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@650    binfo            type: @625     bases: 0       
@651    tree_list        valu: @33      chan: @11     
@652    tree_list        valu: @58      chan: @673    
@653    identifier_node  strg: bsearch  lngt: 7       
@654    function_type    size: @9       algn: 8        retn: @58     
                         prms: @674    
@655    type_decl        name: @675     type: @676     srcp: stdlib.h:768    
                         chan: @677    
@656    parm_decl        name: @215     type: @678     srcp: stdlib.h:777    
                         chan: @679     argt: @678     size: @49     
                         algn: 32       used: 0       
@657    identifier_node  strg: __base   lngt: 6       
@658    parm_decl        name: @167     type: @141     srcp: stdlib.h:782    
                         chan: @680     argt: @141     size: @49     
                         algn: 32       used: 0       
@659    identifier_node  strg: long int lngt: 8       
@660    identifier_node  strg: iswlower lngt: 8       
@661    function_decl    name: @681     mngl: @660     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @682     lang: C        body: undefined 
                         link: extern  
@662    type_decl        name: @683     type: @638     srcp: <built-in>:0      
                         note: artificial 
@663    integer_cst      type: @638     high: -1       low : -32768  
@664    integer_cst      type: @638     low : 32767   
@665    integer_type     name: @684     size: @9       algn: 8       
                         prec: 8        sign: signed   min : @685    
                         max : @686    
@666    pointer_type     size: @49      algn: 32       ptd : @687    
@667    identifier_node  strg: __sync_lock_release_4   lngt: 21      
@668    function_decl    name: @688     type: @615     srcp: <built-in>:0      
                         note: artificial              chan: @689    
                         lang: C        body: undefined 
                         link: extern  
@669    identifier_node  strg: div_t    lngt: 5       
@670    identifier_node  strg: ._4      lngt: 3       
@671    type_decl        name: @690     type: @596     scpe: @596    
                         srcp: stdlib.h:107            note: artificial 
@672    field_decl       name: @646     type: @33      scpe: @625    
                         srcp: stdlib.h:101            chan: @691    
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@673    tree_list        valu: @141     chan: @692    
@674    tree_list        valu: @678     chan: @693    
@675    identifier_node  strg: comparison_fn_t         lngt: 15      
@676    pointer_type     name: @655     unql: @694     size: @49     
                         algn: 32       ptd : @695    
@677    type_decl        name: @696     type: @697     srcp: stdlib.h:765    
                         chan: @698    
@678    pointer_type     size: @49      algn: 32       ptd : @699    
@679    parm_decl        name: @657     type: @678     srcp: stdlib.h:777    
                         chan: @700     argt: @678     size: @49     
                         algn: 32       used: 0       
@680    parm_decl        name: @185     type: @141     srcp: stdlib.h:782    
                         chan: @701     argt: @141     size: @49     
                         algn: 32       used: 0       
@681    identifier_node  strg: __builtin_iswlower      lngt: 18      
@682    function_decl    name: @702     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @703    
                         lang: C        body: undefined 
                         link: extern  
@683    identifier_node  strg: short int               lngt: 9       
@684    type_decl        name: @704     type: @665     srcp: <built-in>:0      
                         note: artificial 
@685    integer_cst      type: @665     high: -1       low : -128    
@686    integer_cst      type: @665     low : 127     
@687    void_type        qual:  v       name: @53      unql: @26     
                         algn: 8       
@688    identifier_node  strg: __sync_lock_release_2   lngt: 21      
@689    function_decl    name: @705     type: @615     srcp: <built-in>:0      
                         note: artificial              chan: @706    
                         lang: C        body: undefined 
                         link: extern  
@690    identifier_node  strg: ._3      lngt: 3       
@691    type_decl        name: @707     type: @625     scpe: @625    
                         srcp: stdlib.h:99             note: artificial 
@692    tree_list        valu: @141     chan: @708    
@693    tree_list        valu: @678     chan: @709    
@694    pointer_type     size: @49      algn: 32       ptd : @695    
@695    function_type    size: @9       algn: 8        retn: @33     
                         prms: @710    
@696    identifier_node  strg: __compar_fn_t           lngt: 13      
@697    pointer_type     name: @677     unql: @694     size: @49     
                         algn: 32       ptd : @695    
@698    function_decl    name: @711     type: @712     srcp: stdlib.h:758    
                         chan: @713     lang: C        args: @714    
                         body: undefined               link: extern  
@699    void_type        qual: c        name: @53      unql: @26     
                         algn: 8       
@700    parm_decl        name: @167     type: @141     srcp: stdlib.h:777    
                         chan: @715     argt: @141     size: @49     
                         algn: 32       used: 0       
@701    parm_decl        name: @716     type: @697     srcp: stdlib.h:782    
                         argt: @697     size: @49      algn: 32      
                         used: 0       
@702    identifier_node  strg: iswgraph lngt: 8       
@703    function_decl    name: @717     mngl: @702     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @718     lang: C        body: undefined 
                         link: extern  
@704    identifier_node  strg: signed char             lngt: 11      
@705    identifier_node  strg: __sync_lock_release_1   lngt: 21      
@706    function_decl    name: @719     type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @720    
                         lang: C        body: undefined 
                         link: extern  
@707    identifier_node  strg: ._2      lngt: 3       
@708    tree_list        valu: @697     chan: @11     
@709    tree_list        valu: @141     chan: @721    
@710    tree_list        valu: @678     chan: @722    
@711    identifier_node  strg: realpath lngt: 8       
@712    function_type    unql: @723     size: @9       algn: 8       
                         retn: @39      prms: @724    
@713    function_decl    name: @725     type: @726     srcp: stdlib.h:747    
                         chan: @727     lang: C        args: @728    
                         body: undefined               link: extern  
@714    parm_decl        name: @729     type: @308     srcp: stdlib.h:758    
                         chan: @730     argt: @308     size: @49     
                         algn: 32       used: 0       
@715    parm_decl        name: @185     type: @141     srcp: stdlib.h:777    
                         chan: @731     argt: @141     size: @49     
                         algn: 32       used: 0       
@716    identifier_node  strg: __compar lngt: 8       
@717    identifier_node  strg: __builtin_iswgraph      lngt: 18      
@718    function_decl    name: @732     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @733    
                         lang: C        body: undefined 
                         link: extern  
@719    identifier_node  strg: __sync_lock_release     lngt: 19      
@720    function_decl    name: @734     type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @736    
                         lang: C        body: undefined 
                         link: extern  
@721    tree_list        valu: @141     chan: @737    
@722    tree_list        valu: @678     chan: @11     
@723    function_type    size: @9       algn: 8        retn: @39     
                         prms: @724    
@724    tree_list        valu: @70      chan: @738    
@725    identifier_node  strg: canonicalize_file_name  lngt: 22      
@726    function_type    size: @9       algn: 8        retn: @39     
                         prms: @739    
@727    function_decl    name: @740     type: @741     srcp: stdlib.h:738    
                         chan: @742     lang: C        args: @743    
                         body: undefined               link: extern  
@728    parm_decl        name: @729     type: @70      srcp: stdlib.h:747    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@729    identifier_node  strg: __name   lngt: 6       
@730    parm_decl        name: @744     type: @268     srcp: stdlib.h:758    
                         argt: @268     size: @49      algn: 32      
                         used: 0       
@731    parm_decl        name: @716     type: @697     srcp: stdlib.h:777    
                         argt: @697     size: @49      algn: 32      
                         used: 0       
@732    identifier_node  strg: iswdigit lngt: 8       
@733    function_decl    name: @745     mngl: @732     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @746     lang: C        body: undefined 
                         link: extern  
@734    identifier_node  strg: __sync_lock_test_and_set_8 
                         lngt: 26      
@735    function_type    size: @9       algn: 8        retn: @502    
                         prms: @747    
@736    function_decl    name: @748     type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @750    
                         lang: C        body: undefined 
                         link: extern  
@737    tree_list        valu: @697     chan: @11     
@738    tree_list        valu: @39      chan: @11     
@739    tree_list        valu: @70      chan: @11     
@740    identifier_node  strg: system   lngt: 6       
@741    function_type    size: @9       algn: 8        retn: @33     
                         prms: @243    
@742    function_decl    name: @751     type: @752     srcp: stdlib.h:729    
                         chan: @753     lang: C        args: @754    
                         body: undefined               link: extern  
@743    parm_decl        name: @755     type: @70      srcp: stdlib.h:738    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@744    identifier_node  strg: __resolved              lngt: 10      
@745    identifier_node  strg: __builtin_iswdigit      lngt: 18      
@746    function_decl    name: @756     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @757    
                         lang: C        body: undefined 
                         link: extern  
@747    tree_list        valu: @666     chan: @758    
@748    identifier_node  strg: __sync_lock_test_and_set_4 
                         lngt: 26      
@749    function_type    size: @9       algn: 8        retn: @170    
                         prms: @759    
@750    function_decl    name: @760     type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @762    
                         lang: C        body: undefined 
                         link: extern  
@751    identifier_node  strg: mkdtemp  lngt: 7       
@752    function_type    size: @9       algn: 8        retn: @39     
                         prms: @763    
@753    function_decl    name: @764     type: @765     srcp: stdlib.h:719    
                         chan: @766     lang: C        args: @767    
                         body: undefined               link: extern  
@754    parm_decl        name: @768     type: @39      srcp: stdlib.h:729    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@755    identifier_node  strg: __command               lngt: 9       
@756    identifier_node  strg: iswcntrl lngt: 8       
@757    function_decl    name: @769     mngl: @756     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @770     lang: C        body: undefined 
                         link: extern  
@758    tree_list        valu: @502     chan: @11     
@759    tree_list        valu: @666     chan: @771    
@760    identifier_node  strg: __sync_lock_test_and_set_2 
                         lngt: 26      
@761    function_type    size: @9       algn: 8        retn: @540    
                         prms: @772    
@762    function_decl    name: @773     type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @775    
                         lang: C        body: undefined 
                         link: extern  
@763    tree_list        valu: @39      chan: @11     
@764    identifier_node  strg: mkstemp64               lngt: 9       
@765    function_type    size: @9       algn: 8        retn: @33     
                         prms: @776    
@766    function_decl    name: @777     type: @778     srcp: stdlib.h:709    
                         chan: @779     lang: C        args: @780    
                         body: undefined               link: extern  
@767    parm_decl        name: @768     type: @39      srcp: stdlib.h:719    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@768    identifier_node  strg: __template              lngt: 10      
@769    identifier_node  strg: __builtin_iswcntrl      lngt: 18      
@770    function_decl    name: @781     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @782    
                         lang: C        body: undefined 
                         link: extern  
@771    tree_list        valu: @170     chan: @11     
@772    tree_list        valu: @666     chan: @783    
@773    identifier_node  strg: __sync_lock_test_and_set_1 
                         lngt: 26      
@774    function_type    size: @9       algn: 8        retn: @560    
                         prms: @784    
@775    function_decl    name: @785     type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @786    
                         lang: C        body: undefined 
                         link: extern  
@776    tree_list        valu: @39      chan: @11     
@777    identifier_node  strg: mkstemp  lngt: 7       
@778    function_type    size: @9       algn: 8        retn: @33     
                         prms: @776    
@779    function_decl    name: @787     type: @788     srcp: stdlib.h:698    
                         chan: @789     lang: C        args: @790    
                         body: undefined               link: extern  
@780    parm_decl        name: @768     type: @39      srcp: stdlib.h:709    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@781    identifier_node  strg: iswblank lngt: 8       
@782    function_decl    name: @791     mngl: @781     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @792     lang: C        body: undefined 
                         link: extern  
@783    tree_list        valu: @540     chan: @11     
@784    tree_list        valu: @666     chan: @793    
@785    identifier_node  strg: __sync_lock_test_and_set 
                         lngt: 24      
@786    function_decl    name: @794     type: @795     srcp: <built-in>:0      
                         note: artificial              chan: @796    
                         lang: C        body: undefined 
                         link: extern  
@787    identifier_node  strg: mktemp   lngt: 6       
@788    function_type    size: @9       algn: 8        retn: @39     
                         prms: @763    
@789    function_decl    name: @797     type: @798     srcp: stdlib.h:689    
                         chan: @799     lang: C        body: undefined 
                         link: extern  
@790    parm_decl        name: @768     type: @39      srcp: stdlib.h:698    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@791    identifier_node  strg: __builtin_iswblank      lngt: 18      
@792    function_decl    name: @800     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @801    
                         lang: C        body: undefined 
                         link: extern  
@793    tree_list        valu: @560     chan: @11     
@794    identifier_node  strg: __sync_val_compare_and_swap_8 
                         lngt: 29      
@795    function_type    size: @9       algn: 8        retn: @502    
                         prms: @802    
@796    function_decl    name: @803     type: @804     srcp: <built-in>:0      
                         note: artificial              chan: @805    
                         lang: C        body: undefined 
                         link: extern  
@797    identifier_node  strg: clearenv lngt: 8       
@798    function_type    unql: @85      size: @9       algn: 8       
                         retn: @33      prms: @11     
@799    function_decl    name: @806     type: @807     srcp: stdlib.h:682    
                         chan: @808     lang: C        args: @809    
                         body: undefined               link: extern  
@800    identifier_node  strg: iswalpha lngt: 8       
@801    function_decl    name: @810     mngl: @800     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @811     lang: C        body: undefined 
                         link: extern  
@802    tree_list        valu: @666     chan: @812    
@803    identifier_node  strg: __sync_val_compare_and_swap_4 
                         lngt: 29      
@804    function_type    size: @9       algn: 8        retn: @170    
                         prms: @813    
@805    function_decl    name: @814     type: @815     srcp: <built-in>:0      
                         note: artificial              chan: @816    
                         lang: C        body: undefined 
                         link: extern  
@806    identifier_node  strg: unsetenv lngt: 8       
@807    function_type    unql: @741     size: @9       algn: 8       
                         retn: @33      prms: @243    
@808    function_decl    name: @817     type: @818     srcp: stdlib.h:679    
                         chan: @819     lang: C        args: @820    
                         body: undefined               link: extern  
@809    parm_decl        name: @729     type: @70      srcp: stdlib.h:682    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@810    identifier_node  strg: __builtin_iswalpha      lngt: 18      
@811    function_decl    name: @821     type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @822    
                         lang: C        body: undefined 
                         link: extern  
@812    tree_list        valu: @502     chan: @823    
@813    tree_list        valu: @666     chan: @824    
@814    identifier_node  strg: __sync_val_compare_and_swap_2 
                         lngt: 29      
@815    function_type    size: @9       algn: 8        retn: @540    
                         prms: @825    
@816    function_decl    name: @826     type: @827     srcp: <built-in>:0      
                         note: artificial              chan: @828    
                         lang: C        body: undefined 
                         link: extern  
@817    identifier_node  strg: setenv   lngt: 6       
@818    function_type    size: @9       algn: 8        retn: @33     
                         prms: @829    
@819    function_decl    name: @830     type: @831     srcp: stdlib.h:672    
                         chan: @832     lang: C        args: @833    
                         body: undefined               link: extern  
@820    parm_decl        name: @729     type: @70      srcp: stdlib.h:679    
                         chan: @834     argt: @70      size: @49     
                         algn: 32       used: 0       
@821    identifier_node  strg: iswalnum lngt: 8       
@822    function_decl    name: @835     mngl: @821     type: @430    
                         srcp: <built-in>:0            note: artificial 
                         chan: @836     lang: C        body: undefined 
                         link: extern  
@823    tree_list        valu: @502     chan: @11     
@824    tree_list        valu: @170     chan: @837    
@825    tree_list        valu: @666     chan: @838    
@826    identifier_node  strg: __sync_val_compare_and_swap_1 
                         lngt: 29      
@827    function_type    size: @9       algn: 8        retn: @560    
                         prms: @839    
@828    function_decl    name: @840     type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @841    
                         lang: C        body: undefined 
                         link: extern  
@829    tree_list        valu: @70      chan: @842    
@830    identifier_node  strg: putenv   lngt: 6       
@831    function_type    size: @9       algn: 8        retn: @33     
                         prms: @776    
@832    function_decl    name: @843     type: @844     srcp: stdlib.h:666    
                         chan: @845     lang: C        args: @846    
                         body: undefined               link: extern  
@833    parm_decl        name: @847     type: @39      srcp: stdlib.h:672    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@834    parm_decl        name: @366     type: @70      srcp: stdlib.h:679    
                         chan: @848     argt: @70      size: @49     
                         algn: 32       used: 0       
@835    identifier_node  strg: __builtin_iswalnum      lngt: 18      
@836    function_decl    name: @849     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @850    
                         lang: C        body: undefined 
                         link: extern  
@837    tree_list        valu: @170     chan: @11     
@838    tree_list        valu: @540     chan: @851    
@839    tree_list        valu: @666     chan: @852    
@840    identifier_node  strg: __sync_val_compare_and_swap 
                         lngt: 27      
@841    function_decl    name: @853     type: @854     srcp: <built-in>:0      
                         note: artificial              chan: @855    
                         lang: C        body: undefined 
                         link: extern  
@842    tree_list        valu: @70      chan: @856    
@843    identifier_node  strg: __secure_getenv         lngt: 15      
@844    function_type    size: @9       algn: 8        retn: @39     
                         prms: @739    
@845    function_decl    name: @857     type: @858     srcp: stdlib.h:660    
                         chan: @859     lang: C        args: @860    
                         body: undefined               link: extern  
@846    parm_decl        name: @729     type: @70      srcp: stdlib.h:666    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@847    identifier_node  strg: __string lngt: 8       
@848    parm_decl        name: @861     type: @33      srcp: stdlib.h:679    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@849    identifier_node  strg: toupper  lngt: 7       
@850    function_decl    name: @862     mngl: @849     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @863     lang: C        body: undefined 
                         link: extern  
@851    tree_list        valu: @540     chan: @11     
@852    tree_list        valu: @560     chan: @864    
@853    identifier_node  strg: __sync_bool_compare_and_swap_8 
                         lngt: 30      
@854    function_type    size: @9       algn: 8        retn: @865    
                         prms: @866    
@855    function_decl    name: @867     type: @868     srcp: <built-in>:0      
                         note: artificial              chan: @869    
                         lang: C        body: undefined 
                         link: extern  
@856    tree_list        valu: @33      chan: @11     
@857    identifier_node  strg: getenv   lngt: 6       
@858    function_type    size: @9       algn: 8        retn: @39     
                         prms: @739    
@859    function_decl    name: @870     type: @871     srcp: stdlib.h:639    
                         chan: @872     lang: C        args: @873    
                         body: undefined               link: extern  
@860    parm_decl        name: @729     type: @70      srcp: stdlib.h:660    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@861    identifier_node  strg: __replace               lngt: 9       
@862    identifier_node  strg: __builtin_toupper       lngt: 17      
@863    function_decl    name: @874     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @875    
                         lang: C        body: undefined 
                         link: extern  
@864    tree_list        valu: @560     chan: @11     
@865    boolean_type     name: @876     size: @9       algn: 8       
@866    tree_list        valu: @666     chan: @877    
@867    identifier_node  strg: __sync_bool_compare_and_swap_4 
                         lngt: 30      
@868    function_type    size: @9       algn: 8        retn: @865    
                         prms: @878    
@869    function_decl    name: @879     type: @880     srcp: <built-in>:0      
                         note: artificial              chan: @881    
                         lang: C        body: undefined 
                         link: extern  
@870    identifier_node  strg: on_exit  lngt: 7       
@871    function_type    size: @9       algn: 8        retn: @33     
                         prms: @882    
@872    function_decl    name: @883     type: @884     srcp: stdlib.h:632    
                         chan: @885     lang: C        args: @886    
                         body: undefined               link: extern  
@873    parm_decl        name: @887     type: @888     srcp: stdlib.h:639    
                         chan: @889     argt: @888     size: @49     
                         algn: 32       used: 0       
@874    identifier_node  strg: tolower  lngt: 7       
@875    function_decl    name: @890     mngl: @874     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @891     lang: C        body: undefined 
                         link: extern  
@876    type_decl        name: @892     type: @865     srcp: <built-in>:0      
                         note: artificial 
@877    tree_list        valu: @502     chan: @893    
@878    tree_list        valu: @666     chan: @894    
@879    identifier_node  strg: __sync_bool_compare_and_swap_2 
                         lngt: 30      
@880    function_type    size: @9       algn: 8        retn: @865    
                         prms: @895    
@881    function_decl    name: @896     type: @897     srcp: <built-in>:0      
                         note: artificial              chan: @898    
                         lang: C        body: undefined 
                         link: extern  
@882    tree_list        valu: @888     chan: @899    
@883    identifier_node  strg: atexit   lngt: 6       
@884    function_type    size: @9       algn: 8        retn: @33     
                         prms: @900    
@885    function_decl    name: @901     type: @902     srcp: stdlib.h:623    
                         chan: @903     lang: C        args: @904    
                         body: undefined               link: extern  
@886    parm_decl        name: @887     type: @905     srcp: stdlib.h:632    
                         argt: @905     size: @49      algn: 32      
                         used: 0       
@887    identifier_node  strg: __func   lngt: 6       
@888    pointer_type     size: @49      algn: 32       ptd : @906    
@889    parm_decl        name: @907     type: @58      srcp: stdlib.h:639    
                         argt: @58      size: @49      algn: 32      
                         used: 0       
@890    identifier_node  strg: __builtin_tolower       lngt: 17      
@891    function_decl    name: @908     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @909    
                         lang: C        body: undefined 
                         link: extern  
@892    identifier_node  strg: bool     lngt: 4       
@893    tree_list        valu: @502     chan: @11     
@894    tree_list        valu: @170     chan: @910    
@895    tree_list        valu: @666     chan: @911    
@896    identifier_node  strg: __sync_bool_compare_and_swap_1 
                         lngt: 30      
@897    function_type    size: @9       algn: 8        retn: @865    
                         prms: @912    
@898    function_decl    name: @913     type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @914    
                         lang: C        body: undefined 
                         link: extern  
@899    tree_list        valu: @58      chan: @11     
@900    tree_list        valu: @905     chan: @11     
@901    identifier_node  strg: posix_memalign          lngt: 14      
@902    function_type    size: @9       algn: 8        retn: @33     
                         prms: @915    
@903    function_decl    name: @916     type: @218     srcp: stdlib.h:617    
                         chan: @917     lang: C        args: @918    
                         body: undefined               link: extern  
@904    parm_decl        name: @919     type: @920     srcp: stdlib.h:623    
                         chan: @921     argt: @920     size: @49     
                         algn: 32       used: 0       
@905    pointer_type     size: @49      algn: 32       ptd : @332    
@906    function_type    size: @9       algn: 8        retn: @26     
                         prms: @922    
@907    identifier_node  strg: __arg    lngt: 5       
@908    identifier_node  strg: toascii  lngt: 7       
@909    function_decl    name: @923     mngl: @908     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @924     lang: C        body: undefined 
                         link: extern  
@910    tree_list        valu: @170     chan: @11     
@911    tree_list        valu: @540     chan: @925    
@912    tree_list        valu: @666     chan: @926    
@913    identifier_node  strg: __sync_bool_compare_and_swap 
                         lngt: 28      
@914    function_decl    name: @927     type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @928    
                         lang: C        body: undefined 
                         link: extern  
@915    tree_list        valu: @920     chan: @929    
@916    identifier_node  strg: valloc   lngt: 6       
@917    function_decl    name: @930     type: @208     srcp: stdlib.h:608    
                         chan: @931     lang: C        args: @932    
                         body: undefined               link: extern  
@918    parm_decl        name: @185     type: @141     srcp: stdlib.h:617    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@919    identifier_node  strg: __memptr lngt: 8       
@920    pointer_type     size: @49      algn: 32       ptd : @58     
@921    parm_decl        name: @933     type: @141     srcp: stdlib.h:623    
                         chan: @934     argt: @141     size: @49     
                         algn: 32       used: 0       
@922    tree_list        valu: @33      chan: @935    
@923    identifier_node  strg: __builtin_toascii       lngt: 17      
@924    function_decl    name: @936     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @937    
                         lang: C        body: undefined 
                         link: extern  
@925    tree_list        valu: @540     chan: @11     
@926    tree_list        valu: @560     chan: @938    
@927    identifier_node  strg: __sync_nand_and_fetch_8 lngt: 23      
@928    function_decl    name: @939     type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @940    
                         lang: C        body: undefined 
                         link: extern  
@929    tree_list        valu: @141     chan: @941    
@930    identifier_node  strg: cfree    lngt: 5       
@931    function_decl    name: @942     type: @208     srcp: stdlib.h:603    
                         chan: @943     lang: C        args: @944    
                         body: undefined               link: extern  
@932    parm_decl        name: @945     type: @58      srcp: stdlib.h:608    
                         argt: @58      size: @49      algn: 32      
                         used: 0       
@933    identifier_node  strg: __alignment             lngt: 11      
@934    parm_decl        name: @185     type: @141     srcp: stdlib.h:623    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@935    tree_list        valu: @58      chan: @11     
@936    identifier_node  strg: isxdigit lngt: 8       
@937    function_decl    name: @946     mngl: @936     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @947     lang: C        body: undefined 
                         link: extern  
@938    tree_list        valu: @560     chan: @11     
@939    identifier_node  strg: __sync_nand_and_fetch_4 lngt: 23      
@940    function_decl    name: @948     type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @949    
                         lang: C        body: undefined 
                         link: extern  
@941    tree_list        valu: @141     chan: @11     
@942    identifier_node  strg: free     lngt: 4       
@943    function_decl    name: @950     type: @951     srcp: stdlib.h:601    
                         chan: @952     lang: C        args: @953    
                         body: undefined               link: extern  
@944    parm_decl        name: @945     type: @58      srcp: stdlib.h:603    
                         argt: @58      size: @49      algn: 32      
                         used: 0       
@945    identifier_node  strg: __ptr    lngt: 5       
@946    identifier_node  strg: __builtin_isxdigit      lngt: 18      
@947    function_decl    name: @954     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @955    
                         lang: C        body: undefined 
                         link: extern  
@948    identifier_node  strg: __sync_nand_and_fetch_2 lngt: 23      
@949    function_decl    name: @956     type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @957    
                         lang: C        body: undefined 
                         link: extern  
@950    identifier_node  strg: realloc  lngt: 7       
@951    function_type    size: @9       algn: 8        retn: @58     
                         prms: @958    
@952    function_decl    name: @959     type: @960     srcp: stdlib.h:579    
                         chan: @961     lang: C        args: @962    
                         body: undefined               link: extern  
@953    parm_decl        name: @945     type: @58      srcp: stdlib.h:601    
                         chan: @963     argt: @58      size: @49     
                         algn: 32       used: 0       
@954    identifier_node  strg: isupper  lngt: 7       
@955    function_decl    name: @964     mngl: @954     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @965     lang: C        body: undefined 
                         link: extern  
@956    identifier_node  strg: __sync_nand_and_fetch_1 lngt: 23      
@957    function_decl    name: @966     type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @967    
                         lang: C        body: undefined 
                         link: extern  
@958    tree_list        valu: @58      chan: @968    
@959    identifier_node  strg: lcong48_r               lngt: 9       
@960    function_type    size: @9       algn: 8        retn: @33     
                         prms: @969    
@961    function_decl    name: @970     type: @971     srcp: stdlib.h:575    
                         chan: @972     lang: C        args: @973    
                         body: undefined               link: extern  
@962    parm_decl        name: @974     type: @975     srcp: stdlib.h:579    
                         chan: @976     argt: @975     size: @49     
                         algn: 32       used: 0       
@963    parm_decl        name: @185     type: @141     srcp: stdlib.h:601    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@964    identifier_node  strg: __builtin_isupper       lngt: 17      
@965    function_decl    name: @977     type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @978    
                         lang: C        body: undefined 
                         link: extern  
@966    identifier_node  strg: __sync_nand_and_fetch   lngt: 21      
@967    function_decl    name: @979     type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @980    
                         lang: C        body: undefined 
                         link: extern  
@968    tree_list        valu: @141     chan: @11     
@969    tree_list        valu: @975     chan: @981    
@970    identifier_node  strg: seed48_r lngt: 8       
@971    function_type    size: @9       algn: 8        retn: @33     
                         prms: @969    
@972    function_decl    name: @982     type: @983     srcp: stdlib.h:572    
                         chan: @984     lang: C        args: @985    
                         body: undefined               link: extern  
@973    parm_decl        name: @986     type: @975     srcp: stdlib.h:575    
                         chan: @987     argt: @975     size: @49     
                         algn: 32       used: 0       
@974    identifier_node  strg: __param  lngt: 7       
@975    pointer_type     size: @49      algn: 32       ptd : @540    
@976    parm_decl        name: @988     type: @989     srcp: stdlib.h:579    
                         argt: @989     size: @49      algn: 32      
                         used: 0       
@977    identifier_node  strg: isspace  lngt: 7       
@978    function_decl    name: @990     mngl: @977     type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @991     lang: C        body: undefined 
                         link: extern  
@979    identifier_node  strg: __sync_xor_and_fetch_8  lngt: 22      
@980    function_decl    name: @992     type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @993    
                         lang: C        body: undefined 
                         link: extern  
@981    tree_list        valu: @989     chan: @11     
@982    identifier_node  strg: srand48_r               lngt: 9       
@983    function_type    size: @9       algn: 8        retn: @33     
                         prms: @994    
@984    function_decl    name: @995     type: @996     srcp: stdlib.h:568    
                         chan: @997     lang: C        args: @998    
                         body: undefined               link: extern  
@985    parm_decl        name: @999     type: @602     srcp: stdlib.h:572    
                         chan: @1000    argt: @602     size: @49     
                         algn: 32       used: 0       
@986    identifier_node  strg: __seed16v               lngt: 9       
@987    parm_decl        name: @988     type: @989     srcp: stdlib.h:575    
                         argt: @989     size: @49      algn: 32      
                         used: 0       
@988    identifier_node  strg: __buffer lngt: 8       
@989    pointer_type     size: @49      algn: 32       ptd : @1001   
@990    identifier_node  strg: __builtin_isspace       lngt: 17      
@991    function_decl    name: @1002    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1003   
                         lang: C        body: undefined 
                         link: extern  
@992    identifier_node  strg: __sync_xor_and_fetch_4  lngt: 22      
@993    function_decl    name: @1004    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1005   
                         lang: C        body: undefined 
                         link: extern  
@994    tree_list        valu: @602     chan: @1006   
@995    identifier_node  strg: jrand48_r               lngt: 9       
@996    function_type    size: @9       algn: 8        retn: @33     
                         prms: @1007   
@997    function_decl    name: @1008    type: @1009    srcp: stdlib.h:564    
                         chan: @1010    lang: C        args: @1011   
                         body: undefined               link: extern  
@998    parm_decl        name: @1012    type: @975     srcp: stdlib.h:568    
                         chan: @1013    argt: @975     size: @49     
                         algn: 32       used: 0       
@999    identifier_node  strg: __seedval               lngt: 9       
@1000   parm_decl        name: @988     type: @989     srcp: stdlib.h:572    
                         argt: @989     size: @49      algn: 32      
                         used: 0       
@1001   record_type      name: @1014    size: @353     algn: 32      
                         tag : struct   flds: @1015    binf: @1016   
@1002   identifier_node  strg: ispunct  lngt: 7       
@1003   function_decl    name: @1017    mngl: @1002    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1018    lang: C        body: undefined 
                         link: extern  
@1004   identifier_node  strg: __sync_xor_and_fetch_2  lngt: 22      
@1005   function_decl    name: @1019    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1020   
                         lang: C        body: undefined 
                         link: extern  
@1006   tree_list        valu: @989     chan: @11     
@1007   tree_list        valu: @975     chan: @1021   
@1008   identifier_node  strg: mrand48_r               lngt: 9       
@1009   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1022   
@1010   function_decl    name: @1023    type: @1024    srcp: stdlib.h:559    
                         chan: @1025    lang: C        args: @1026   
                         body: undefined               link: extern  
@1011   parm_decl        name: @988     type: @1027    srcp: stdlib.h:564    
                         chan: @1028    argt: @1027    size: @49     
                         algn: 32       used: 0       
@1012   identifier_node  strg: __xsubi  lngt: 7       
@1013   parm_decl        name: @988     type: @1027    srcp: stdlib.h:568    
                         chan: @1029    argt: @1027    size: @49     
                         algn: 32       used: 0       
@1014   type_decl        name: @1030    type: @1001    srcp: stdlib.h:537    
                         note: artificial 
@1015   field_decl       name: @292     type: @1031    scpe: @1001   
                         srcp: stdlib.h:538            chan: @1032   
                         accs: pub      size: @1033    algn: 16      
                         bpos: @45     
@1016   binfo            type: @1001    bases: 0       
@1017   identifier_node  strg: __builtin_ispunct       lngt: 17      
@1018   function_decl    name: @1034    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1035   
                         lang: C        body: undefined 
                         link: extern  
@1019   identifier_node  strg: __sync_xor_and_fetch_1  lngt: 22      
@1020   function_decl    name: @1036    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1037   
                         lang: C        body: undefined 
                         link: extern  
@1021   tree_list        valu: @989     chan: @1038   
@1022   tree_list        valu: @989     chan: @1039   
@1023   identifier_node  strg: nrand48_r               lngt: 9       
@1024   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1007   
@1025   function_decl    name: @1040    type: @1041    srcp: stdlib.h:555    
                         chan: @1042    lang: C        args: @1043   
                         body: undefined               link: extern  
@1026   parm_decl        name: @1012    type: @975     srcp: stdlib.h:559    
                         chan: @1044    argt: @975     size: @49     
                         algn: 32       used: 0       
@1027   pointer_type     qual:   r      unql: @989     size: @49     
                         algn: 32       ptd : @1001   
@1028   parm_decl        name: @1045    type: @1046    srcp: stdlib.h:564    
                         argt: @1046    size: @49      algn: 32      
                         used: 0       
@1029   parm_decl        name: @1045    type: @1046    srcp: stdlib.h:568    
                         argt: @1046    size: @49      algn: 32      
                         used: 0       
@1030   identifier_node  strg: drand48_data            lngt: 12      
@1031   array_type       size: @1033    algn: 16       elts: @540    
                         domn: @1047   
@1032   field_decl       name: @1048    type: @1031    scpe: @1001   
                         srcp: stdlib.h:539            chan: @1049   
                         accs: pub      size: @1033    algn: 16      
                         bpos: @1033   
@1033   integer_cst      type: @21      low : 48      
@1034   identifier_node  strg: isprint  lngt: 7       
@1035   function_decl    name: @1050    mngl: @1034    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1051    lang: C        body: undefined 
                         link: extern  
@1036   identifier_node  strg: __sync_xor_and_fetch    lngt: 20      
@1037   function_decl    name: @1052    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1053   
                         lang: C        body: undefined 
                         link: extern  
@1038   tree_list        valu: @1054    chan: @11     
@1039   tree_list        valu: @1054    chan: @11     
@1040   identifier_node  strg: lrand48_r               lngt: 9       
@1041   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1022   
@1042   function_decl    name: @1055    type: @1056    srcp: stdlib.h:550    
                         chan: @1057    lang: C        args: @1058   
                         body: undefined               link: extern  
@1043   parm_decl        name: @988     type: @1027    srcp: stdlib.h:555    
                         chan: @1059    argt: @1027    size: @49     
                         algn: 32       used: 0       
@1044   parm_decl        name: @988     type: @1027    srcp: stdlib.h:559    
                         chan: @1060    argt: @1027    size: @49     
                         algn: 32       used: 0       
@1045   identifier_node  strg: __result lngt: 8       
@1046   pointer_type     qual:   r      unql: @1054    size: @49     
                         algn: 32       ptd : @602    
@1047   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1061   
@1048   identifier_node  strg: __old_x  lngt: 7       
@1049   field_decl       name: @1062    type: @540     scpe: @1001   
                         srcp: stdlib.h:540            chan: @1063   
                         accs: pub      size: @557     algn: 16      
                         bpos: @100    
@1050   identifier_node  strg: __builtin_isprint       lngt: 17      
@1051   function_decl    name: @1064    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1065   
                         lang: C        body: undefined 
                         link: extern  
@1052   identifier_node  strg: __sync_and_and_fetch_8  lngt: 22      
@1053   function_decl    name: @1066    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1067   
                         lang: C        body: undefined 
                         link: extern  
@1054   pointer_type     size: @49      algn: 32       ptd : @602    
@1055   identifier_node  strg: erand48_r               lngt: 9       
@1056   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1068   
@1057   function_decl    name: @1069    type: @1070    srcp: stdlib.h:547    
                         chan: @1071    lang: C        args: @1072   
                         body: undefined               link: extern  
@1058   parm_decl        name: @1012    type: @975     srcp: stdlib.h:550    
                         chan: @1073    argt: @975     size: @49     
                         algn: 32       used: 0       
@1059   parm_decl        name: @1045    type: @1046    srcp: stdlib.h:555    
                         argt: @1046    size: @49      algn: 32      
                         used: 0       
@1060   parm_decl        name: @1045    type: @1046    srcp: stdlib.h:559    
                         argt: @1046    size: @49      algn: 32      
                         used: 0       
@1061   integer_cst      type: @124     low : 2       
@1062   identifier_node  strg: __c      lngt: 3       
@1063   field_decl       name: @1074    type: @540     scpe: @1001   
                         srcp: stdlib.h:541            chan: @1075   
                         accs: pub      size: @557     algn: 16      
                         bpos: @1076   
@1064   identifier_node  strg: islower  lngt: 7       
@1065   function_decl    name: @1077    mngl: @1064    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1078    lang: C        body: undefined 
                         link: extern  
@1066   identifier_node  strg: __sync_and_and_fetch_4  lngt: 22      
@1067   function_decl    name: @1079    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1080   
                         lang: C        body: undefined 
                         link: extern  
@1068   tree_list        valu: @975     chan: @1081   
@1069   identifier_node  strg: drand48_r               lngt: 9       
@1070   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1082   
@1071   function_decl    name: @1083    type: @1084    srcp: stdlib.h:530    
                         chan: @1085    lang: C        args: @1086   
                         body: undefined               link: extern  
@1072   parm_decl        name: @988     type: @1027    srcp: stdlib.h:547    
                         chan: @1087    argt: @1027    size: @49     
                         algn: 32       used: 0       
@1073   parm_decl        name: @988     type: @1027    srcp: stdlib.h:550    
                         chan: @1088    argt: @1027    size: @49     
                         algn: 32       used: 0       
@1074   identifier_node  strg: __init   lngt: 6       
@1075   field_decl       name: @1089    type: @502     scpe: @1001   
                         srcp: stdlib.h:542            chan: @1090   
                         accs: pub      size: @44      algn: 32      
                         bpos: @22     
@1076   integer_cst      type: @21      low : 112     
@1077   identifier_node  strg: __builtin_islower       lngt: 17      
@1078   function_decl    name: @1091    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1092   
                         lang: C        body: undefined 
                         link: extern  
@1079   identifier_node  strg: __sync_and_and_fetch_2  lngt: 22      
@1080   function_decl    name: @1093    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1094   
                         lang: C        body: undefined 
                         link: extern  
@1081   tree_list        valu: @989     chan: @1095   
@1082   tree_list        valu: @989     chan: @1096   
@1083   identifier_node  strg: lcong48  lngt: 7       
@1084   function_type    size: @9       algn: 8        retn: @26     
                         prms: @1097   
@1085   function_decl    name: @1098    type: @1099    srcp: stdlib.h:529    
                         chan: @1100    lang: C        args: @1101   
                         body: undefined               link: extern  
@1086   parm_decl        name: @974     type: @975     srcp: stdlib.h:530    
                         argt: @975     size: @49      algn: 32      
                         used: 0       
@1087   parm_decl        name: @1045    type: @1102    srcp: stdlib.h:547    
                         argt: @1102    size: @49      algn: 32      
                         used: 0       
@1088   parm_decl        name: @1045    type: @1102    srcp: stdlib.h:550    
                         argt: @1102    size: @49      algn: 32      
                         used: 0       
@1089   identifier_node  strg: __a      lngt: 3       
@1090   type_decl        name: @1030    type: @1001    scpe: @1001   
                         srcp: stdlib.h:537            note: artificial 
@1091   identifier_node  strg: isgraph  lngt: 7       
@1092   function_decl    name: @1103    mngl: @1091    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1104    lang: C        body: undefined 
                         link: extern  
@1093   identifier_node  strg: __sync_and_and_fetch_1  lngt: 22      
@1094   function_decl    name: @1105    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1106   
                         lang: C        body: undefined 
                         link: extern  
@1095   tree_list        valu: @88      chan: @11     
@1096   tree_list        valu: @88      chan: @11     
@1097   tree_list        valu: @975     chan: @11     
@1098   identifier_node  strg: seed48   lngt: 6       
@1099   function_type    size: @9       algn: 8        retn: @975    
                         prms: @1107   
@1100   function_decl    name: @1108    type: @1109    srcp: stdlib.h:527    
                         chan: @1110    lang: C        args: @1111   
                         body: undefined               link: extern  
@1101   parm_decl        name: @986     type: @975     srcp: stdlib.h:529    
                         argt: @975     size: @49      algn: 32      
                         used: 0       
@1102   pointer_type     qual:   r      unql: @88      size: @49     
                         algn: 32       ptd : @36     
@1103   identifier_node  strg: __builtin_isgraph       lngt: 17      
@1104   function_decl    name: @1112    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1113   
                         lang: C        body: undefined 
                         link: extern  
@1105   identifier_node  strg: __sync_and_and_fetch    lngt: 20      
@1106   function_decl    name: @1114    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1115   
                         lang: C        body: undefined 
                         link: extern  
@1107   tree_list        valu: @975     chan: @11     
@1108   identifier_node  strg: srand48  lngt: 7       
@1109   function_type    unql: @1116    size: @9       algn: 8       
                         retn: @26      prms: @1117   
@1110   function_decl    name: @1118    type: @1119    srcp: stdlib.h:524    
                         chan: @1120    lang: C        args: @1121   
                         body: undefined               link: extern  
@1111   parm_decl        name: @999     type: @602     srcp: stdlib.h:527    
                         argt: @602     size: @49      algn: 32      
                         used: 0       
@1112   identifier_node  strg: isdigit  lngt: 7       
@1113   function_decl    name: @1122    mngl: @1112    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1123    lang: C        body: undefined 
                         link: extern  
@1114   identifier_node  strg: __sync_or_and_fetch_8   lngt: 21      
@1115   function_decl    name: @1124    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1125   
                         lang: C        body: undefined 
                         link: extern  
@1116   function_type    size: @9       algn: 8        retn: @26     
                         prms: @1117   
@1117   tree_list        valu: @602     chan: @11     
@1118   identifier_node  strg: jrand48  lngt: 7       
@1119   function_type    size: @9       algn: 8        retn: @602    
                         prms: @1126   
@1120   function_decl    name: @1127    type: @1128    srcp: stdlib.h:522    
                         chan: @1129    lang: C        body: undefined 
                         link: extern  
@1121   parm_decl        name: @1012    type: @975     srcp: stdlib.h:524    
                         argt: @975     size: @49      algn: 32      
                         used: 0       
@1122   identifier_node  strg: __builtin_isdigit       lngt: 17      
@1123   function_decl    name: @1130    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1131   
                         lang: C        body: undefined 
                         link: extern  
@1124   identifier_node  strg: __sync_or_and_fetch_4   lngt: 21      
@1125   function_decl    name: @1132    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1133   
                         lang: C        body: undefined 
                         link: extern  
@1126   tree_list        valu: @975     chan: @11     
@1127   identifier_node  strg: mrand48  lngt: 7       
@1128   function_type    unql: @1134    size: @9       algn: 8       
                         retn: @602     prms: @11     
@1129   function_decl    name: @1135    type: @1136    srcp: stdlib.h:519    
                         chan: @1137    lang: C        args: @1138   
                         body: undefined               link: extern  
@1130   identifier_node  strg: iscntrl  lngt: 7       
@1131   function_decl    name: @1139    mngl: @1130    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1140    lang: C        body: undefined 
                         link: extern  
@1132   identifier_node  strg: __sync_or_and_fetch_2   lngt: 21      
@1133   function_decl    name: @1141    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1142   
                         lang: C        body: undefined 
                         link: extern  
@1134   function_type    size: @9       algn: 8        retn: @602    
                         prms: @11     
@1135   identifier_node  strg: nrand48  lngt: 7       
@1136   function_type    size: @9       algn: 8        retn: @602    
                         prms: @1126   
@1137   function_decl    name: @1143    type: @1128    srcp: stdlib.h:517    
                         chan: @1144    lang: C        body: undefined 
                         link: extern  
@1138   parm_decl        name: @1012    type: @975     srcp: stdlib.h:519    
                         argt: @975     size: @49      algn: 32      
                         used: 0       
@1139   identifier_node  strg: __builtin_iscntrl       lngt: 17      
@1140   function_decl    name: @1145    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1146   
                         lang: C        body: undefined 
                         link: extern  
@1141   identifier_node  strg: __sync_or_and_fetch_1   lngt: 21      
@1142   function_decl    name: @1147    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1148   
                         lang: C        body: undefined 
                         link: extern  
@1143   identifier_node  strg: lrand48  lngt: 7       
@1144   function_decl    name: @1149    type: @1150    srcp: stdlib.h:514    
                         chan: @1151    lang: C        args: @1152   
                         body: undefined               link: extern  
@1145   identifier_node  strg: isblank  lngt: 7       
@1146   function_decl    name: @1153    mngl: @1145    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1154    lang: C        body: undefined 
                         link: extern  
@1147   identifier_node  strg: __sync_or_and_fetch     lngt: 19      
@1148   function_decl    name: @1155    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1156   
                         lang: C        body: undefined 
                         link: extern  
@1149   identifier_node  strg: erand48  lngt: 7       
@1150   function_type    size: @9       algn: 8        retn: @36     
                         prms: @1157   
@1151   function_decl    name: @1158    type: @1159    srcp: stdlib.h:513    
                         chan: @1160    lang: C        body: undefined 
                         link: extern  
@1152   parm_decl        name: @1012    type: @975     srcp: stdlib.h:514    
                         argt: @975     size: @49      algn: 32      
                         used: 0       
@1153   identifier_node  strg: __builtin_isblank       lngt: 17      
@1154   function_decl    name: @1161    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1162   
                         lang: C        body: undefined 
                         link: extern  
@1155   identifier_node  strg: __sync_sub_and_fetch_8  lngt: 22      
@1156   function_decl    name: @1163    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1164   
                         lang: C        body: undefined 
                         link: extern  
@1157   tree_list        valu: @975     chan: @11     
@1158   identifier_node  strg: drand48  lngt: 7       
@1159   function_type    unql: @1165    size: @9       algn: 8       
                         retn: @36      prms: @11     
@1160   function_decl    name: @1166    type: @1167    srcp: stdlib.h:505    
                         chan: @1168    lang: C        args: @1169   
                         body: undefined               link: extern  
@1161   identifier_node  strg: isascii  lngt: 7       
@1162   function_decl    name: @1170    mngl: @1161    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1171    lang: C        body: undefined 
                         link: extern  
@1163   identifier_node  strg: __sync_sub_and_fetch_4  lngt: 22      
@1164   function_decl    name: @1172    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1173   
                         lang: C        body: undefined 
                         link: extern  
@1165   function_type    size: @9       algn: 8        retn: @36     
                         prms: @11     
@1166   identifier_node  strg: rand_r   lngt: 6       
@1167   function_type    unql: @1174    size: @9       algn: 8       
                         retn: @33      prms: @1175   
@1168   function_decl    name: @1176    type: @1177    srcp: stdlib.h:500    
                         chan: @1178    lang: C        args: @1179   
                         body: undefined               link: extern  
@1169   parm_decl        name: @1180    type: @1181    srcp: stdlib.h:505    
                         argt: @1181    size: @49      algn: 32      
                         used: 0       
@1170   identifier_node  strg: __builtin_isascii       lngt: 17      
@1171   function_decl    name: @1182    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1183   
                         lang: C        body: undefined 
                         link: extern  
@1172   identifier_node  strg: __sync_sub_and_fetch_2  lngt: 22      
@1173   function_decl    name: @1184    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1185   
                         lang: C        body: undefined 
                         link: extern  
@1174   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1175   
@1175   tree_list        valu: @1181    chan: @11     
@1176   identifier_node  strg: srand    lngt: 5       
@1177   function_type    unql: @1186    size: @9       algn: 8       
                         retn: @26      prms: @1187   
@1178   function_decl    name: @1188    type: @798     srcp: stdlib.h:498    
                         chan: @1189    lang: C        body: undefined 
                         link: extern  
@1179   parm_decl        name: @1180    type: @170     srcp: stdlib.h:500    
                         argt: @170     size: @49      algn: 32      
                         used: 0       
@1180   identifier_node  strg: __seed   lngt: 6       
@1181   pointer_type     size: @49      algn: 32       ptd : @170    
@1182   identifier_node  strg: isalpha  lngt: 7       
@1183   function_decl    name: @1190    mngl: @1182    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1191    lang: C        body: undefined 
                         link: extern  
@1184   identifier_node  strg: __sync_sub_and_fetch_1  lngt: 22      
@1185   function_decl    name: @1192    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1193   
                         lang: C        body: undefined 
                         link: extern  
@1186   function_type    size: @9       algn: 8        retn: @26     
                         prms: @1187   
@1187   tree_list        valu: @170     chan: @11     
@1188   identifier_node  strg: rand     lngt: 4       
@1189   function_decl    name: @1194    type: @1195    srcp: stdlib.h:491    
                         chan: @1196    lang: C        args: @1197   
                         body: undefined               link: extern  
@1190   identifier_node  strg: __builtin_isalpha       lngt: 17      
@1191   function_decl    name: @1198    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1199   
                         lang: C        body: undefined 
                         link: extern  
@1192   identifier_node  strg: __sync_sub_and_fetch    lngt: 20      
@1193   function_decl    name: @1200    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1201   
                         lang: C        body: undefined 
                         link: extern  
@1194   identifier_node  strg: setstate_r              lngt: 10      
@1195   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1202   
@1196   function_decl    name: @1203    type: @1204    srcp: stdlib.h:487    
                         chan: @1205    lang: C        args: @1206   
                         body: undefined               link: extern  
@1197   parm_decl        name: @1207    type: @268     srcp: stdlib.h:491    
                         chan: @1208    argt: @268     size: @49     
                         algn: 32       used: 0       
@1198   identifier_node  strg: isalnum  lngt: 7       
@1199   function_decl    name: @1209    mngl: @1198    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1210    lang: C        body: undefined 
                         link: extern  
@1200   identifier_node  strg: __sync_add_and_fetch_8  lngt: 22      
@1201   function_decl    name: @1211    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1212   
                         lang: C        body: undefined 
                         link: extern  
@1202   tree_list        valu: @39      chan: @1213   
@1203   identifier_node  strg: initstate_r             lngt: 11      
@1204   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1214   
@1205   function_decl    name: @1215    type: @1216    srcp: stdlib.h:482    
                         chan: @1217    lang: C        args: @1218   
                         body: undefined               link: extern  
@1206   parm_decl        name: @1180    type: @170     srcp: stdlib.h:487    
                         chan: @1219    argt: @170     size: @49     
                         algn: 32       used: 0       
@1207   identifier_node  strg: __statebuf              lngt: 10      
@1208   parm_decl        name: @160     type: @1220    srcp: stdlib.h:491    
                         argt: @1220    size: @49      algn: 32      
                         used: 0       
@1209   identifier_node  strg: __builtin_isalnum       lngt: 17      
@1210   function_decl    name: @1221    type: @1222    srcp: <built-in>:0      
                         note: artificial              chan: @1223   
                         lang: C        body: undefined 
                         link: extern  
@1211   identifier_node  strg: __sync_add_and_fetch_4  lngt: 22      
@1212   function_decl    name: @1224    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1225   
                         lang: C        body: undefined 
                         link: extern  
@1213   tree_list        valu: @1226    chan: @11     
@1214   tree_list        valu: @170     chan: @1227   
@1215   identifier_node  strg: srandom_r               lngt: 9       
@1216   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1228   
@1217   function_decl    name: @1229    type: @1230    srcp: stdlib.h:479    
                         chan: @1231    lang: C        args: @1232   
                         body: undefined               link: extern  
@1218   parm_decl        name: @1180    type: @170     srcp: stdlib.h:482    
                         chan: @1233    argt: @170     size: @49     
                         algn: 32       used: 0       
@1219   parm_decl        name: @1207    type: @268     srcp: stdlib.h:487    
                         chan: @1234    argt: @268     size: @49     
                         algn: 32       used: 0       
@1220   pointer_type     qual:   r      unql: @1226    size: @49     
                         algn: 32       ptd : @1235   
@1221   identifier_node  strg: vsscanf  lngt: 7       
@1222   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1236   
@1223   function_decl    name: @1237    mngl: @1221    type: @1222   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1238    lang: C        body: undefined 
                         link: extern  
@1224   identifier_node  strg: __sync_add_and_fetch_2  lngt: 22      
@1225   function_decl    name: @1239    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1240   
                         lang: C        body: undefined 
                         link: extern  
@1226   pointer_type     size: @49      algn: 32       ptd : @1235   
@1227   tree_list        valu: @39      chan: @1241   
@1228   tree_list        valu: @170     chan: @1242   
@1229   identifier_node  strg: random_r lngt: 8       
@1230   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1243   
@1231   function_decl    name: @1244    type: @1245    srcp: stdlib.h:459    
                         chan: @1246    lang: C        args: @1247   
                         body: undefined               link: extern  
@1232   parm_decl        name: @160     type: @1220    srcp: stdlib.h:479    
                         chan: @1248    argt: @1220    size: @49     
                         algn: 32       used: 0       
@1233   parm_decl        name: @160     type: @1226    srcp: stdlib.h:482    
                         argt: @1226    size: @49      algn: 32      
                         used: 0       
@1234   parm_decl        name: @1249    type: @141     srcp: stdlib.h:487    
                         chan: @1250    argt: @141     size: @49     
                         algn: 32       used: 0       
@1235   record_type      name: @1251    size: @1252    algn: 32      
                         tag : struct   flds: @1253    binf: @1254   
@1236   tree_list        valu: @70      chan: @1255   
@1237   identifier_node  strg: __builtin_vsscanf       lngt: 17      
@1238   function_decl    name: @1256    type: @1257    srcp: <built-in>:0      
                         note: artificial              chan: @1258   
                         lang: C        body: undefined 
                         link: extern  
@1239   identifier_node  strg: __sync_add_and_fetch_1  lngt: 22      
@1240   function_decl    name: @1259    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1260   
                         lang: C        body: undefined 
                         link: extern  
@1241   tree_list        valu: @141     chan: @1261   
@1242   tree_list        valu: @1226    chan: @11     
@1243   tree_list        valu: @1226    chan: @1262   
@1244   identifier_node  strg: setstate lngt: 8       
@1245   function_type    size: @9       algn: 8        retn: @39     
                         prms: @763    
@1246   function_decl    name: @1263    type: @1264    srcp: stdlib.h:455    
                         chan: @1265    lang: C        args: @1266   
                         body: undefined               link: extern  
@1247   parm_decl        name: @1207    type: @39      srcp: stdlib.h:459    
                         argt: @39      size: @49      algn: 32      
                         used: 0       
@1248   parm_decl        name: @1045    type: @1267    srcp: stdlib.h:479    
                         argt: @1267    size: @49      algn: 32      
                         used: 0       
@1249   identifier_node  strg: __statelen              lngt: 10      
@1250   parm_decl        name: @160     type: @1220    srcp: stdlib.h:487    
                         argt: @1220    size: @49      algn: 32      
                         used: 0       
@1251   type_decl        name: @1268    type: @1235    srcp: stdlib.h:468    
                         note: artificial              lang: C       
@1252   integer_cst      type: @21      low : 224     
@1253   field_decl       name: @1269    type: @1270    scpe: @1235   
                         srcp: stdlib.h:469            chan: @1271   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1254   binfo            type: @1235    bases: 0       
@1255   tree_list        valu: @70      chan: @1272   
@1256   identifier_node  strg: vsprintf lngt: 8       
@1257   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1273   
@1258   function_decl    name: @1274    mngl: @1256    type: @1257   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1275    lang: C        body: undefined 
                         link: extern  
@1259   identifier_node  strg: __sync_add_and_fetch    lngt: 20      
@1260   function_decl    name: @1276    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1277   
                         lang: C        body: undefined 
                         link: extern  
@1261   tree_list        valu: @1226    chan: @11     
@1262   tree_list        valu: @1270    chan: @11     
@1263   identifier_node  strg: initstate               lngt: 9       
@1264   function_type    size: @9       algn: 8        retn: @39     
                         prms: @1278   
@1265   function_decl    name: @1279    type: @1177    srcp: stdlib.h:448    
                         chan: @1280    lang: C        args: @1281   
                         body: undefined               link: extern  
@1266   parm_decl        name: @1180    type: @170     srcp: stdlib.h:455    
                         chan: @1282    argt: @170     size: @49     
                         algn: 32       used: 0       
@1267   pointer_type     qual:   r      unql: @1270    size: @49     
                         algn: 32       ptd : @1283   
@1268   identifier_node  strg: random_data             lngt: 11      
@1269   identifier_node  strg: fptr     lngt: 4       
@1270   pointer_type     size: @49      algn: 32       ptd : @1283   
@1271   field_decl       name: @1284    type: @1270    scpe: @1235   
                         srcp: stdlib.h:470            chan: @1285   
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@1272   tree_list        valu: @1286    chan: @11     
@1273   tree_list        valu: @39      chan: @1287   
@1274   identifier_node  strg: __builtin_vsprintf      lngt: 18      
@1275   function_decl    name: @1288    type: @1289    srcp: <built-in>:0      
                         note: artificial              chan: @1290   
                         lang: C        body: undefined 
                         link: extern  
@1276   identifier_node  strg: __sync_fetch_and_nand_8 lngt: 23      
@1277   function_decl    name: @1291    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1292   
                         lang: C        body: undefined 
                         link: extern  
@1278   tree_list        valu: @170     chan: @1293   
@1279   identifier_node  strg: srandom  lngt: 7       
@1280   function_decl    name: @1294    type: @1128    srcp: stdlib.h:445    
                         chan: @1295    lang: C        body: undefined 
                         link: extern  
@1281   parm_decl        name: @1180    type: @170     srcp: stdlib.h:448    
                         argt: @170     size: @49      algn: 32      
                         used: 0       
@1282   parm_decl        name: @1207    type: @39      srcp: stdlib.h:455    
                         chan: @1296    argt: @39      size: @49     
                         algn: 32       used: 0       
@1283   integer_type     name: @1297    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1284   identifier_node  strg: rptr     lngt: 4       
@1285   field_decl       name: @1298    type: @1270    scpe: @1235   
                         srcp: stdlib.h:471            chan: @1299   
                         accs: pub      size: @49      algn: 32      
                         bpos: @44     
@1286   pointer_type     name: @1300    unql: @39      size: @49     
                         algn: 32       ptd : @68     
@1287   tree_list        valu: @70      chan: @1301   
@1288   identifier_node  strg: vsnprintf               lngt: 9       
@1289   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1302   
@1290   function_decl    name: @1303    mngl: @1288    type: @1289   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1304    lang: C        body: undefined 
                         link: extern  
@1291   identifier_node  strg: __sync_fetch_and_nand_4 lngt: 23      
@1292   function_decl    name: @1305    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1306   
                         lang: C        body: undefined 
                         link: extern  
@1293   tree_list        valu: @39      chan: @1307   
@1294   identifier_node  strg: random   lngt: 6       
@1295   type_decl        name: @1308    type: @1309    srcp: pthreadtypes.h:163    
                         chan: @1310   
@1296   parm_decl        name: @1249    type: @141     srcp: stdlib.h:455    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@1297   type_decl        name: @1311    type: @1283    srcp: types.h:197    
                         chan: @1312   
@1298   identifier_node  strg: state    lngt: 5       
@1299   field_decl       name: @1313    type: @33      scpe: @1235   
                         srcp: stdlib.h:472            chan: @1314   
                         accs: pub      size: @49      algn: 32      
                         bpos: @100    
@1300   type_decl        name: @1315    type: @1286    srcp: <built-in>:0      
                         chan: @352    
@1301   tree_list        valu: @1286    chan: @11     
@1302   tree_list        valu: @39      chan: @1316   
@1303   identifier_node  strg: __builtin_vsnprintf     lngt: 19      
@1304   function_decl    name: @1317    type: @1318    srcp: <built-in>:0      
                         note: artificial              chan: @1319   
                         lang: C        body: undefined 
                         link: extern  
@1305   identifier_node  strg: __sync_fetch_and_nand_2 lngt: 23      
@1306   function_decl    name: @1320    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1321   
                         lang: C        body: undefined 
                         link: extern  
@1307   tree_list        valu: @141     chan: @11     
@1308   identifier_node  strg: pthread_barrierattr_t   lngt: 21      
@1309   union_type       name: @1295    size: @49      algn: 32      
                         tag : union    flds: @1322    binf: @1323   
@1310   type_decl        name: @1324    type: @1325    srcp: pthreadtypes.h:157    
                         chan: @1326   
@1311   identifier_node  strg: int32_t  lngt: 7       
@1312   type_decl        name: @1327    type: @1328    srcp: types.h:196    
                         chan: @1329   
@1313   identifier_node  strg: rand_type               lngt: 9       
@1314   field_decl       name: @1330    type: @33      scpe: @1235   
                         srcp: stdlib.h:473            chan: @1331   
                         accs: pub      size: @49      algn: 32      
                         bpos: @22     
@1315   identifier_node  strg: __builtin_va_list       lngt: 17      
@1316   tree_list        valu: @170     chan: @1332   
@1317   identifier_node  strg: vscanf   lngt: 6       
@1318   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1333   
@1319   function_decl    name: @1334    mngl: @1317    type: @1318   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1335    lang: C        body: undefined 
                         link: extern  
@1320   identifier_node  strg: __sync_fetch_and_nand_1 lngt: 23      
@1321   function_decl    name: @1336    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1337   
                         lang: C        body: undefined 
                         link: extern  
@1322   field_decl       name: @185     type: @1338    scpe: @1309   
                         srcp: pthreadtypes.h:161      chan: @1339   
                         accs: pub      size: @49      algn: 8       
                         bpos: @45     
@1323   binfo            type: @1309    bases: 0       
@1324   identifier_node  strg: pthread_barrier_t       lngt: 17      
@1325   union_type       name: @1310    size: @1340    algn: 32      
                         tag : union    flds: @1341    binf: @1342   
@1326   type_decl        name: @1343    type: @1344    srcp: pthreadtypes.h:148    
                         chan: @1345   
@1327   identifier_node  strg: int16_t  lngt: 7       
@1328   integer_type     name: @1312    unql: @638     size: @557    
                         algn: 16       prec: 16       sign: signed  
                         min : @663     max : @664    
@1329   type_decl        name: @1346    type: @1347    srcp: types.h:195    
                         chan: @1348   
@1330   identifier_node  strg: rand_deg lngt: 8       
@1331   field_decl       name: @1349    type: @33      scpe: @1235   
                         srcp: stdlib.h:474            chan: @1350   
                         accs: pub      size: @49      algn: 32      
                         bpos: @1340   
@1332   tree_list        valu: @70      chan: @1351   
@1333   tree_list        valu: @70      chan: @1352   
@1334   identifier_node  strg: __builtin_vscanf        lngt: 16      
@1335   function_decl    name: @1353    type: @1354    srcp: <built-in>:0      
                         note: artificial              chan: @1355   
                         lang: C        body: undefined 
                         link: extern  
@1336   identifier_node  strg: __sync_fetch_and_nand   lngt: 21      
@1337   function_decl    name: @1356    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1357   
                         lang: C        body: undefined 
                         link: extern  
@1338   array_type       size: @49      algn: 8        elts: @68     
                         domn: @1358   
@1339   field_decl       name: @1359    type: @33      scpe: @1309   
                         srcp: pthreadtypes.h:162      chan: @1360   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1340   integer_cst      type: @21      low : 160     
@1341   field_decl       name: @185     type: @1361    scpe: @1325   
                         srcp: pthreadtypes.h:155      chan: @1362   
                         accs: pub      size: @1340    algn: 8       
                         bpos: @45     
@1342   binfo            type: @1325    bases: 0       
@1343   identifier_node  strg: pthread_spinlock_t      lngt: 18      
@1344   integer_type     qual:  v       name: @1326    unql: @33     
                         size: @49      algn: 32       prec: 32      
                         sign: signed   min : @65      max : @66     
@1345   type_decl        name: @1363    type: @1364    srcp: pthreadtypes.h:142    
                         chan: @1365   
@1346   identifier_node  strg: int8_t   lngt: 6       
@1347   integer_type     name: @1329    unql: @665     size: @9      
                         algn: 8        prec: 8        sign: signed  
                         min : @685     max : @686    
@1348   type_decl        name: @1366    type: @1367    srcp: types.h:153    
                         chan: @1368   
@1349   identifier_node  strg: rand_sep lngt: 8       
@1350   field_decl       name: @1369    type: @1270    scpe: @1235   
                         srcp: stdlib.h:475            chan: @1370   
                         accs: pub      size: @49      algn: 32      
                         bpos: @353    
@1351   tree_list        valu: @1286    chan: @11     
@1352   tree_list        valu: @1286    chan: @11     
@1353   identifier_node  strg: vprintf  lngt: 7       
@1354   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1333   
@1355   function_decl    name: @1371    mngl: @1353    type: @1354   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1372    lang: C        body: undefined 
                         link: extern  
@1356   identifier_node  strg: __sync_fetch_and_xor_8  lngt: 22      
@1357   function_decl    name: @1373    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1374   
                         lang: C        body: undefined 
                         link: extern  
@1358   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1375   
@1359   identifier_node  strg: __align  lngt: 7       
@1360   type_decl        name: @1376    type: @1309    scpe: @1309   
                         srcp: pthreadtypes.h:160      note: artificial 
@1361   array_type       size: @1340    algn: 8        elts: @68     
                         domn: @1377   
@1362   field_decl       name: @1359    type: @602     scpe: @1325   
                         srcp: pthreadtypes.h:156      chan: @1378   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1363   identifier_node  strg: pthread_rwlockattr_t    lngt: 20      
@1364   union_type       name: @1345    size: @44      algn: 32      
                         tag : union    flds: @1379    binf: @1380   
@1365   type_decl        name: @1381    type: @1382    srcp: pthreadtypes.h:136    
                         chan: @1383   
@1366   identifier_node  strg: uint     lngt: 4       
@1367   integer_type     name: @1348    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1368   type_decl        name: @1384    type: @1385    srcp: types.h:152    
                         chan: @1386   
@1369   identifier_node  strg: end_ptr  lngt: 7       
@1370   type_decl        name: @1268    type: @1235    scpe: @1235   
                         srcp: stdlib.h:468            note: artificial 
@1371   identifier_node  strg: __builtin_vprintf       lngt: 17      
@1372   function_decl    name: @1387    type: @1388    srcp: <built-in>:0      
                         note: artificial              chan: @1389   
                         lang: C        body: undefined 
                         link: extern  
@1373   identifier_node  strg: __sync_fetch_and_xor_4  lngt: 22      
@1374   function_decl    name: @1390    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1391   
                         lang: C        body: undefined 
                         link: extern  
@1375   integer_cst      type: @124     low : 3       
@1376   identifier_node  strg: ._19     lngt: 4       
@1377   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1392   
@1378   type_decl        name: @1393    type: @1325    scpe: @1325   
                         srcp: pthreadtypes.h:154      note: artificial 
@1379   field_decl       name: @185     type: @1394    scpe: @1364   
                         srcp: pthreadtypes.h:140      chan: @1395   
                         accs: pub      size: @44      algn: 8       
                         bpos: @45     
@1380   binfo            type: @1364    bases: 0       
@1381   identifier_node  strg: pthread_rwlock_t        lngt: 16      
@1382   union_type       name: @1365    size: @1396    algn: 32      
                         tag : union    flds: @1397    binf: @1398   
@1383   type_decl        name: @1399    type: @1400    srcp: pthreadtypes.h:113    
                         chan: @1401   
@1384   identifier_node  strg: ushort   lngt: 6       
@1385   integer_type     name: @1368    unql: @540     size: @557    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @558     max : @559    
@1386   type_decl        name: @1402    type: @1403    srcp: types.h:151    
                         chan: @1404   
@1387   identifier_node  strg: vfscanf  lngt: 7       
@1388   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1405   
@1389   function_decl    name: @1406    mngl: @1387    type: @1388   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1407    lang: C        body: undefined 
                         link: extern  
@1390   identifier_node  strg: __sync_fetch_and_xor_2  lngt: 22      
@1391   function_decl    name: @1408    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1409   
                         lang: C        body: undefined 
                         link: extern  
@1392   integer_cst      type: @124     low : 19      
@1393   identifier_node  strg: ._18     lngt: 4       
@1394   array_type       size: @44      algn: 8        elts: @68     
                         domn: @1410   
@1395   field_decl       name: @1359    type: @602     scpe: @1364   
                         srcp: pthreadtypes.h:141      chan: @1411   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1396   integer_cst      type: @21      low : 256     
@1397   field_decl       name: @1412    type: @1413    scpe: @1382   
                         srcp: pthreadtypes.h:133      chan: @1414   
                         accs: pub      size: @1396    algn: 32      
                         bpos: @45     
@1398   binfo            type: @1382    bases: 0       
@1399   identifier_node  strg: pthread_once_t          lngt: 14      
@1400   integer_type     name: @1383    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1401   type_decl        name: @1415    type: @1416    srcp: pthreadtypes.h:109    
                         chan: @1417   
@1402   identifier_node  strg: ulong    lngt: 5       
@1403   integer_type     name: @1386    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@1404   type_decl        name: @1421    type: @1422    srcp: types.h:141    
                         chan: @1423   
@1405   tree_list        valu: @1424    chan: @1425   
@1406   identifier_node  strg: __builtin_vfscanf       lngt: 17      
@1407   function_decl    name: @1426    type: @1427    srcp: <built-in>:0      
                         note: artificial              chan: @1428   
                         lang: C        body: undefined 
                         link: extern  
@1408   identifier_node  strg: __sync_fetch_and_xor_1  lngt: 22      
@1409   function_decl    name: @1429    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1430   
                         lang: C        body: undefined 
                         link: extern  
@1410   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1431   
@1411   type_decl        name: @1432    type: @1364    scpe: @1364   
                         srcp: pthreadtypes.h:139      note: artificial 
@1412   identifier_node  strg: __data   lngt: 6       
@1413   record_type      name: @1433    size: @1396    algn: 32      
                         tag : struct   flds: @1434    binf: @1435   
@1414   field_decl       name: @185     type: @1436    scpe: @1382   
                         srcp: pthreadtypes.h:134      chan: @1437   
                         accs: pub      size: @1396    algn: 8       
                         bpos: @45     
@1415   identifier_node  strg: pthread_key_t           lngt: 13      
@1416   integer_type     name: @1401    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1417   type_decl        name: @1438    type: @1439    srcp: pthreadtypes.h:105    
                         chan: @1440   
@1418   integer_type     name: @1441    size: @49      algn: 32      
                         prec: 32       sign: unsigned min : @1419   
                         max : @1420   
@1419   integer_cst      type: @1418    low : 0       
@1420   integer_cst      type: @1418    low : -1      
@1421   identifier_node  strg: suseconds_t             lngt: 11      
@1422   integer_type     name: @1404    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1423   type_decl        name: @1442    type: @1443    srcp: types.h:137    
                         chan: @1444   
@1424   pointer_type     unql: @58      size: @49      algn: 32      
                         ptd : @26     
@1425   tree_list        valu: @70      chan: @1445   
@1426   identifier_node  strg: vfprintf lngt: 8       
@1427   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1405   
@1428   function_decl    name: @1446    mngl: @1426    type: @1427   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1447    lang: C        body: undefined 
                         link: extern  
@1429   identifier_node  strg: __sync_fetch_and_xor    lngt: 20      
@1430   function_decl    name: @1448    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1449   
                         lang: C        body: undefined 
                         link: extern  
@1431   integer_cst      type: @124     low : 7       
@1432   identifier_node  strg: ._17     lngt: 4       
@1433   type_decl        name: @1450    type: @1413    scpe: @1382   
                         srcp: pthreadtypes.h:122      note: artificial 
                         lang: C       
@1434   field_decl       name: @1451    type: @33      scpe: @1413   
                         srcp: pthreadtypes.h:123      chan: @1452   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1435   binfo            type: @1413    bases: 0       
@1436   array_type       size: @1396    algn: 8        elts: @68     
                         domn: @1453   
@1437   field_decl       name: @1359    type: @602     scpe: @1382   
                         srcp: pthreadtypes.h:135      chan: @1454   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1438   identifier_node  strg: pthread_condattr_t      lngt: 18      
@1439   union_type       name: @1417    size: @49      algn: 32      
                         tag : union    flds: @1455    binf: @1456   
@1440   type_decl        name: @1457    type: @1458    srcp: pthreadtypes.h:99     
                         chan: @1459   
@1441   type_decl        name: @1460    type: @1418    srcp: <built-in>:0      
                         note: artificial 
@1442   identifier_node  strg: useconds_t              lngt: 10      
@1443   integer_type     name: @1423    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1444   type_decl        name: @1461    type: @1462    srcp: time.h:105    
                         chan: @1463   
@1445   tree_list        valu: @1286    chan: @11     
@1446   identifier_node  strg: __builtin_vfprintf      lngt: 18      
@1447   function_decl    name: @1464    type: @1465    srcp: <built-in>:0      
                         note: artificial              chan: @1466   
                         lang: C        body: undefined 
                         link: extern  
@1448   identifier_node  strg: __sync_fetch_and_and_8  lngt: 22      
@1449   function_decl    name: @1467    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1468   
                         lang: C        body: undefined 
                         link: extern  
@1450   identifier_node  strg: ._16     lngt: 4       
@1451   identifier_node  strg: __lock   lngt: 6       
@1452   field_decl       name: @1469    type: @170     scpe: @1413   
                         srcp: pthreadtypes.h:124      chan: @1470   
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@1453   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1471   
@1454   type_decl        name: @1472    type: @1382    scpe: @1382   
                         srcp: pthreadtypes.h:120      note: artificial 
                         chan: @1433   
@1455   field_decl       name: @185     type: @1338    scpe: @1439   
                         srcp: pthreadtypes.h:103      chan: @1473   
                         accs: pub      size: @49      algn: 8       
                         bpos: @45     
@1456   binfo            type: @1439    bases: 0       
@1457   identifier_node  strg: pthread_cond_t          lngt: 14      
@1458   union_type       name: @1440    size: @1474    algn: 32      
                         tag : union    flds: @1475    binf: @1476   
@1459   type_decl        name: @1477    type: @1478    srcp: pthreadtypes.h:79     
                         chan: @1479   
@1460   identifier_node  strg: long unsigned int       lngt: 17      
@1461   identifier_node  strg: timer_t  lngt: 7       
@1462   pointer_type     name: @1444    unql: @58      size: @49     
                         algn: 32       ptd : @26     
@1463   type_decl        name: @1480    type: @1481    srcp: time.h:93     
                         chan: @1482   
@1464   identifier_node  strg: sscanf   lngt: 6       
@1465   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1483   
@1466   function_decl    name: @1484    mngl: @1464    type: @1465   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1485    lang: C        body: undefined 
                         link: extern  
@1467   identifier_node  strg: __sync_fetch_and_and_4  lngt: 22      
@1468   function_decl    name: @1486    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1487   
                         lang: C        body: undefined 
                         link: extern  
@1469   identifier_node  strg: __nr_readers            lngt: 12      
@1470   field_decl       name: @1488    type: @170     scpe: @1413   
                         srcp: pthreadtypes.h:125      chan: @1489   
                         accs: pub      size: @49      algn: 32      
                         bpos: @44     
@1471   integer_cst      type: @124     low : 31      
@1472   identifier_node  strg: ._15     lngt: 4       
@1473   field_decl       name: @1359    type: @602     scpe: @1439   
                         srcp: pthreadtypes.h:104      chan: @1490   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1474   integer_cst      type: @21      low : 384     
@1475   field_decl       name: @1412    type: @1491    scpe: @1458   
                         srcp: pthreadtypes.h:96       chan: @1492   
                         accs: pub      size: @1493    algn: 32      
                         bpos: @45     
@1476   binfo            type: @1458    bases: 0       
@1477   identifier_node  strg: pthread_mutexattr_t     lngt: 19      
@1478   union_type       name: @1459    size: @49      algn: 32      
                         tag : union    flds: @1494    binf: @1495   
@1479   type_decl        name: @1496    type: @1497    srcp: pthreadtypes.h:73     
                         chan: @1498   
@1480   identifier_node  strg: clockid_t               lngt: 9       
@1481   integer_type     name: @1463    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1482   type_decl        name: @1499    type: @1500    srcp: time.h:77     
                         chan: @1501   
@1483   tree_list        valu: @70      chan: @1502   
@1484   identifier_node  strg: __builtin_sscanf        lngt: 16      
@1485   function_decl    name: @1503    type: @1504    srcp: <built-in>:0      
                         note: artificial              chan: @1505   
                         lang: C        body: undefined 
                         link: extern  
@1486   identifier_node  strg: __sync_fetch_and_and_2  lngt: 22      
@1487   function_decl    name: @1506    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1507   
                         lang: C        body: undefined 
                         link: extern  
@1488   identifier_node  strg: __readers_wakeup        lngt: 16      
@1489   field_decl       name: @1508    type: @170     scpe: @1413   
                         srcp: pthreadtypes.h:126      chan: @1509   
                         accs: pub      size: @49      algn: 32      
                         bpos: @100    
@1490   type_decl        name: @1510    type: @1439    scpe: @1439   
                         srcp: pthreadtypes.h:102      note: artificial 
@1491   record_type      name: @1511    size: @1493    algn: 32      
                         tag : struct   flds: @1512    binf: @1513   
@1492   field_decl       name: @185     type: @1514    scpe: @1458   
                         srcp: pthreadtypes.h:97       chan: @1515   
                         accs: pub      size: @1474    algn: 8       
                         bpos: @45     
@1493   integer_cst      type: @21      low : 352     
@1494   field_decl       name: @185     type: @1338    scpe: @1478   
                         srcp: pthreadtypes.h:77       chan: @1516   
                         accs: pub      size: @49      algn: 8       
                         bpos: @45     
@1495   binfo            type: @1478    bases: 0       
@1496   identifier_node  strg: pthread_mutex_t         lngt: 15      
@1497   union_type       name: @1479    size: @353     algn: 32      
                         tag : union    flds: @1517    binf: @1518   
@1498   type_decl        name: @1519    type: @1520    srcp: pthreadtypes.h:49     
                         chan: @1521   
@1499   identifier_node  strg: time_t   lngt: 6       
@1500   integer_type     name: @1482    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1501   type_decl        name: @1522    type: @1523    srcp: time.h:61     
                         chan: @1524   
@1502   tree_list        valu: @70     
@1503   identifier_node  strg: sprintf  lngt: 7       
@1504   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1525   
@1505   function_decl    name: @1526    mngl: @1503    type: @1504   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1527    lang: C        body: undefined 
                         link: extern  
@1506   identifier_node  strg: __sync_fetch_and_and_1  lngt: 22      
@1507   function_decl    name: @1528    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1529   
                         lang: C        body: undefined 
                         link: extern  
@1508   identifier_node  strg: __writer_wakeup         lngt: 15      
@1509   field_decl       name: @1530    type: @170     scpe: @1413   
                         srcp: pthreadtypes.h:127      chan: @1531   
                         accs: pub      size: @49      algn: 32      
                         bpos: @22     
@1510   identifier_node  strg: ._14     lngt: 4       
@1511   type_decl        name: @1532    type: @1491    scpe: @1458   
                         srcp: pthreadtypes.h:87       note: artificial 
                         lang: C       
@1512   field_decl       name: @1451    type: @33      scpe: @1491   
                         srcp: pthreadtypes.h:88       chan: @1533   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1513   binfo            type: @1491    bases: 0       
@1514   array_type       size: @1474    algn: 8        elts: @68     
                         domn: @1534   
@1515   field_decl       name: @1359    type: @576     scpe: @1458   
                         srcp: pthreadtypes.h:98       chan: @1535   
                         accs: pub      size: @44      algn: 32      
                         bpos: @45     
@1516   field_decl       name: @1359    type: @602     scpe: @1478   
                         srcp: pthreadtypes.h:78       chan: @1536   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1517   field_decl       name: @1412    type: @1537    scpe: @1497   
                         srcp: pthreadtypes.h:70       chan: @1538   
                         accs: pub      size: @353     algn: 32      
                         bpos: @45     
@1518   binfo            type: @1497    bases: 0       
@1519   identifier_node  strg: __pthread_slist_t       lngt: 17      
@1520   record_type      name: @1498    unql: @1539    size: @49     
                         algn: 32       tag : struct   flds: @1540   
                         binf: @1541   
@1521   type_decl        name: @1542    type: @1543    srcp: pthreadtypes.h:43     
                         chan: @1544   
@1522   identifier_node  strg: clock_t  lngt: 7       
@1523   integer_type     name: @1501    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1524   type_decl        name: @1545    type: @1546    srcp: types.h:123    
                         chan: @1547   
@1525   tree_list        valu: @39      chan: @1548   
@1526   identifier_node  strg: __builtin_sprintf       lngt: 17      
@1527   function_decl    name: @1549    type: @1550    srcp: <built-in>:0      
                         note: artificial              chan: @1551   
                         lang: C        body: undefined 
                         link: extern  
@1528   identifier_node  strg: __sync_fetch_and_and    lngt: 20      
@1529   function_decl    name: @1552    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1553   
                         lang: C        body: undefined 
                         link: extern  
@1530   identifier_node  strg: __nr_readers_queued     lngt: 19      
@1531   field_decl       name: @1554    type: @170     scpe: @1413   
                         srcp: pthreadtypes.h:128      chan: @1555   
                         accs: pub      size: @49      algn: 32      
                         bpos: @1340   
@1532   identifier_node  strg: ._13     lngt: 4       
@1533   field_decl       name: @1556    type: @170     scpe: @1491   
                         srcp: pthreadtypes.h:89       chan: @1557   
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@1534   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1558   
@1535   type_decl        name: @1559    type: @1458    scpe: @1458   
                         srcp: pthreadtypes.h:85       note: artificial 
                         chan: @1511   
@1536   type_decl        name: @1560    type: @1478    scpe: @1478   
                         srcp: pthreadtypes.h:76       note: artificial 
@1537   record_type      name: @1561    size: @353     algn: 32      
                         tag : struct   flds: @1562    binf: @1563   
@1538   field_decl       name: @185     type: @1564    scpe: @1497   
                         srcp: pthreadtypes.h:71       chan: @1565   
                         accs: pub      size: @353     algn: 8       
                         bpos: @45     
@1539   record_type      name: @1566    size: @49      algn: 32      
                         tag : struct   flds: @1540    binf: @1541   
@1540   field_decl       name: @1567    type: @1568    scpe: @1539   
                         srcp: pthreadtypes.h:48       chan: @1569   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1541   binfo            type: @1539    bases: 0       
@1542   identifier_node  strg: pthread_attr_t          lngt: 14      
@1543   union_type       name: @1521    size: @1570    algn: 32      
                         tag : union    flds: @1571    binf: @1572   
@1544   type_decl        name: @1573    type: @1574    srcp: pthreadtypes.h:36     
                         chan: @1575   
@1545   identifier_node  strg: key_t    lngt: 5       
@1546   integer_type     name: @1524    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1547   type_decl        name: @1576    type: @1577    srcp: types.h:117    
                         chan: @1578   
@1548   tree_list        valu: @70     
@1549   identifier_node  strg: snprintf lngt: 8       
@1550   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1579   
@1551   function_decl    name: @1580    mngl: @1549    type: @1550   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1581    lang: C        body: undefined 
                         link: extern  
@1552   identifier_node  strg: __sync_fetch_and_or_8   lngt: 21      
@1553   function_decl    name: @1582    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1583   
                         lang: C        body: undefined 
                         link: extern  
@1554   identifier_node  strg: __nr_writers_queued     lngt: 19      
@1555   field_decl       name: @1584    type: @170     scpe: @1413   
                         srcp: pthreadtypes.h:131      chan: @1585   
                         accs: pub      size: @49      algn: 32      
                         bpos: @353    
@1556   identifier_node  strg: __futex  lngt: 7       
@1557   field_decl       name: @1586    type: @502     scpe: @1491   
                         srcp: pthreadtypes.h:90       chan: @1587   
                         accs: pub      size: @44      algn: 32      
                         bpos: @44     
@1558   integer_cst      type: @124     low : 47      
@1559   identifier_node  strg: ._12     lngt: 4       
@1560   identifier_node  strg: ._11     lngt: 4       
@1561   type_decl        name: @1588    type: @1537    scpe: @1497   
                         srcp: pthreadtypes.h:57       note: artificial 
                         lang: C       
@1562   field_decl       name: @1451    type: @33      scpe: @1537   
                         srcp: pthreadtypes.h:58       chan: @1589   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1563   binfo            type: @1537    bases: 0       
@1564   array_type       size: @353     algn: 8        elts: @68     
                         domn: @1590   
@1565   field_decl       name: @1359    type: @602     scpe: @1497   
                         srcp: pthreadtypes.h:72       chan: @1591   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1566   type_decl        name: @1592    type: @1539    srcp: pthreadtypes.h:47     
                         note: artificial 
@1567   identifier_node  strg: __next   lngt: 6       
@1568   pointer_type     size: @49      algn: 32       ptd : @1539   
@1569   type_decl        name: @1592    type: @1539    scpe: @1539   
                         srcp: pthreadtypes.h:47       note: artificial 
@1570   integer_cst      type: @21      low : 288     
@1571   field_decl       name: @185     type: @1593    scpe: @1543   
                         srcp: pthreadtypes.h:41       chan: @1594   
                         accs: pub      size: @1570    algn: 8       
                         bpos: @45     
@1572   binfo            type: @1543    bases: 0       
@1573   identifier_node  strg: pthread_t               lngt: 9       
@1574   integer_type     name: @1544    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@1575   type_decl        name: @1595    type: @1596    srcp: types.h:264    
                         chan: @1597   
@1576   identifier_node  strg: caddr_t  lngt: 7       
@1577   pointer_type     name: @1547    unql: @39      size: @49     
                         algn: 32       ptd : @68     
@1578   type_decl        name: @1598    type: @1599    srcp: types.h:116    
                         chan: @1600   
@1579   tree_list        valu: @39      chan: @1601   
@1580   identifier_node  strg: __builtin_snprintf      lngt: 18      
@1581   function_decl    name: @1602    type: @1603    srcp: <built-in>:0      
                         note: artificial              chan: @1604   
                         lang: C        body: undefined 
                         link: extern  
@1582   identifier_node  strg: __sync_fetch_and_or_4   lngt: 21      
@1583   function_decl    name: @1605    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1606   
                         lang: C        body: undefined 
                         link: extern  
@1584   identifier_node  strg: __flags  lngt: 7       
@1585   field_decl       name: @1607    type: @33      scpe: @1413   
                         srcp: pthreadtypes.h:132      chan: @1608   
                         accs: pub      size: @49      algn: 32      
                         bpos: @1252   
@1586   identifier_node  strg: __total_seq             lngt: 11      
@1587   field_decl       name: @1609    type: @502     scpe: @1491   
                         srcp: pthreadtypes.h:91       chan: @1610   
                         accs: pub      size: @44      algn: 32      
                         bpos: @22     
@1588   identifier_node  strg: __pthread_mutex_s       lngt: 17      
@1589   field_decl       name: @1611    type: @170     scpe: @1537   
                         srcp: pthreadtypes.h:59       chan: @1612   
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@1590   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1613   
@1591   type_decl        name: @1614    type: @1497    scpe: @1497   
                         srcp: pthreadtypes.h:55       note: artificial 
                         chan: @1561   
@1592   identifier_node  strg: __pthread_internal_slist 
                         lngt: 24      
@1593   array_type       size: @1570    algn: 8        elts: @68     
                         domn: @1615   
@1594   field_decl       name: @1359    type: @602     scpe: @1543   
                         srcp: pthreadtypes.h:42       chan: @1616   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1595   identifier_node  strg: fsfilcnt64_t            lngt: 12      
@1596   integer_type     name: @1575    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@1597   type_decl        name: @1617    type: @1618    srcp: types.h:263    
                         chan: @1619   
@1598   identifier_node  strg: daddr_t  lngt: 7       
@1599   integer_type     name: @1578    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1600   type_decl        name: @1620    type: @1621    srcp: types.h:110    
                         chan: @1622   
@1601   tree_list        valu: @170     chan: @1623   
@1602   identifier_node  strg: scanf    lngt: 5       
@1603   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1624   
@1604   function_decl    name: @1625    mngl: @1602    type: @1603   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1626    lang: C        body: undefined 
                         link: extern  
@1605   identifier_node  strg: __sync_fetch_and_or_2   lngt: 21      
@1606   function_decl    name: @1627    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1628   
                         lang: C        body: undefined 
                         link: extern  
@1607   identifier_node  strg: __writer lngt: 8       
@1608   type_decl        name: @1450    type: @1413    scpe: @1413   
                         srcp: pthreadtypes.h:122      note: artificial 
@1609   identifier_node  strg: __wakeup_seq            lngt: 12      
@1610   field_decl       name: @1629    type: @502     scpe: @1491   
                         srcp: pthreadtypes.h:92       chan: @1630   
                         accs: pub      size: @44      algn: 32      
                         bpos: @353    
@1611   identifier_node  strg: __count  lngt: 7       
@1612   field_decl       name: @1631    type: @33      scpe: @1537   
                         srcp: pthreadtypes.h:60       chan: @1632   
                         accs: pub      size: @49      algn: 32      
                         bpos: @44     
@1613   integer_cst      type: @124     low : 23      
@1614   identifier_node  strg: ._9      lngt: 3       
@1615   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @1633   
@1616   type_decl        name: @1634    type: @1543    scpe: @1543   
                         srcp: pthreadtypes.h:40       note: artificial 
@1617   identifier_node  strg: fsblkcnt64_t            lngt: 12      
@1618   integer_type     name: @1597    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@1619   type_decl        name: @1635    type: @1636    srcp: types.h:262    
                         chan: @1637   
@1620   identifier_node  strg: ssize_t  lngt: 7       
@1621   integer_type     name: @1600    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1622   type_decl        name: @1638    type: @1639    srcp: types.h:105    
                         chan: @1640   
@1623   tree_list        valu: @70     
@1624   tree_list        valu: @70     
@1625   identifier_node  strg: __builtin_scanf         lngt: 15      
@1626   function_decl    name: @1641    type: @1642    srcp: <built-in>:0      
                         note: artificial              chan: @1643   
                         lang: C        body: undefined 
                         link: extern  
@1627   identifier_node  strg: __sync_fetch_and_or_1   lngt: 21      
@1628   function_decl    name: @1644    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1645   
                         lang: C        body: undefined 
                         link: extern  
@1629   identifier_node  strg: __woken_seq             lngt: 11      
@1630   field_decl       name: @1646    type: @58      scpe: @1491   
                         srcp: pthreadtypes.h:93       chan: @1647   
                         accs: pub      size: @49      algn: 32      
                         bpos: @1396   
@1631   identifier_node  strg: __owner  lngt: 7       
@1632   field_decl       name: @1648    type: @33      scpe: @1537   
                         srcp: pthreadtypes.h:63       chan: @1649   
                         accs: pub      size: @49      algn: 32      
                         bpos: @100    
@1633   integer_cst      type: @124     low : 35      
@1634   identifier_node  strg: ._8      lngt: 3       
@1635   identifier_node  strg: blkcnt64_t              lngt: 10      
@1636   integer_type     name: @1619    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@1637   type_decl        name: @1650    type: @1651    srcp: types.h:243    
                         chan: @1652   
@1638   identifier_node  strg: id_t     lngt: 4       
@1639   integer_type     name: @1622    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1640   type_decl        name: @1653    type: @1654    srcp: types.h:100    
                         chan: @1655   
@1641   identifier_node  strg: puts_unlocked           lngt: 13      
@1642   function_type    size: @9       algn: 8        retn: @33     
                         prms: @243    
@1643   function_decl    name: @1656    mngl: @1641    type: @1642   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1657    lang: C        body: undefined 
                         link: extern  
@1644   identifier_node  strg: __sync_fetch_and_or     lngt: 19      
@1645   function_decl    name: @1658    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1659   
                         lang: C        body: undefined 
                         link: extern  
@1646   identifier_node  strg: __mutex  lngt: 7       
@1647   field_decl       name: @1660    type: @170     scpe: @1491   
                         srcp: pthreadtypes.h:94       chan: @1661   
                         accs: pub      size: @49      algn: 32      
                         bpos: @1570   
@1648   identifier_node  strg: __kind   lngt: 6       
@1649   field_decl       name: @1662    type: @170     scpe: @1537   
                         srcp: pthreadtypes.h:64       chan: @1663   
                         accs: pub      size: @49      algn: 32      
                         bpos: @22     
@1650   identifier_node  strg: fsfilcnt_t              lngt: 10      
@1651   integer_type     name: @1637    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@1652   type_decl        name: @1664    type: @1665    srcp: types.h:239    
                         chan: @1666   
@1653   identifier_node  strg: pid_t    lngt: 5       
@1654   integer_type     name: @1640    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1655   type_decl        name: @1667    type: @1668    srcp: types.h:95     
                         chan: @1669   
@1656   identifier_node  strg: __builtin_puts_unlocked lngt: 23      
@1657   function_decl    name: @1670    type: @1642    srcp: <built-in>:0      
                         note: artificial              chan: @1671   
                         lang: C        body: undefined 
                         link: extern  
@1658   identifier_node  strg: __sync_fetch_and_sub_8  lngt: 22      
@1659   function_decl    name: @1672    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1673   
                         lang: C        body: undefined 
                         link: extern  
@1660   identifier_node  strg: __nwaiters              lngt: 10      
@1661   field_decl       name: @1674    type: @170     scpe: @1491   
                         srcp: pthreadtypes.h:95       chan: @1675   
                         accs: pub      size: @49      algn: 32      
                         bpos: @1676   
@1662   identifier_node  strg: __nusers lngt: 8       
@1663   field_decl       type: @1677    scpe: @1537    srcp: pthreadtypes.h:69     
                         chan: @1678    accs: pub      size: @49     
                         algn: 32       bpos: @1340   
@1664   identifier_node  strg: fsblkcnt_t              lngt: 10      
@1665   integer_type     name: @1652    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@1666   type_decl        name: @1679    type: @1680    srcp: types.h:235    
                         chan: @1681   
@1667   identifier_node  strg: off64_t  lngt: 7       
@1668   integer_type     name: @1655    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@1669   type_decl        name: @1682    type: @1683    srcp: types.h:88     
                         chan: @1684   
@1670   identifier_node  strg: puts     lngt: 4       
@1671   function_decl    name: @1685    mngl: @1670    type: @1642   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1686    lang: C        body: undefined 
                         link: extern  
@1672   identifier_node  strg: __sync_fetch_and_sub_4  lngt: 22      
@1673   function_decl    name: @1687    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1688   
                         lang: C        body: undefined 
                         link: extern  
@1674   identifier_node  strg: __broadcast_seq         lngt: 15      
@1675   type_decl        name: @1532    type: @1491    scpe: @1491   
                         srcp: pthreadtypes.h:87       note: artificial 
@1676   integer_cst      type: @21      low : 320     
@1677   union_type       name: @1689    size: @49      algn: 32      
                         tag : union    flds: @1690    binf: @1691   
@1678   type_decl        name: @1588    type: @1537    scpe: @1537   
                         srcp: pthreadtypes.h:57       note: artificial 
                         chan: @1689   
@1679   identifier_node  strg: blkcnt_t lngt: 8       
@1680   integer_type     name: @1666    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1681   type_decl        name: @1692    type: @1693    srcp: types.h:228    
                         chan: @1694   
@1682   identifier_node  strg: off_t    lngt: 5       
@1683   integer_type     name: @1669    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1684   type_decl        name: @1695    type: @1696    srcp: types.h:82     
                         chan: @1697   
@1685   identifier_node  strg: __builtin_puts          lngt: 14      
@1686   function_decl    name: @1698    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1699   
                         lang: C        body: undefined 
                         link: extern  
@1687   identifier_node  strg: __sync_fetch_and_sub_2  lngt: 22      
@1688   function_decl    name: @1700    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1701   
                         lang: C        body: undefined 
                         link: extern  
@1689   type_decl        name: @1702    type: @1677    scpe: @1537   
                         srcp: pthreadtypes.h:66       note: artificial 
@1690   field_decl       name: @1703    type: @33      scpe: @1677   
                         srcp: pthreadtypes.h:67       chan: @1704   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1691   binfo            type: @1677    bases: 0       
@1692   identifier_node  strg: blksize_t               lngt: 9       
@1693   integer_type     name: @1681    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1694   function_decl    name: @1705    type: @1706    srcp: sysmacros.h:54     
                         chan: @1707    lang: C        args: @1708   
                         body: undefined               link: extern  
                         body: @1709   
@1695   identifier_node  strg: uid_t    lngt: 5       
@1696   integer_type     name: @1684    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1697   type_decl        name: @1710    type: @1711    srcp: types.h:77     
                         chan: @1712   
@1698   identifier_node  strg: putchar_unlocked        lngt: 16      
@1699   function_decl    name: @1713    mngl: @1698    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1714    lang: C        body: undefined 
                         link: extern  
@1700   identifier_node  strg: __sync_fetch_and_sub_1  lngt: 22      
@1701   function_decl    name: @1715    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1716   
                         lang: C        body: undefined 
                         link: extern  
@1702   identifier_node  strg: ._10     lngt: 4       
@1703   identifier_node  strg: __spins  lngt: 7       
@1704   field_decl       name: @1717    type: @1520    scpe: @1677   
                         srcp: pthreadtypes.h:68       chan: @1718   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1705   identifier_node  strg: gnu_dev_makedev         lngt: 15      
@1706   function_type    unql: @1719    size: @9       algn: 8       
                         retn: @502     prms: @1720   
@1707   function_decl    name: @1721    type: @1722    srcp: sysmacros.h:48     
                         chan: @1723    lang: C        args: @1724   
                         body: undefined               link: extern  
                         body: @1725   
@1708   parm_decl        name: @1726    type: @170     scpe: @1694   
                         srcp: sysmacros.h:54          chan: @1727   
                         argt: @170     size: @49      algn: 32      
                         used: 1       
@1709   bind_expr        type: @26      vars: @1728    body: @1729   
@1710   identifier_node  strg: nlink_t  lngt: 7       
@1711   integer_type     name: @1697    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1712   type_decl        name: @1730    type: @1731    srcp: types.h:72     
                         chan: @1732   
@1713   identifier_node  strg: __builtin_putchar_unlocked 
                         lngt: 26      
@1714   function_decl    name: @1733    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @1734   
                         lang: C        body: undefined 
                         link: extern  
@1715   identifier_node  strg: __sync_fetch_and_sub    lngt: 20      
@1716   function_decl    name: @1735    type: @735     srcp: <built-in>:0      
                         note: artificial              chan: @1736   
                         lang: C        body: undefined 
                         link: extern  
@1717   identifier_node  strg: __list   lngt: 6       
@1718   type_decl        name: @1702    type: @1677    scpe: @1677   
                         srcp: pthreadtypes.h:66       note: artificial 
@1719   function_type    size: @9       algn: 8        retn: @502    
                         prms: @1720   
@1720   tree_list        valu: @170     chan: @1737   
@1721   identifier_node  strg: gnu_dev_minor           lngt: 13      
@1722   function_type    unql: @1738    size: @9       algn: 8       
                         retn: @170     prms: @1739   
@1723   function_decl    name: @1740    type: @1722    srcp: sysmacros.h:42     
                         chan: @1741    lang: C        args: @1742   
                         body: undefined               link: extern  
                         body: @1743   
@1724   parm_decl        name: @1744    type: @502     scpe: @1707   
                         srcp: sysmacros.h:48          argt: @502    
                         size: @44      algn: 64       used: 1       
@1725   bind_expr        type: @26      vars: @1745    body: @1746   
@1726   identifier_node  strg: __major  lngt: 7       
@1727   parm_decl        name: @1747    type: @170     scpe: @1694   
                         srcp: sysmacros.h:54          argt: @170    
                         size: @49      algn: 32       used: 1       
@1728   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1748   
                         size: @44      algn: 64       used: 1       
@1729   statement_list   0   : @1749   
@1730   identifier_node  strg: mode_t   lngt: 6       
@1731   integer_type     name: @1712    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1732   type_decl        name: @1750    type: @1751    srcp: types.h:67     
                         chan: @1752   
@1733   identifier_node  strg: putchar  lngt: 7       
@1734   function_decl    name: @1753    mngl: @1733    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @1754    lang: C        body: undefined 
                         link: extern  
@1735   identifier_node  strg: __sync_fetch_and_add_8  lngt: 22      
@1736   function_decl    name: @1755    type: @749     srcp: <built-in>:0      
                         note: artificial              chan: @1756   
                         lang: C        body: undefined 
                         link: extern  
@1737   tree_list        valu: @170     chan: @11     
@1738   function_type    size: @9       algn: 8        retn: @170    
                         prms: @1739   
@1739   tree_list        valu: @502     chan: @11     
@1740   identifier_node  strg: gnu_dev_major           lngt: 13      
@1741   function_decl    name: @1757    type: @1758    srcp: select.h:125    
                         chan: @1759    lang: C        args: @1760   
                         body: undefined               link: extern  
@1742   parm_decl        name: @1744    type: @502     scpe: @1723   
                         srcp: sysmacros.h:42          argt: @502    
                         size: @44      algn: 64       used: 1       
@1743   bind_expr        type: @26      vars: @1761    body: @1762   
@1744   identifier_node  strg: __dev    lngt: 5       
@1745   var_decl         type: @170     scpe: @1707    srcp: sysmacros.h:50     
                         note: artificial              chan: @1763   
                         size: @49      algn: 32       used: 1       
@1746   statement_list   0   : @1764   
@1747   identifier_node  strg: __minor  lngt: 7       
@1748   var_decl         type: @170     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1765   
                         size: @49      algn: 32       used: 1       
@1749   try_catch_expr   type: @26     
@1750   identifier_node  strg: gid_t    lngt: 5       
@1751   integer_type     name: @1732    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1752   type_decl        name: @1766    type: @1767    srcp: types.h:62     
                         chan: @1768   
@1753   identifier_node  strg: __builtin_putchar       lngt: 17      
@1754   function_decl    name: @1769    type: @1770    srcp: <built-in>:0      
                         note: artificial              chan: @1771   
                         lang: C        body: undefined 
                         link: extern  
@1755   identifier_node  strg: __sync_fetch_and_add_4  lngt: 22      
@1756   function_decl    name: @1772    type: @761     srcp: <built-in>:0      
                         note: artificial              chan: @1773   
                         lang: C        body: undefined 
                         link: extern  
@1757   identifier_node  strg: pselect  lngt: 7       
@1758   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1774   
@1759   function_decl    name: @1775    type: @1776    srcp: select.h:112    
                         chan: @1777    lang: C        args: @1778   
                         body: undefined               link: extern  
@1760   parm_decl        name: @1779    type: @33      srcp: select.h:125    
                         chan: @1780    argt: @33      size: @49     
                         algn: 32       used: 0       
@1761   var_decl         type: @170     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              chan: @1781   
                         size: @49      algn: 32       used: 1       
@1762   statement_list   0   : @1782   
@1763   var_decl         type: @170     scpe: @1707    srcp: sysmacros.h:50     
                         note: artificial              chan: @1783   
                         size: @49      algn: 32       used: 1       
@1764   try_catch_expr   type: @26     
@1765   var_decl         type: @170     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1784   
                         size: @49      algn: 32       used: 1       
@1766   identifier_node  strg: dev_t    lngt: 5       
@1767   integer_type     name: @1752    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@1768   type_decl        name: @1785    type: @1786    srcp: types.h:57     
                         chan: @1787   
@1769   identifier_node  strg: printf_unlocked         lngt: 15      
@1770   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1624   
@1771   function_decl    name: @1788    mngl: @1769    type: @1770   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1789    lang: C        body: undefined 
                         link: extern  
@1772   identifier_node  strg: __sync_fetch_and_add_2  lngt: 22      
@1773   function_decl    name: @1790    type: @774     srcp: <built-in>:0      
                         note: artificial              chan: @1791   
                         lang: C        body: undefined 
                         link: extern  
@1774   tree_list        valu: @33      chan: @1792   
@1775   identifier_node  strg: select   lngt: 6       
@1776   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1793   
@1777   type_decl        name: @1794    type: @1795    srcp: select.h:85     
                         chan: @1796   
@1778   parm_decl        name: @1779    type: @33      srcp: select.h:112    
                         chan: @1797    argt: @33      size: @49     
                         algn: 32       used: 0       
@1779   identifier_node  strg: __nfds   lngt: 6       
@1780   parm_decl        name: @1798    type: @1799    srcp: select.h:125    
                         chan: @1800    argt: @1799    size: @49     
                         algn: 32       used: 0       
@1781   var_decl         type: @502     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              chan: @1801   
                         size: @44      algn: 64       used: 1       
@1782   try_catch_expr   type: @26     
@1783   var_decl         type: @170     scpe: @1707    srcp: sysmacros.h:50     
                         note: artificial              chan: @1802   
                         size: @49      algn: 32       used: 1       
@1784   var_decl         type: @170     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1803   
                         size: @49      algn: 32       used: 1       
@1785   identifier_node  strg: ino64_t  lngt: 7       
@1786   integer_type     name: @1768    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@1787   type_decl        name: @1804    type: @1805    srcp: types.h:50     
                         chan: @1806   
@1788   identifier_node  strg: __builtin_printf_unlocked 
                         lngt: 25      
@1789   function_decl    name: @1807    type: @1770    srcp: <built-in>:0      
                         note: artificial              chan: @1808   
                         lang: C        body: undefined 
                         link: extern  
@1790   identifier_node  strg: __sync_fetch_and_add_1  lngt: 22      
@1791   function_decl    name: @1809    type: @252     srcp: <built-in>:0      
                         note: artificial              chan: @1810   
                         lang: C        body: undefined 
                         link: extern  
@1792   tree_list        valu: @1811    chan: @1812   
@1793   tree_list        valu: @33      chan: @1813   
@1794   identifier_node  strg: fd_mask  lngt: 7       
@1795   integer_type     name: @1777    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1796   type_decl        name: @1814    type: @1815    srcp: select.h:78     
                         chan: @1816   
@1797   parm_decl        name: @1798    type: @1799    srcp: select.h:112    
                         chan: @1817    argt: @1799    size: @49     
                         algn: 32       used: 0       
@1798   identifier_node  strg: __readfds               lngt: 9       
@1799   pointer_type     qual:   r      unql: @1811    size: @49     
                         algn: 32       ptd : @1815   
@1800   parm_decl        name: @1818    type: @1799    srcp: select.h:125    
                         chan: @1819    argt: @1799    size: @49     
                         algn: 32       used: 0       
@1801   var_decl         type: @170     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              chan: @1820   
                         size: @49      algn: 32       used: 1       
@1802   var_decl         type: @502     scpe: @1707    srcp: sysmacros.h:50     
                         note: artificial              chan: @1821   
                         size: @44      algn: 64       used: 1       
@1803   var_decl         type: @170     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1822   
                         size: @49      algn: 32       used: 1       
@1804   identifier_node  strg: ino_t    lngt: 5       
@1805   integer_type     name: @1787    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@1806   type_decl        name: @1823    type: @1824    srcp: types.h:46     
                         chan: @1825   
@1807   identifier_node  strg: printf   lngt: 6       
@1808   function_decl    name: @1826    mngl: @1807    type: @1770   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1827    lang: C        body: undefined 
                         link: extern  
@1809   identifier_node  strg: __sync_fetch_and_add    lngt: 20      
@1810   function_decl    name: @1828    type: @1829    srcp: <built-in>:0      
                         note: artificial              chan: @1830   
                         lang: C        body: undefined 
                         link: extern  
@1811   pointer_type     size: @49      algn: 32       ptd : @1815   
@1812   tree_list        valu: @1811    chan: @1831   
@1813   tree_list        valu: @1811    chan: @1832   
@1814   identifier_node  strg: fd_set   lngt: 6       
@1815   record_type      name: @1796    size: @1833    algn: 32      
                         tag : struct   flds: @1834    binf: @1835   
@1816   type_decl        name: @1836    type: @1837    srcp: select.h:55     
                         chan: @1838   
@1817   parm_decl        name: @1818    type: @1799    srcp: select.h:112    
                         chan: @1839    argt: @1799    size: @49     
                         algn: 32       used: 0       
@1818   identifier_node  strg: __writefds              lngt: 10      
@1819   parm_decl        name: @1840    type: @1799    srcp: select.h:125    
                         chan: @1841    argt: @1799    size: @49     
                         algn: 32       used: 0       
@1820   var_decl         type: @170     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              chan: @1842   
                         size: @49      algn: 32       used: 1       
@1821   var_decl         type: @170     scpe: @1707    srcp: sysmacros.h:50     
                         note: artificial              chan: @1843   
                         size: @49      algn: 32       used: 1       
@1822   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1844   
                         size: @44      algn: 64       used: 1       
@1823   identifier_node  strg: loff_t   lngt: 6       
@1824   integer_type     name: @1806    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@1825   type_decl        name: @1845    type: @1846    srcp: types.h:41     
                         chan: @1847   
@1826   identifier_node  strg: __builtin_printf        lngt: 16      
@1827   function_decl    name: @1848    type: @1849    srcp: <built-in>:0      
                         note: artificial              chan: @1850   
                         lang: C        body: undefined 
                         link: extern  
@1828   identifier_node  strg: __vprintf_chk           lngt: 13      
@1829   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1851   
@1830   function_decl    name: @1852    mngl: @1828    type: @1829   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1853    lang: C        body: undefined 
                         link: extern  
@1831   tree_list        valu: @1811    chan: @1854   
@1832   tree_list        valu: @1811    chan: @1855   
@1833   integer_cst      type: @21      low : 1024    
@1834   field_decl       name: @1856    type: @1857    scpe: @1815   
                         srcp: select.h:72             chan: @1858   
                         accs: pub      size: @1833    algn: 32      
                         bpos: @45     
@1835   binfo            type: @1815    bases: 0       
@1836   identifier_node  strg: __fd_mask               lngt: 9       
@1837   integer_type     name: @1816    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1838   type_decl        name: @1859    type: @1860    srcp: select.h:38     
                         chan: @1861   
@1839   parm_decl        name: @1840    type: @1799    srcp: select.h:112    
                         chan: @1862    argt: @1799    size: @49     
                         algn: 32       used: 0       
@1840   identifier_node  strg: __exceptfds             lngt: 11      
@1841   parm_decl        name: @1863    type: @1864    srcp: select.h:125    
                         chan: @1865    argt: @1864    size: @49     
                         algn: 32       used: 0       
@1842   var_decl         type: @502     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              chan: @1866   
                         size: @44      algn: 64       used: 1       
@1843   var_decl         type: @170     scpe: @1707    srcp: sysmacros.h:50     
                         note: artificial              size: @49     
                         algn: 32       used: 1       
@1844   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1867   
                         size: @44      algn: 64       used: 1       
@1845   identifier_node  strg: fsid_t   lngt: 6       
@1846   record_type      name: @1825    unql: @1868    size: @44     
                         algn: 32       tag : struct   flds: @1869   
                         binf: @1870   
@1847   type_decl        name: @1871    type: @1872    srcp: types.h:40     
                         chan: @1873   
@1848   identifier_node  strg: fwrite_unlocked         lngt: 15      
@1849   function_type    size: @9       algn: 8        retn: @170    
                         prms: @1874   
@1850   function_decl    name: @1875    mngl: @1848    type: @1849   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1876    lang: C        body: undefined 
                         link: extern  
@1851   tree_list        valu: @33      chan: @1877   
@1852   identifier_node  strg: __builtin___vprintf_chk lngt: 23      
@1853   function_decl    name: @1878    type: @1879    srcp: <built-in>:0      
                         note: artificial              chan: @1880   
                         lang: C        body: undefined 
                         link: extern  
@1854   tree_list        valu: @1881    chan: @1882   
@1855   tree_list        valu: @1811    chan: @1883   
@1856   identifier_node  strg: fds_bits lngt: 8       
@1857   array_type       size: @1833    algn: 32       elts: @1837   
                         domn: @1453   
@1858   type_decl        name: @1884    type: @1815    scpe: @1815   
                         srcp: select.h:68             note: artificial 
@1859   identifier_node  strg: sigset_t lngt: 8       
@1860   record_type      name: @1838    unql: @1885    size: @1833   
                         algn: 32       tag : struct   flds: @1886   
                         binf: @1887   
@1861   type_decl        name: @1888    type: @1885    srcp: sigset.h:31     
                         chan: @1889   
@1862   parm_decl        name: @1863    type: @1890    srcp: select.h:112    
                         argt: @1890    size: @49      algn: 32      
                         used: 0       
@1863   identifier_node  strg: __timeout               lngt: 9       
@1864   pointer_type     qual:   r      unql: @1881    size: @49     
                         algn: 32       ptd : @1891   
@1865   parm_decl        name: @1892    type: @1893    srcp: select.h:125    
                         argt: @1893    size: @49      algn: 32      
                         used: 0       
@1866   var_decl         type: @170     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              chan: @1894   
                         size: @49      algn: 32       used: 1       
@1867   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1895   
                         size: @44      algn: 64       used: 1       
@1868   record_type      name: @1896    size: @44      algn: 32      
                         tag : struct   flds: @1869    binf: @1870   
@1869   field_decl       name: @1897    type: @1898    scpe: @1868   
                         srcp: types.h:147             chan: @1899   
                         accs: pub      size: @44      algn: 32      
                         bpos: @45     
@1870   binfo            type: @1868    bases: 0       
@1871   identifier_node  strg: u_quad_t lngt: 8       
@1872   integer_type     name: @1847    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@1873   type_decl        name: @1900    type: @1901    srcp: types.h:39     
                         chan: @1902   
@1874   tree_list        valu: @1903    chan: @1904   
@1875   identifier_node  strg: __builtin_fwrite_unlocked 
                         lngt: 25      
@1876   function_decl    name: @1905    type: @1849    srcp: <built-in>:0      
                         note: artificial              chan: @1906   
                         lang: C        body: undefined 
                         link: extern  
@1877   tree_list        valu: @70      chan: @1907   
@1878   identifier_node  strg: __vfprintf_chk          lngt: 14      
@1879   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1908   
@1880   function_decl    name: @1909    mngl: @1878    type: @1879   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1910    lang: C        body: undefined 
                         link: extern  
@1881   pointer_type     size: @49      algn: 32       ptd : @1891   
@1882   tree_list        valu: @1911    chan: @11     
@1883   tree_list        valu: @1912    chan: @11     
@1884   identifier_node  strg: ._7      lngt: 3       
@1885   record_type      name: @1861    size: @1833    algn: 32      
                         tag : struct   flds: @1886    binf: @1887   
@1886   field_decl       name: @1897    type: @1913    scpe: @1885   
                         srcp: sigset.h:30             chan: @1914   
                         accs: pub      size: @1833    algn: 32      
                         bpos: @45     
@1887   binfo            type: @1885    bases: 0       
@1888   identifier_node  strg: __sigset_t              lngt: 10      
@1889   type_decl        name: @1915    type: @1916    srcp: sigset.h:23     
                         chan: @1917   
@1890   pointer_type     qual:   r      unql: @1912    size: @49     
                         algn: 32       ptd : @1918   
@1891   record_type      qual: c        name: @1919    unql: @1920   
                         size: @44      algn: 32       tag : struct  
                         flds: @1921    binf: @1922   
@1892   identifier_node  strg: __sigmask               lngt: 9       
@1893   pointer_type     qual:   r      unql: @1911    size: @49     
                         algn: 32       ptd : @1923   
@1894   var_decl         type: @170     scpe: @1723    srcp: sysmacros.h:44     
                         note: artificial              size: @49     
                         algn: 32       used: 1       
@1895   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1924   
                         size: @44      algn: 64       used: 1       
@1896   type_decl        name: @1925    type: @1868    srcp: types.h:147    
                         chan: @1926   
@1897   identifier_node  strg: __val    lngt: 5       
@1898   array_type       size: @44      algn: 32       elts: @33     
                         domn: @1927   
@1899   type_decl        name: @1928    type: @1868    scpe: @1868   
                         srcp: types.h:147             note: artificial 
@1900   identifier_node  strg: quad_t   lngt: 6       
@1901   integer_type     name: @1873    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@1902   type_decl        name: @1929    type: @1930    srcp: types.h:38     
                         chan: @1931   
@1903   pointer_type     size: @49      algn: 32       ptd : @1932   
@1904   tree_list        valu: @170     chan: @1933   
@1905   identifier_node  strg: fwrite   lngt: 6       
@1906   function_decl    name: @1934    mngl: @1905    type: @1849   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1935    lang: C        body: undefined 
                         link: extern  
@1907   tree_list        valu: @1286    chan: @11     
@1908   tree_list        valu: @1424    chan: @1936   
@1909   identifier_node  strg: __builtin___vfprintf_chk 
                         lngt: 24      
@1910   function_decl    name: @1937    type: @1938    srcp: <built-in>:0      
                         note: artificial              chan: @1939   
                         lang: C        body: undefined 
                         link: extern  
@1911   pointer_type     size: @49      algn: 32       ptd : @1923   
@1912   pointer_type     size: @49      algn: 32       ptd : @1918   
@1913   array_type       size: @1833    algn: 32       elts: @1418   
                         domn: @1453   
@1914   type_decl        name: @1940    type: @1885    scpe: @1885   
                         srcp: sigset.h:29             note: artificial 
@1915   identifier_node  strg: __sig_atomic_t          lngt: 14      
@1916   integer_type     name: @1889    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1917   type_decl        name: @1941    type: @1942    srcp: types.h:206    
                         chan: @1943   
@1918   record_type      name: @1944    size: @44      algn: 32      
                         tag : struct   flds: @1945    binf: @1946   
@1919   type_decl        name: @1947    type: @1920    srcp: time.h:122    
                         note: artificial 
@1920   record_type      name: @1919    size: @44      algn: 32      
                         tag : struct   flds: @1921    binf: @1922   
@1921   field_decl       name: @1948    type: @1949    scpe: @1920   
                         srcp: time.h:123              chan: @1950   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1922   binfo            type: @1920    bases: 0       
@1923   record_type      qual: c        name: @1861    unql: @1885   
                         size: @1833    algn: 32       tag : struct  
                         flds: @1886    binf: @1887   
@1924   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1951   
                         size: @44      algn: 64       used: 1       
@1925   identifier_node  strg: __fsid_t lngt: 8       
@1926   type_decl        name: @1952    type: @1953    srcp: types.h:146    
                         chan: @1954   
@1927   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @104    
@1928   identifier_node  strg: ._5      lngt: 3       
@1929   identifier_node  strg: u_long   lngt: 6       
@1930   integer_type     name: @1902    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@1931   type_decl        name: @1955    type: @1956    srcp: types.h:37     
                         chan: @1957   
@1932   void_type        qual: c        unql: @26      algn: 8       
@1933   tree_list        valu: @170     chan: @1958   
@1934   identifier_node  strg: __builtin_fwrite        lngt: 16      
@1935   function_decl    name: @1959    type: @1960    srcp: <built-in>:0      
                         note: artificial              chan: @1961   
                         lang: C        body: undefined 
                         link: extern  
@1936   tree_list        valu: @33      chan: @1962   
@1937   identifier_node  strg: __printf_chk            lngt: 12      
@1938   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1963   
@1939   function_decl    name: @1964    mngl: @1937    type: @1938   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1965    lang: C        body: undefined 
                         link: extern  
@1940   identifier_node  strg: ._6      lngt: 3       
@1941   identifier_node  strg: register_t              lngt: 10      
@1942   integer_type     name: @1917    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1943   type_decl        name: @1966    type: @1967    srcp: types.h:204    
                         chan: @1968   
@1944   type_decl        name: @1969    type: @1918    srcp: time.h:70     
                         note: artificial 
@1945   field_decl       name: @1948    type: @1949    scpe: @1918   
                         srcp: time.h:71               chan: @1970   
                         accs: pub      size: @49      algn: 32      
                         bpos: @45     
@1946   binfo            type: @1918    bases: 0       
@1947   identifier_node  strg: timespec lngt: 8       
@1948   identifier_node  strg: tv_sec   lngt: 6       
@1949   integer_type     name: @1971    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1950   field_decl       name: @1972    type: @602     scpe: @1920   
                         srcp: time.h:124              chan: @1973   
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@1951   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1974   
                         size: @44      algn: 64       used: 1       
@1952   identifier_node  strg: __pid_t  lngt: 7       
@1953   integer_type     name: @1926    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@1954   type_decl        name: @1975    type: @1976    srcp: types.h:145    
                         chan: @1977   
@1955   identifier_node  strg: u_int    lngt: 5       
@1956   integer_type     name: @1931    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1957   type_decl        name: @1978    type: @1979    srcp: types.h:36     
                         chan: @1980   
@1958   tree_list        valu: @1424    chan: @11     
@1959   identifier_node  strg: fscanf   lngt: 6       
@1960   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1981   
@1961   function_decl    name: @1982    mngl: @1959    type: @1960   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1983    lang: C        body: undefined 
                         link: extern  
@1962   tree_list        valu: @70      chan: @1984   
@1963   tree_list        valu: @33      chan: @1985   
@1964   identifier_node  strg: __builtin___printf_chk  lngt: 22      
@1965   function_decl    name: @1986    type: @1987    srcp: <built-in>:0      
                         note: artificial              chan: @1988   
                         lang: C        body: undefined 
                         link: extern  
@1966   identifier_node  strg: u_int64_t               lngt: 9       
@1967   integer_type     name: @1943    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@1968   type_decl        name: @1989    type: @1990    srcp: types.h:203    
                         chan: @1991   
@1969   identifier_node  strg: timeval  lngt: 7       
@1970   field_decl       name: @1992    type: @1993    scpe: @1918   
                         srcp: time.h:72               chan: @1994   
                         accs: pub      size: @49      algn: 32      
                         bpos: @49     
@1971   type_decl        name: @1995    type: @1949    srcp: types.h:152    
                         chan: @1996   
@1972   identifier_node  strg: tv_nsec  lngt: 7       
@1973   type_decl        name: @1947    type: @1920    scpe: @1920   
                         srcp: time.h:122              note: artificial 
@1974   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              chan: @1997   
                         size: @44      algn: 64       used: 1       
@1975   identifier_node  strg: __off64_t               lngt: 9       
@1976   integer_type     name: @1954    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@1977   type_decl        name: @1998    type: @1999    srcp: types.h:144    
                         chan: @2000   
@1978   identifier_node  strg: u_short  lngt: 7       
@1979   integer_type     name: @1957    unql: @540     size: @557    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @558     max : @559    
@1980   type_decl        name: @2001    type: @2002    srcp: types.h:35     
                         chan: @2003   
@1981   tree_list        valu: @1424    chan: @2004   
@1982   identifier_node  strg: __builtin_fscanf        lngt: 16      
@1983   function_decl    name: @2005    type: @2006    srcp: <built-in>:0      
                         note: artificial              chan: @2007   
                         lang: C        body: undefined 
                         link: extern  
@1984   tree_list        valu: @1286    chan: @11     
@1985   tree_list        valu: @70     
@1986   identifier_node  strg: __fprintf_chk           lngt: 13      
@1987   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2008   
@1988   function_decl    name: @2009    mngl: @1986    type: @1987   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2010    lang: C        body: undefined 
                         link: extern  
@1989   identifier_node  strg: u_int32_t               lngt: 9       
@1990   integer_type     name: @1968    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@1991   type_decl        name: @2011    type: @2012    srcp: types.h:202    
                         chan: @2013   
@1992   identifier_node  strg: tv_usec  lngt: 7       
@1993   integer_type     name: @2014    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@1994   type_decl        name: @1969    type: @1918    scpe: @1918   
                         srcp: time.h:70               note: artificial 
@1995   identifier_node  strg: __time_t lngt: 8       
@1996   type_decl        name: @2015    type: @2016    srcp: types.h:151    
                         chan: @2017   
@1997   var_decl         type: @502     scpe: @1694    srcp: sysmacros.h:58     
                         note: artificial              size: @44     
                         algn: 64       used: 1       
@1998   identifier_node  strg: __off_t  lngt: 7       
@1999   integer_type     name: @1977    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@2000   type_decl        name: @2018    type: @2019    srcp: types.h:143    
                         chan: @2020   
@2001   identifier_node  strg: u_char   lngt: 6       
@2002   integer_type     name: @1980    unql: @560     size: @9      
                         algn: 8        prec: 8        sign: unsigned 
                         min : @584     max : @585    
@2003   type_decl        name: @2021    type: @2022    srcp: types.h:195    
                         chan: @2023   
@2004   tree_list        valu: @70     
@2005   identifier_node  strg: fputs_unlocked          lngt: 14      
@2006   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2024   
@2007   function_decl    name: @2025    mngl: @2005    type: @2006   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2026    lang: C        body: undefined 
                         link: extern  
@2008   tree_list        valu: @1424    chan: @2027   
@2009   identifier_node  strg: __builtin___fprintf_chk lngt: 23      
@2010   function_decl    name: @2028    type: @2029    srcp: <built-in>:0      
                         note: artificial              chan: @2030   
                         lang: C        body: undefined 
                         link: extern  
@2011   identifier_node  strg: u_int16_t               lngt: 9       
@2012   integer_type     name: @1991    unql: @540     size: @557    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @558     max : @559    
@2013   type_decl        name: @2031    type: @2032    srcp: types.h:201    
                         chan: @2033   
@2014   type_decl        name: @2034    type: @1993    srcp: types.h:154    
                         chan: @2035   
@2015   identifier_node  strg: __id_t   lngt: 6       
@2016   integer_type     name: @1996    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2017   type_decl        name: @2036    type: @2037    srcp: types.h:150    
                         chan: @2038   
@2018   identifier_node  strg: __nlink_t               lngt: 9       
@2019   integer_type     name: @2000    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2020   type_decl        name: @2039    type: @2040    srcp: types.h:142    
                         chan: @2041   
@2021   identifier_node  strg: __socklen_t             lngt: 11      
@2022   integer_type     name: @2003    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2023   type_decl        name: @2042    type: @2043    srcp: types.h:192    
                         chan: @2044   
@2024   tree_list        valu: @70      chan: @2045   
@2025   identifier_node  strg: __builtin_fputs_unlocked 
                         lngt: 24      
@2026   function_decl    name: @2046    type: @2006    srcp: <built-in>:0      
                         note: artificial              chan: @2047   
                         lang: C        body: undefined 
                         link: extern  
@2027   tree_list        valu: @33      chan: @2048   
@2028   identifier_node  strg: __vsprintf_chk          lngt: 14      
@2029   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2049   
@2030   function_decl    name: @2050    mngl: @2028    type: @2029   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2051    lang: C        body: undefined 
                         link: extern  
@2031   identifier_node  strg: u_int8_t lngt: 8       
@2032   integer_type     name: @2013    unql: @560     size: @9      
                         algn: 8        prec: 8        sign: unsigned 
                         min : @584     max : @585    
@2033   type_decl        name: @2052    type: @2053    srcp: types.h:198    
                         chan: @1297   
@2034   identifier_node  strg: __suseconds_t           lngt: 13      
@2035   type_decl        name: @2054    type: @2055    srcp: types.h:153    
                         chan: @1971   
@2036   identifier_node  strg: __rlim64_t              lngt: 10      
@2037   integer_type     name: @2017    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2038   type_decl        name: @2056    type: @2057    srcp: types.h:149    
                         chan: @2058   
@2039   identifier_node  strg: __mode_t lngt: 8       
@2040   integer_type     name: @2020    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2041   type_decl        name: @2059    type: @2060    srcp: types.h:141    
                         chan: @2061   
@2042   identifier_node  strg: __intptr_t              lngt: 10      
@2043   integer_type     name: @2023    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@2044   type_decl        name: @2062    type: @2063    srcp: types.h:189    
                         chan: @2064   
@2045   tree_list        valu: @1424    chan: @11     
@2046   identifier_node  strg: fputs    lngt: 5       
@2047   function_decl    name: @2065    mngl: @2046    type: @2006   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2066    lang: C        body: undefined 
                         link: extern  
@2048   tree_list        valu: @70     
@2049   tree_list        valu: @39      chan: @2067   
@2050   identifier_node  strg: __builtin___vsprintf_chk 
                         lngt: 24      
@2051   function_decl    name: @2068    type: @2069    srcp: <built-in>:0      
                         note: artificial              chan: @2070   
                         lang: C        body: undefined 
                         link: extern  
@2052   identifier_node  strg: int64_t  lngt: 7       
@2053   integer_type     name: @2033    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@2054   identifier_node  strg: __useconds_t            lngt: 12      
@2055   integer_type     name: @2035    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2056   identifier_node  strg: __rlim_t lngt: 8       
@2057   integer_type     name: @2038    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@2058   type_decl        name: @2071    type: @2072    srcp: types.h:148    
                         chan: @1896   
@2059   identifier_node  strg: __ino64_t               lngt: 9       
@2060   integer_type     name: @2041    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2061   type_decl        name: @2073    type: @2074    srcp: types.h:140    
                         chan: @2075   
@2062   identifier_node  strg: __caddr_t               lngt: 9       
@2063   pointer_type     name: @2044    unql: @39      size: @49     
                         algn: 32       ptd : @68     
@2064   type_decl        name: @2076    type: @2077    srcp: types.h:188    
                         chan: @2078   
@2065   identifier_node  strg: __builtin_fputs         lngt: 15      
@2066   function_decl    name: @2079    type: @2080    srcp: <built-in>:0      
                         note: artificial              chan: @2081   
                         lang: C        body: undefined 
                         link: extern  
@2067   tree_list        valu: @33      chan: @2082   
@2068   identifier_node  strg: __vsnprintf_chk         lngt: 15      
@2069   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2083   
@2070   function_decl    name: @2084    mngl: @2068    type: @2069   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2085    lang: C        body: undefined 
                         link: extern  
@2071   identifier_node  strg: __clock_t               lngt: 9       
@2072   integer_type     name: @2058    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@2073   identifier_node  strg: __ino_t  lngt: 7       
@2074   integer_type     name: @2061    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@2075   type_decl        name: @2086    type: @2087    srcp: types.h:139    
                         chan: @2088   
@2076   identifier_node  strg: __qaddr_t               lngt: 9       
@2077   pointer_type     name: @2064    unql: @2089    size: @49     
                         algn: 32       ptd : @2090   
@2078   type_decl        name: @2091    type: @2092    srcp: types.h:187    
                         chan: @2093   
@2079   identifier_node  strg: fputc_unlocked          lngt: 14      
@2080   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2094   
@2081   function_decl    name: @2095    mngl: @2079    type: @2080   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2096    lang: C        body: undefined 
                         link: extern  
@2082   tree_list        valu: @170     chan: @2097   
@2083   tree_list        valu: @39      chan: @2098   
@2084   identifier_node  strg: __builtin___vsnprintf_chk 
                         lngt: 25      
@2085   function_decl    name: @2099    type: @2100    srcp: <built-in>:0      
                         note: artificial              chan: @2101   
                         lang: C        body: undefined 
                         link: extern  
@2086   identifier_node  strg: __gid_t  lngt: 7       
@2087   integer_type     name: @2075    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2088   type_decl        name: @2102    type: @2103    srcp: types.h:138    
                         chan: @2104   
@2089   pointer_type     size: @49      algn: 32       ptd : @2090   
@2090   integer_type     name: @2105    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@2091   identifier_node  strg: __loff_t lngt: 8       
@2092   integer_type     name: @2078    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@2093   type_decl        name: @2106    type: @2107    srcp: types.h:183    
                         chan: @2108   
@2094   tree_list        valu: @33      chan: @2109   
@2095   identifier_node  strg: __builtin_fputc_unlocked 
                         lngt: 24      
@2096   function_decl    name: @2110    type: @2080    srcp: <built-in>:0      
                         note: artificial              chan: @2111   
                         lang: C        body: undefined 
                         link: extern  
@2097   tree_list        valu: @70      chan: @2112   
@2098   tree_list        valu: @170     chan: @2113   
@2099   identifier_node  strg: __sprintf_chk           lngt: 13      
@2100   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2114   
@2101   function_decl    name: @2115    mngl: @2099    type: @2100   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2116    lang: C        body: undefined 
                         link: extern  
@2102   identifier_node  strg: __uid_t  lngt: 7       
@2103   integer_type     name: @2088    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2104   type_decl        name: @2117    type: @2118    srcp: types.h:137    
                         chan: @2119   
@2105   type_decl        name: @2120    type: @2090    srcp: types.h:59     
                         chan: @2121   
@2106   identifier_node  strg: __ssize_t               lngt: 9       
@2107   integer_type     name: @2093    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@2108   type_decl        name: @2122    type: @2123    srcp: types.h:181    
                         chan: @2124   
@2109   tree_list        valu: @1424    chan: @11     
@2110   identifier_node  strg: fputc    lngt: 5       
@2111   function_decl    name: @2125    mngl: @2110    type: @2080   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2126    lang: C        body: undefined 
                         link: extern  
@2112   tree_list        valu: @1286    chan: @11     
@2113   tree_list        valu: @33      chan: @2127   
@2114   tree_list        valu: @39      chan: @2128   
@2115   identifier_node  strg: __builtin___sprintf_chk lngt: 23      
@2116   function_decl    name: @2129    type: @2130    srcp: <built-in>:0      
                         note: artificial              chan: @2131   
                         lang: C        body: undefined 
                         link: extern  
@2117   identifier_node  strg: __dev_t  lngt: 7       
@2118   integer_type     name: @2104    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2119   type_decl        name: @2132    type: @2133    srcp: types.h:60     
                         chan: @2105   
@2120   identifier_node  strg: __quad_t lngt: 8       
@2121   type_decl        name: @2134    type: @2135    srcp: types.h:51     
                         chan: @2136   
@2122   identifier_node  strg: __fsfilcnt64_t          lngt: 14      
@2123   integer_type     name: @2108    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2124   type_decl        name: @2137    type: @2138    srcp: types.h:180    
                         chan: @2139   
@2125   identifier_node  strg: __builtin_fputc         lngt: 15      
@2126   function_decl    name: @2140    type: @2141    srcp: <built-in>:0      
                         note: artificial              chan: @2142   
                         lang: C        body: undefined 
                         link: extern  
@2127   tree_list        valu: @170     chan: @2143   
@2128   tree_list        valu: @33      chan: @2144   
@2129   identifier_node  strg: __snprintf_chk          lngt: 14      
@2130   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2145   
@2131   function_decl    name: @2146    mngl: @2129    type: @2130   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2147    lang: C        body: undefined 
                         link: extern  
@2132   identifier_node  strg: __u_quad_t              lngt: 10      
@2133   integer_type     name: @2119    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2134   identifier_node  strg: __uint64_t              lngt: 10      
@2135   integer_type     name: @2121    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2136   type_decl        name: @2148    type: @2149    srcp: types.h:50     
                         chan: @2150   
@2137   identifier_node  strg: __fsfilcnt_t            lngt: 12      
@2138   integer_type     name: @2124    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@2139   type_decl        name: @2151    type: @2152    srcp: types.h:177    
                         chan: @2153   
@2140   identifier_node  strg: fprintf_unlocked        lngt: 16      
@2141   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1981   
@2142   function_decl    name: @2154    mngl: @2140    type: @2141   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2155    lang: C        body: undefined 
                         link: extern  
@2143   tree_list        valu: @70      chan: @2156   
@2144   tree_list        valu: @170     chan: @2157   
@2145   tree_list        valu: @39      chan: @2158   
@2146   identifier_node  strg: __builtin___snprintf_chk 
                         lngt: 24      
@2147   function_decl    name: @2159    type: @2160    srcp: <built-in>:0      
                         note: artificial              chan: @2161   
                         lang: C        body: undefined 
                         link: extern  
@2148   identifier_node  strg: __int64_t               lngt: 9       
@2149   integer_type     name: @2136    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@2150   type_decl        name: @2162    type: @2163    srcp: types.h:45     
                         chan: @2164   
@2151   identifier_node  strg: __fsblkcnt64_t          lngt: 14      
@2152   integer_type     name: @2139    unql: @502     size: @44     
                         algn: 64       prec: 64       sign: unsigned 
                         min : @521     max : @522    
@2153   type_decl        name: @2165    type: @2166    srcp: types.h:176    
                         chan: @2167   
@2154   identifier_node  strg: __builtin_fprintf_unlocked 
                         lngt: 26      
@2155   function_decl    name: @2168    type: @2141    srcp: <built-in>:0      
                         note: artificial              chan: @2169   
                         lang: C        body: undefined 
                         link: extern  
@2156   tree_list        valu: @1286    chan: @11     
@2157   tree_list        valu: @70     
@2158   tree_list        valu: @170     chan: @2170   
@2159   identifier_node  strg: __strncpy_chk           lngt: 13      
@2160   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2171   
@2161   function_decl    name: @2172    mngl: @2159    type: @2160   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2173    lang: C        body: undefined 
                         link: extern  
@2162   identifier_node  strg: __uint32_t              lngt: 10      
@2163   integer_type     name: @2150    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2164   type_decl        name: @2174    type: @2175    srcp: types.h:44     
                         chan: @2176   
@2165   identifier_node  strg: __fsblkcnt_t            lngt: 12      
@2166   integer_type     name: @2153    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@2167   type_decl        name: @2177    type: @2178    srcp: types.h:173    
                         chan: @2179   
@2168   identifier_node  strg: fprintf  lngt: 7       
@2169   function_decl    name: @2180    mngl: @2168    type: @2141   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2181    lang: C        body: undefined 
                         link: extern  
@2170   tree_list        valu: @33      chan: @2182   
@2171   tree_list        valu: @39      chan: @2183   
@2172   identifier_node  strg: __builtin___strncpy_chk lngt: 23      
@2173   function_decl    name: @2184    type: @2160    srcp: <built-in>:0      
                         note: artificial              chan: @2185   
                         lang: C        body: undefined 
                         link: extern  
@2174   identifier_node  strg: __int32_t               lngt: 9       
@2175   integer_type     name: @2164    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@2176   type_decl        name: @2186    type: @2187    srcp: types.h:43     
                         chan: @2188   
@2177   identifier_node  strg: __blkcnt64_t            lngt: 12      
@2178   integer_type     name: @2167    unql: @576     size: @44     
                         algn: 64       prec: 64       sign: signed  
                         min : @605     max : @606    
@2179   type_decl        name: @2189    type: @2190    srcp: types.h:172    
                         chan: @2191   
@2180   identifier_node  strg: __builtin_fprintf       lngt: 17      
@2181   function_decl    name: @2192    type: @2193    srcp: <built-in>:0      
                         note: artificial              chan: @2194   
                         lang: C        body: undefined 
                         link: extern  
@2182   tree_list        valu: @170     chan: @2195   
@2183   tree_list        valu: @70      chan: @2196   
@2184   identifier_node  strg: __strncat_chk           lngt: 13      
@2185   function_decl    name: @2197    mngl: @2184    type: @2160   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2198    lang: C        body: undefined 
                         link: extern  
@2186   identifier_node  strg: __uint16_t              lngt: 10      
@2187   integer_type     name: @2176    unql: @540     size: @557    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @558     max : @559    
@2188   type_decl        name: @2199    type: @2200    srcp: types.h:42     
                         chan: @2201   
@2189   identifier_node  strg: __blkcnt_t              lngt: 10      
@2190   integer_type     name: @2179    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@2191   type_decl        name: @2202    type: @2203    srcp: types.h:167    
                         chan: @2204   
@2192   identifier_node  strg: strstr   lngt: 6       
@2193   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2205   
@2194   function_decl    name: @2206    mngl: @2192    type: @2193   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2207    lang: C        body: undefined 
                         link: extern  
@2195   tree_list        valu: @70     
@2196   tree_list        valu: @170     chan: @2208   
@2197   identifier_node  strg: __builtin___strncat_chk lngt: 23      
@2198   function_decl    name: @2209    type: @2210    srcp: <built-in>:0      
                         note: artificial              chan: @2211   
                         lang: C        body: undefined 
                         link: extern  
@2199   identifier_node  strg: __int16_t               lngt: 9       
@2200   integer_type     name: @2188    unql: @638     size: @557    
                         algn: 16       prec: 16       sign: signed  
                         min : @663     max : @664    
@2201   type_decl        name: @2212    type: @2213    srcp: types.h:41     
                         chan: @2214   
@2202   identifier_node  strg: __blksize_t             lngt: 11      
@2203   integer_type     name: @2191    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@2204   type_decl        name: @2215    type: @2216    srcp: types.h:164    
                         chan: @2217   
@2205   tree_list        valu: @70      chan: @2218   
@2206   identifier_node  strg: __builtin_strstr        lngt: 16      
@2207   function_decl    name: @2219    type: @2220    srcp: <built-in>:0      
                         note: artificial              chan: @2221   
                         lang: C        body: undefined 
                         link: extern  
@2208   tree_list        valu: @170     chan: @11     
@2209   identifier_node  strg: __strcpy_chk            lngt: 12      
@2210   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2222   
@2211   function_decl    name: @2223    mngl: @2209    type: @2210   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2224    lang: C        body: undefined 
                         link: extern  
@2212   identifier_node  strg: __uint8_t               lngt: 9       
@2213   integer_type     name: @2201    unql: @560     size: @9      
                         algn: 8        prec: 8        sign: unsigned 
                         min : @584     max : @585    
@2214   type_decl        name: @2225    type: @2226    srcp: types.h:40     
                         chan: @2227   
@2215   identifier_node  strg: __timer_t               lngt: 9       
@2216   pointer_type     name: @2204    unql: @58      size: @49     
                         algn: 32       ptd : @26     
@2217   type_decl        name: @2228    type: @2229    srcp: types.h:161    
                         chan: @2230   
@2218   tree_list        valu: @70      chan: @11     
@2219   identifier_node  strg: strspn   lngt: 6       
@2220   function_type    size: @9       algn: 8        retn: @170    
                         prms: @2231   
@2221   function_decl    name: @2232    mngl: @2219    type: @2220   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2233    lang: C        body: undefined 
                         link: extern  
@2222   tree_list        valu: @39      chan: @2234   
@2223   identifier_node  strg: __builtin___strcpy_chk  lngt: 22      
@2224   function_decl    name: @2235    type: @2210    srcp: <built-in>:0      
                         note: artificial              chan: @2236   
                         lang: C        body: undefined 
                         link: extern  
@2225   identifier_node  strg: __int8_t lngt: 8       
@2226   integer_type     name: @2214    unql: @665     size: @9      
                         algn: 8        prec: 8        sign: signed  
                         min : @685     max : @686    
@2227   type_decl        name: @2237    type: @2238    srcp: types.h:37     
                         chan: @2239   
@2228   identifier_node  strg: __clockid_t             lngt: 11      
@2229   integer_type     name: @2217    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@2230   type_decl        name: @2240    type: @2241    srcp: types.h:158    
                         chan: @2242   
@2231   tree_list        valu: @70      chan: @2243   
@2232   identifier_node  strg: __builtin_strspn        lngt: 16      
@2233   function_decl    name: @2244    type: @2245    srcp: <built-in>:0      
                         note: artificial              chan: @2246   
                         lang: C        body: undefined 
                         link: extern  
@2234   tree_list        valu: @70      chan: @2247   
@2235   identifier_node  strg: __strcat_chk            lngt: 12      
@2236   function_decl    name: @2248    mngl: @2235    type: @2210   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2249    lang: C        body: undefined 
                         link: extern  
@2237   identifier_node  strg: __u_long lngt: 8       
@2238   integer_type     name: @2227    unql: @1418    size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @1419    max : @1420   
@2239   type_decl        name: @2250    type: @2251    srcp: types.h:36     
                         chan: @2252   
@2240   identifier_node  strg: __key_t  lngt: 7       
@2241   integer_type     name: @2230    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@2242   type_decl        name: @2253    type: @2254    srcp: types.h:157    
                         chan: @2255   
@2243   tree_list        valu: @70      chan: @11     
@2244   identifier_node  strg: strrchr  lngt: 7       
@2245   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2256   
@2246   function_decl    name: @2257    mngl: @2244    type: @2245   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2258    lang: C        body: undefined 
                         link: extern  
@2247   tree_list        valu: @170     chan: @11     
@2248   identifier_node  strg: __builtin___strcat_chk  lngt: 22      
@2249   function_decl    name: @2259    type: @2210    srcp: <built-in>:0      
                         note: artificial              chan: @2260   
                         lang: C        body: undefined 
                         link: extern  
@2250   identifier_node  strg: __u_int  lngt: 7       
@2251   integer_type     name: @2239    unql: @170     size: @49     
                         algn: 32       prec: 32       sign: unsigned 
                         min : @147     max : @148    
@2252   type_decl        name: @2261    type: @2262    srcp: types.h:35     
                         chan: @2263   
@2253   identifier_node  strg: __swblk_t               lngt: 9       
@2254   integer_type     name: @2242    unql: @602     size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @633     max : @634    
@2255   type_decl        name: @2264    type: @2265    srcp: types.h:156    
                         chan: @2014   
@2256   tree_list        valu: @70      chan: @2266   
@2257   identifier_node  strg: __builtin_strrchr       lngt: 17      
@2258   function_decl    name: @2267    type: @2193    srcp: <built-in>:0      
                         note: artificial              chan: @2268   
                         lang: C        body: undefined 
                         link: extern  
@2259   identifier_node  strg: __stpcpy_chk            lngt: 12      
@2260   function_decl    name: @2269    mngl: @2259    type: @2210   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2270    lang: C        body: undefined 
                         link: extern  
@2261   identifier_node  strg: __u_short               lngt: 9       
@2262   integer_type     name: @2252    unql: @540     size: @557    
                         algn: 16       prec: 16       sign: unsigned 
                         min : @558     max : @559    
@2263   type_decl        name: @2271    type: @2272    srcp: types.h:34     
                         chan: @2273   
@2264   identifier_node  strg: __daddr_t               lngt: 9       
@2265   integer_type     name: @2255    unql: @33      size: @49     
                         algn: 32       prec: 32       sign: signed  
                         min : @65      max : @66     
@2266   tree_list        valu: @33      chan: @11     
@2267   identifier_node  strg: strpbrk  lngt: 7       
@2268   function_decl    name: @2274    mngl: @2267    type: @2193   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2275    lang: C        body: undefined 
                         link: extern  
@2269   identifier_node  strg: __builtin___stpcpy_chk  lngt: 22      
@2270   function_decl    name: @2276    type: @2277    srcp: <built-in>:0      
                         note: artificial              chan: @2278   
                         lang: C        body: undefined 
                         link: extern  
@2271   identifier_node  strg: __u_char lngt: 8       
@2272   integer_type     name: @2263    unql: @560     size: @9      
                         algn: 8        prec: 8        sign: unsigned 
                         min : @584     max : @585    
@2273   function_decl    name: @2279    type: @2280    srcp: stdlib.h:433    
                         chan: @2281    lang: C        args: @2282   
                         body: undefined               link: extern  
@2274   identifier_node  strg: __builtin_strpbrk       lngt: 17      
@2275   function_decl    name: @2283    type: @2210    srcp: <built-in>:0      
                         note: artificial              chan: @2284   
                         lang: C        body: undefined 
                         link: extern  
@2276   identifier_node  strg: __memset_chk            lngt: 12      
@2277   function_type    size: @9       algn: 8        retn: @58     
                         prms: @2285   
@2278   function_decl    name: @2286    mngl: @2276    type: @2277   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2287    lang: C        body: undefined 
                         link: extern  
@2279   identifier_node  strg: a64l     lngt: 4       
@2280   function_type    size: @9       algn: 8        retn: @602    
                         prms: @2288   
@2281   function_decl    name: @2289    type: @2290    srcp: stdlib.h:429    
                         chan: @2291    lang: C        args: @2292   
                         body: undefined               link: extern  
@2282   parm_decl        name: @267     type: @70      srcp: stdlib.h:433    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@2283   identifier_node  strg: strncpy  lngt: 7       
@2284   function_decl    name: @2293    mngl: @2283    type: @2210   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2294    lang: C        body: undefined 
                         link: extern  
@2285   tree_list        valu: @58      chan: @2295   
@2286   identifier_node  strg: __builtin___memset_chk  lngt: 22      
@2287   function_decl    name: @2296    type: @2297    srcp: <built-in>:0      
                         note: artificial              chan: @2298   
                         lang: C        body: undefined 
                         link: extern  
@2288   tree_list        valu: @70      chan: @11     
@2289   identifier_node  strg: l64a     lngt: 4       
@2290   function_type    unql: @2299    size: @9       algn: 8       
                         retn: @39      prms: @2300   
@2291   function_decl    name: @2301    type: @2302    srcp: stdlib.h:318    
                         chan: @2303    lang: C        args: @2304   
                         body: undefined               link: extern  
@2292   parm_decl        name: @311     type: @602     srcp: stdlib.h:429    
                         argt: @602     size: @49      algn: 32      
                         used: 0       
@2293   identifier_node  strg: __builtin_strncpy       lngt: 17      
@2294   function_decl    name: @2305    type: @2306    srcp: <built-in>:0      
                         note: artificial              chan: @2307   
                         lang: C        body: undefined 
                         link: extern  
@2295   tree_list        valu: @33      chan: @2308   
@2296   identifier_node  strg: __mempcpy_chk           lngt: 13      
@2297   function_type    size: @9       algn: 8        retn: @58     
                         prms: @2309   
@2298   function_decl    name: @2310    mngl: @2296    type: @2297   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2311    lang: C        body: undefined 
                         link: extern  
@2299   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2300   
@2300   tree_list        valu: @602     chan: @11     
@2301   identifier_node  strg: __strtoull_internal     lngt: 19      
@2302   function_type    size: @9       algn: 8        retn: @502    
                         prms: @2312   
@2303   function_decl    name: @2313    type: @2314    srcp: stdlib.h:309    
                         chan: @2315    lang: C        args: @2316   
                         body: undefined               link: extern  
@2304   parm_decl        name: @2317    type: @308     srcp: stdlib.h:318    
                         chan: @2318    argt: @308     size: @49     
                         algn: 32       used: 0       
@2305   identifier_node  strg: strncmp  lngt: 7       
@2306   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2319   
@2307   function_decl    name: @2320    mngl: @2305    type: @2306   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2321    lang: C        body: undefined 
                         link: extern  
@2308   tree_list        valu: @170     chan: @2322   
@2309   tree_list        valu: @58      chan: @2323   
@2310   identifier_node  strg: __builtin___mempcpy_chk lngt: 23      
@2311   function_decl    name: @2324    type: @2297    srcp: <built-in>:0      
                         note: artificial              chan: @2325   
                         lang: C        body: undefined 
                         link: extern  
@2312   tree_list        valu: @70      chan: @2326   
@2313   identifier_node  strg: __strtoll_internal      lngt: 18      
@2314   function_type    size: @9       algn: 8        retn: @576    
                         prms: @2327   
@2315   function_decl    name: @2328    type: @2329    srcp: stdlib.h:300    
                         chan: @2330    lang: C        args: @2331   
                         body: undefined               link: extern  
@2316   parm_decl        name: @2317    type: @308     srcp: stdlib.h:309    
                         chan: @2332    argt: @308     size: @49     
                         algn: 32       used: 0       
@2317   identifier_node  strg: __nptr   lngt: 6       
@2318   parm_decl        name: @2333    type: @229     srcp: stdlib.h:318    
                         chan: @2334    argt: @229     size: @49     
                         algn: 32       used: 0       
@2319   tree_list        valu: @70      chan: @2335   
@2320   identifier_node  strg: __builtin_strncmp       lngt: 17      
@2321   function_decl    name: @2336    type: @2210    srcp: <built-in>:0      
                         note: artificial              chan: @2337   
                         lang: C        body: undefined 
                         link: extern  
@2322   tree_list        valu: @170     chan: @11     
@2323   tree_list        valu: @1903    chan: @2338   
@2324   identifier_node  strg: __memmove_chk           lngt: 13      
@2325   function_decl    name: @2339    mngl: @2324    type: @2297   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2340    lang: C        body: undefined 
                         link: extern  
@2326   tree_list        valu: @241     chan: @2341   
@2327   tree_list        valu: @70      chan: @2342   
@2328   identifier_node  strg: __strtoul_internal      lngt: 18      
@2329   function_type    size: @9       algn: 8        retn: @1418   
                         prms: @2343   
@2330   function_decl    name: @2344    type: @2345    srcp: stdlib.h:293    
                         chan: @2346    lang: C        args: @2347   
                         body: undefined               link: extern  
@2331   parm_decl        name: @2317    type: @308     srcp: stdlib.h:300    
                         chan: @2348    argt: @308     size: @49     
                         algn: 32       used: 0       
@2332   parm_decl        name: @2333    type: @229     srcp: stdlib.h:309    
                         chan: @2349    argt: @229     size: @49     
                         algn: 32       used: 0       
@2333   identifier_node  strg: __endptr lngt: 8       
@2334   parm_decl        name: @657     type: @33      srcp: stdlib.h:318    
                         chan: @2350    argt: @33      size: @49     
                         algn: 32       used: 0       
@2335   tree_list        valu: @70      chan: @2351   
@2336   identifier_node  strg: strncat  lngt: 7       
@2337   function_decl    name: @2352    mngl: @2336    type: @2210   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2353    lang: C        body: undefined 
                         link: extern  
@2338   tree_list        valu: @170     chan: @2354   
@2339   identifier_node  strg: __builtin___memmove_chk lngt: 23      
@2340   function_decl    name: @2355    type: @2297    srcp: <built-in>:0      
                         note: artificial              chan: @2356   
                         lang: C        body: undefined 
                         link: extern  
@2341   tree_list        valu: @33      chan: @2357   
@2342   tree_list        valu: @241     chan: @2358   
@2343   tree_list        valu: @70      chan: @2359   
@2344   identifier_node  strg: __strtol_internal       lngt: 17      
@2345   function_type    size: @9       algn: 8        retn: @602    
                         prms: @2360   
@2346   function_decl    name: @2361    type: @2362    srcp: stdlib.h:288    
                         chan: @2363    lang: C        args: @2364   
                         body: undefined               link: extern  
@2347   parm_decl        name: @2317    type: @308     srcp: stdlib.h:293    
                         chan: @2365    argt: @308     size: @49     
                         algn: 32       used: 0       
@2348   parm_decl        name: @2333    type: @229     srcp: stdlib.h:300    
                         chan: @2366    argt: @229     size: @49     
                         algn: 32       used: 0       
@2349   parm_decl        name: @657     type: @33      srcp: stdlib.h:309    
                         chan: @2367    argt: @33      size: @49     
                         algn: 32       used: 0       
@2350   parm_decl        name: @2368    type: @33      srcp: stdlib.h:318    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2351   tree_list        valu: @170     chan: @11     
@2352   identifier_node  strg: __builtin_strncat       lngt: 17      
@2353   function_decl    name: @2369    type: @2306    srcp: <built-in>:0      
                         note: artificial              chan: @2370   
                         lang: C        body: undefined 
                         link: extern  
@2354   tree_list        valu: @170     chan: @11     
@2355   identifier_node  strg: __memcpy_chk            lngt: 12      
@2356   function_decl    name: @2371    mngl: @2355    type: @2297   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2372    lang: C        body: undefined 
                         link: extern  
@2357   tree_list        valu: @33      chan: @11     
@2358   tree_list        valu: @33      chan: @2373   
@2359   tree_list        valu: @241     chan: @2374   
@2360   tree_list        valu: @70      chan: @2375   
@2361   identifier_node  strg: __strtold_internal      lngt: 18      
@2362   function_type    size: @9       algn: 8        retn: @354    
                         prms: @2376   
@2363   function_decl    name: @2377    type: @2378    srcp: stdlib.h:284    
                         chan: @2379    lang: C        args: @2380   
                         body: undefined               link: extern  
@2364   parm_decl        name: @2317    type: @308     srcp: stdlib.h:288    
                         chan: @2381    argt: @308     size: @49     
                         algn: 32       used: 0       
@2365   parm_decl        name: @2333    type: @229     srcp: stdlib.h:293    
                         chan: @2382    argt: @229     size: @49     
                         algn: 32       used: 0       
@2366   parm_decl        name: @657     type: @33      srcp: stdlib.h:300    
                         chan: @2383    argt: @33      size: @49     
                         algn: 32       used: 0       
@2367   parm_decl        name: @2368    type: @33      srcp: stdlib.h:309    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2368   identifier_node  strg: __group  lngt: 7       
@2369   identifier_node  strg: strncasecmp             lngt: 11      
@2370   function_decl    name: @2384    mngl: @2369    type: @2306   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2385    lang: C        body: undefined 
                         link: extern  
@2371   identifier_node  strg: __builtin___memcpy_chk  lngt: 22      
@2372   function_decl    name: @2386    type: @2387    srcp: <built-in>:0      
                         note: artificial              chan: @2388   
                         lang: C        body: undefined 
                         link: extern  
@2373   tree_list        valu: @33      chan: @11     
@2374   tree_list        valu: @33      chan: @2389   
@2375   tree_list        valu: @241     chan: @2390   
@2376   tree_list        valu: @70      chan: @2391   
@2377   identifier_node  strg: __strtof_internal       lngt: 17      
@2378   function_type    size: @9       algn: 8        retn: @436    
                         prms: @2392   
@2379   function_decl    name: @2393    type: @2394    srcp: stdlib.h:281    
                         chan: @2395    lang: C        args: @2396   
                         body: undefined               link: extern  
@2380   parm_decl        name: @2317    type: @308     srcp: stdlib.h:284    
                         chan: @2397    argt: @308     size: @49     
                         algn: 32       used: 0       
@2381   parm_decl        name: @2333    type: @229     srcp: stdlib.h:288    
                         chan: @2398    argt: @229     size: @49     
                         algn: 32       used: 0       
@2382   parm_decl        name: @657     type: @33      srcp: stdlib.h:293    
                         chan: @2399    argt: @33      size: @49     
                         algn: 32       used: 0       
@2383   parm_decl        name: @2368    type: @33      srcp: stdlib.h:300    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2384   identifier_node  strg: __builtin_strncasecmp   lngt: 21      
@2385   function_decl    name: @2400    type: @2401    srcp: <built-in>:0      
                         note: artificial              chan: @2402   
                         lang: C        body: undefined 
                         link: extern  
@2386   identifier_node  strg: __builtin_object_size   lngt: 21      
@2387   function_type    size: @9       algn: 8        retn: @170    
                         prms: @2403   
@2388   function_decl    name: @2404    type: @2405    srcp: stdlib.h:653    
                         chan: @2406    lang: C        args: @2407   
                         body: undefined               link: extern  
@2389   tree_list        valu: @33      chan: @11     
@2390   tree_list        valu: @33      chan: @2408   
@2391   tree_list        valu: @241     chan: @2409   
@2392   tree_list        valu: @70      chan: @2410   
@2393   identifier_node  strg: __strtod_internal       lngt: 17      
@2394   function_type    size: @9       algn: 8        retn: @36     
                         prms: @2411   
@2395   function_decl    name: @2412    type: @2413    srcp: stdlib.h:272    
                         chan: @2414    lang: C        args: @2415   
                         body: undefined               link: extern  
@2396   parm_decl        name: @2317    type: @308     srcp: stdlib.h:281    
                         chan: @2416    argt: @308     size: @49     
                         algn: 32       used: 0       
@2397   parm_decl        name: @2333    type: @229     srcp: stdlib.h:284    
                         chan: @2417    argt: @229     size: @49     
                         algn: 32       used: 0       
@2398   parm_decl        name: @2368    type: @33      srcp: stdlib.h:288    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2399   parm_decl        name: @2368    type: @33      srcp: stdlib.h:293    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2400   identifier_node  strg: strlen   lngt: 6       
@2401   function_type    size: @9       algn: 8        retn: @170    
                         prms: @2418   
@2402   function_decl    name: @2419    mngl: @2400    type: @2401   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2420    lang: C        body: undefined 
                         link: extern  
@2403   tree_list        valu: @1903    chan: @2421   
@2404   identifier_node  strg: _Exit    lngt: 5       
@2405   function_type    unql: @2422    size: @9       algn: 8       
                         retn: @26      prms: @2423   
@2406   function_decl    name: @2424    mngl: @2404    type: @2422   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2425    lang: C        body: undefined 
                         link: extern  
@2407   parm_decl        name: @2426    type: @33      srcp: stdlib.h:653    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2408   tree_list        valu: @33      chan: @11     
@2409   tree_list        valu: @33      chan: @11     
@2410   tree_list        valu: @241     chan: @2427   
@2411   tree_list        valu: @70      chan: @2428   
@2412   identifier_node  strg: strtold_l               lngt: 9       
@2413   function_type    size: @9       algn: 8        retn: @354    
                         prms: @2429   
@2414   function_decl    name: @2430    type: @2431    srcp: stdlib.h:267    
                         chan: @2432    lang: C        args: @2433   
                         body: undefined               link: extern  
@2415   parm_decl        name: @2317    type: @308     srcp: stdlib.h:272    
                         chan: @2434    argt: @308     size: @49     
                         algn: 32       used: 0       
@2416   parm_decl        name: @2333    type: @229     srcp: stdlib.h:281    
                         chan: @2435    argt: @229     size: @49     
                         algn: 32       used: 0       
@2417   parm_decl        name: @2368    type: @33      srcp: stdlib.h:284    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2418   tree_list        valu: @70      chan: @11     
@2419   identifier_node  strg: __builtin_strlen        lngt: 16      
@2420   function_decl    name: @2436    type: @2437    srcp: <built-in>:0      
                         note: artificial              chan: @2438   
                         lang: C        body: undefined 
                         link: extern  
@2421   tree_list        valu: @33      chan: @11     
@2422   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2423   
@2423   tree_list        valu: @33      chan: @11     
@2424   identifier_node  strg: __builtin__Exit         lngt: 15      
@2425   function_decl    name: @2439    type: @2422    srcp: <built-in>:0      
                         note: artificial              chan: @2440   
                         lang: C        body: undefined 
                         link: extern  
@2426   identifier_node  strg: __status lngt: 8       
@2427   tree_list        valu: @33      chan: @11     
@2428   tree_list        valu: @241     chan: @2441   
@2429   tree_list        valu: @70      chan: @2442   
@2430   identifier_node  strg: strtof_l lngt: 8       
@2431   function_type    size: @9       algn: 8        retn: @436    
                         prms: @2443   
@2432   function_decl    name: @2444    type: @2445    srcp: stdlib.h:263    
                         chan: @2446    lang: C        args: @2447   
                         body: undefined               link: extern  
@2433   parm_decl        name: @2317    type: @308     srcp: stdlib.h:267    
                         chan: @2448    argt: @308     size: @49     
                         algn: 32       used: 0       
@2434   parm_decl        name: @2333    type: @229     srcp: stdlib.h:272    
                         chan: @2449    argt: @229     size: @49     
                         algn: 32       used: 0       
@2435   parm_decl        name: @2368    type: @33      srcp: stdlib.h:281    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2436   identifier_node  strg: strndup  lngt: 7       
@2437   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2450   
@2438   function_decl    name: @2451    mngl: @2436    type: @2437   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2452    lang: C        body: undefined 
                         link: extern  
@2439   identifier_node  strg: _exit    lngt: 5       
@2440   function_decl    name: @2453    mngl: @2439    type: @2422   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2454    lang: C        body: undefined 
                         link: extern  
@2441   tree_list        valu: @33      chan: @11     
@2442   tree_list        valu: @241     chan: @2455   
@2443   tree_list        valu: @70      chan: @2456   
@2444   identifier_node  strg: strtod_l lngt: 8       
@2445   function_type    size: @9       algn: 8        retn: @36     
                         prms: @2457   
@2446   function_decl    name: @2458    type: @2459    srcp: stdlib.h:259    
                         chan: @2460    lang: C        args: @2461   
                         body: undefined               link: extern  
@2447   parm_decl        name: @2317    type: @308     srcp: stdlib.h:263    
                         chan: @2462    argt: @308     size: @49     
                         algn: 32       used: 0       
@2448   parm_decl        name: @2333    type: @229     srcp: stdlib.h:267    
                         chan: @2463    argt: @229     size: @49     
                         algn: 32       used: 0       
@2449   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:272    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2450   tree_list        valu: @70      chan: @2466   
@2451   identifier_node  strg: __builtin_strndup       lngt: 17      
@2452   function_decl    name: @2467    type: @2468    srcp: <built-in>:0      
                         note: artificial              chan: @2469   
                         lang: C        body: undefined 
                         link: extern  
@2453   identifier_node  strg: __builtin__exit         lngt: 15      
@2454   function_decl    name: @2470    type: @2471    srcp: <built-in>:0      
                         note: artificial              chan: @2472   
                         lang: C        body: undefined 
                         link: extern  
@2455   tree_list        valu: @2465    chan: @11     
@2456   tree_list        valu: @241     chan: @2473   
@2457   tree_list        valu: @70      chan: @2474   
@2458   identifier_node  strg: strtoull_l              lngt: 10      
@2459   function_type    size: @9       algn: 8        retn: @502    
                         prms: @2475   
@2460   function_decl    name: @2476    type: @2477    srcp: stdlib.h:253    
                         chan: @2478    lang: C        args: @2479   
                         body: undefined               link: extern  
@2461   parm_decl        name: @2317    type: @308     srcp: stdlib.h:259    
                         chan: @2480    argt: @308     size: @49     
                         algn: 32       used: 0       
@2462   parm_decl        name: @2333    type: @229     srcp: stdlib.h:263    
                         chan: @2481    argt: @229     size: @49     
                         algn: 32       used: 0       
@2463   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:267    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2464   identifier_node  strg: __loc    lngt: 5       
@2465   pointer_type     name: @2482    unql: @2483    size: @49     
                         algn: 32       ptd : @2484   
@2466   tree_list        valu: @170     chan: @11     
@2467   identifier_node  strg: strdup   lngt: 6       
@2468   function_type    size: @9       algn: 8        retn: @39     
                         prms: @739    
@2469   function_decl    name: @2485    mngl: @2467    type: @2468   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2486    lang: C        body: undefined 
                         link: extern  
@2470   identifier_node  strg: __builtin_va_start      lngt: 18      
@2471   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2487   
@2472   function_decl    name: @2488    type: @2489    srcp: <built-in>:0      
                         note: artificial              chan: @2490   
                         lang: C        body: undefined 
                         link: extern  
@2473   tree_list        valu: @2465    chan: @11     
@2474   tree_list        valu: @241     chan: @2491   
@2475   tree_list        valu: @70      chan: @2492   
@2476   identifier_node  strg: strtoll_l               lngt: 9       
@2477   function_type    size: @9       algn: 8        retn: @576    
                         prms: @2493   
@2478   function_decl    name: @2494    type: @2495    srcp: stdlib.h:247    
                         chan: @2496    lang: C        args: @2497   
                         body: undefined               link: extern  
@2479   parm_decl        name: @2317    type: @308     srcp: stdlib.h:253    
                         chan: @2498    argt: @308     size: @49     
                         algn: 32       used: 0       
@2480   parm_decl        name: @2333    type: @229     srcp: stdlib.h:259    
                         chan: @2499    argt: @229     size: @49     
                         algn: 32       used: 0       
@2481   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:263    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2482   type_decl        name: @2500    type: @2465    srcp: xlocale.h:40     
                         chan: @2501   
@2483   pointer_type     size: @49      algn: 32       ptd : @2484   
@2484   record_type      name: @2502    size: @2503    algn: 32      
                         tag : struct   flds: @2504    binf: @2505   
@2485   identifier_node  strg: __builtin_strdup        lngt: 16      
@2486   function_decl    name: @2506    type: @2220    srcp: <built-in>:0      
                         note: artificial              chan: @2507   
                         lang: C        body: undefined 
                         link: extern  
@2487   tree_list        valu: @2508   
@2488   identifier_node  strg: __builtin_va_end        lngt: 16      
@2489   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2509   
@2490   function_decl    name: @2510    type: @2511    srcp: <built-in>:0      
                         note: artificial              chan: @2512   
                         lang: C        body: undefined 
                         link: extern  
@2491   tree_list        valu: @2465    chan: @11     
@2492   tree_list        valu: @241     chan: @2513   
@2493   tree_list        valu: @70      chan: @2514   
@2494   identifier_node  strg: strtoul_l               lngt: 9       
@2495   function_type    size: @9       algn: 8        retn: @1418   
                         prms: @2515   
@2496   function_decl    name: @2516    type: @2517    srcp: stdlib.h:242    
                         chan: @2482    lang: C        args: @2518   
                         body: undefined               link: extern  
@2497   parm_decl        name: @2317    type: @308     srcp: stdlib.h:247    
                         chan: @2519    argt: @308     size: @49     
                         algn: 32       used: 0       
@2498   parm_decl        name: @2333    type: @229     srcp: stdlib.h:253    
                         chan: @2520    argt: @229     size: @49     
                         algn: 32       used: 0       
@2499   parm_decl        name: @657     type: @33      srcp: stdlib.h:259    
                         chan: @2521    argt: @33      size: @49     
                         algn: 32       used: 0       
@2500   identifier_node  strg: __locale_t              lngt: 10      
@2501   function_decl    name: @2522    type: @2523    srcp: stdlib.h:217    
                         chan: @2524    lang: C        args: @2525   
                         body: undefined               link: extern  
@2502   type_decl        name: @2526    type: @2484    srcp: xlocale.h:29     
                         note: artificial 
@2503   integer_cst      type: @21      low : 928     
@2504   field_decl       name: @2527    type: @2528    scpe: @2484   
                         srcp: xlocale.h:31            chan: @2529   
                         accs: pub      size: @2530    algn: 32      
                         bpos: @45     
@2505   binfo            type: @2484    bases: 0       
@2506   identifier_node  strg: strcspn  lngt: 7       
@2507   function_decl    name: @2531    mngl: @2506    type: @2220   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2532    lang: C        body: undefined 
                         link: extern  
@2508   reference_type   size: @49      algn: 32       refd: @1286   
@2509   tree_list        valu: @2508    chan: @11     
@2510   identifier_node  strg: __builtin_va_copy       lngt: 17      
@2511   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2533   
@2512   function_decl    name: @2534    type: @2535    srcp: <built-in>:0      
                         note: artificial              chan: @2536   
                         lang: C        body: undefined 
                         link: extern  
@2513   tree_list        valu: @33      chan: @2537   
@2514   tree_list        valu: @241     chan: @2538   
@2515   tree_list        valu: @70      chan: @2539   
@2516   identifier_node  strg: strtol_l lngt: 8       
@2517   function_type    size: @9       algn: 8        retn: @602    
                         prms: @2540   
@2518   parm_decl        name: @2317    type: @308     srcp: stdlib.h:242    
                         chan: @2541    argt: @308     size: @49     
                         algn: 32       used: 0       
@2519   parm_decl        name: @2333    type: @229     srcp: stdlib.h:247    
                         chan: @2542    argt: @229     size: @49     
                         algn: 32       used: 0       
@2520   parm_decl        name: @657     type: @33      srcp: stdlib.h:253    
                         chan: @2543    argt: @33      size: @49     
                         algn: 32       used: 0       
@2521   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:259    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2522   identifier_node  strg: strtoull lngt: 8       
@2523   function_type    size: @9       algn: 8        retn: @502    
                         prms: @2544   
@2524   function_decl    name: @2545    type: @2546    srcp: stdlib.h:212    
                         chan: @2547    lang: C        args: @2548   
                         body: undefined               link: extern  
@2525   parm_decl        name: @2317    type: @308     srcp: stdlib.h:217    
                         chan: @2549    argt: @308     size: @49     
                         algn: 32       used: 0       
@2526   identifier_node  strg: __locale_struct         lngt: 15      
@2527   identifier_node  strg: __locales               lngt: 9       
@2528   array_type       size: @2530    algn: 32       elts: @2550   
                         domn: @2551   
@2529   field_decl       name: @2552    type: @2553    scpe: @2484   
                         srcp: xlocale.h:34            chan: @2554   
                         accs: pub      size: @49      algn: 32      
                         bpos: @2530   
@2530   integer_cst      type: @21      low : 416     
@2531   identifier_node  strg: __builtin_strcspn       lngt: 17      
@2532   function_decl    name: @2555    type: @2556    srcp: <built-in>:0      
                         note: artificial              chan: @2557   
                         lang: C        body: undefined 
                         link: extern  
@2533   tree_list        valu: @2508    chan: @2558   
@2534   identifier_node  strg: __builtin_update_setjmp_buf 
                         lngt: 27      
@2535   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2559   
@2536   function_decl    name: @2560    type: @332     srcp: <built-in>:0      
                         note: artificial              chan: @2561   
                         lang: C        body: undefined 
                         link: extern  
@2537   tree_list        valu: @2465    chan: @11     
@2538   tree_list        valu: @33      chan: @2562   
@2539   tree_list        valu: @241     chan: @2563   
@2540   tree_list        valu: @70      chan: @2564   
@2541   parm_decl        name: @2333    type: @229     srcp: stdlib.h:242    
                         chan: @2565    argt: @229     size: @49     
                         algn: 32       used: 0       
@2542   parm_decl        name: @657     type: @33      srcp: stdlib.h:247    
                         chan: @2566    argt: @33      size: @49     
                         algn: 32       used: 0       
@2543   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:253    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2544   tree_list        valu: @70      chan: @2567   
@2545   identifier_node  strg: strtoll  lngt: 7       
@2546   function_type    size: @9       algn: 8        retn: @576    
                         prms: @2568   
@2547   function_decl    name: @2569    type: @2570    srcp: stdlib.h:203    
                         chan: @2571    lang: C        args: @2572   
                         body: undefined               link: extern  
@2548   parm_decl        name: @2317    type: @308     srcp: stdlib.h:212    
                         chan: @2573    argt: @308     size: @49     
                         algn: 32       used: 0       
@2549   parm_decl        name: @2333    type: @229     srcp: stdlib.h:217    
                         chan: @2574    argt: @229     size: @49     
                         algn: 32       used: 0       
@2550   pointer_type     size: @49      algn: 32       ptd : @2575   
@2551   integer_type     size: @49      algn: 32       prec: 32      
                         sign: signed   min : @103     max : @2576   
@2552   identifier_node  strg: __ctype_b               lngt: 9       
@2553   pointer_type     size: @49      algn: 32       ptd : @2577   
@2554   field_decl       name: @2578    type: @2579    scpe: @2484   
                         srcp: xlocale.h:35            chan: @2580   
                         accs: pub      size: @49      algn: 32      
                         bpos: @2581   
@2555   identifier_node  strg: strcpy   lngt: 6       
@2556   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2582   
@2557   function_decl    name: @2583    mngl: @2555    type: @2556   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2584    lang: C        body: undefined 
                         link: extern  
@2558   tree_list        valu: @1286    chan: @11     
@2559   tree_list        valu: @58      chan: @2585   
@2560   identifier_node  strg: __builtin_unwind_init   lngt: 21      
@2561   function_decl    name: @2586    type: @332     srcp: <built-in>:0      
                         note: artificial              chan: @2587   
                         lang: C        body: undefined 
                         link: extern  
@2562   tree_list        valu: @2465    chan: @11     
@2563   tree_list        valu: @33      chan: @2588   
@2564   tree_list        valu: @241     chan: @2589   
@2565   parm_decl        name: @657     type: @33      srcp: stdlib.h:242    
                         chan: @2590    argt: @33      size: @49     
                         algn: 32       used: 0       
@2566   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:247    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2567   tree_list        valu: @241     chan: @2591   
@2568   tree_list        valu: @70      chan: @2592   
@2569   identifier_node  strg: strtouq  lngt: 7       
@2570   function_type    size: @9       algn: 8        retn: @502    
                         prms: @2544   
@2571   function_decl    name: @2593    type: @2594    srcp: stdlib.h:198    
                         chan: @2595    lang: C        args: @2596   
                         body: undefined               link: extern  
@2572   parm_decl        name: @2317    type: @308     srcp: stdlib.h:203    
                         chan: @2597    argt: @308     size: @49     
                         algn: 32       used: 0       
@2573   parm_decl        name: @2333    type: @229     srcp: stdlib.h:212    
                         chan: @2598    argt: @229     size: @49     
                         algn: 32       used: 0       
@2574   parm_decl        name: @657     type: @33      srcp: stdlib.h:217    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2575   record_type      name: @2599    algn: 8        tag : struct  
@2576   integer_cst      type: @124     low : 12      
@2577   integer_type     qual: c        name: @556     unql: @540    
                         size: @557     algn: 16       prec: 16      
                         sign: unsigned min : @558     max : @559    
@2578   identifier_node  strg: __ctype_tolower         lngt: 15      
@2579   pointer_type     size: @49      algn: 32       ptd : @2600   
@2580   field_decl       name: @2601    type: @2579    scpe: @2484   
                         srcp: xlocale.h:36            chan: @2602   
                         accs: pub      size: @49      algn: 32      
                         bpos: @2603   
@2581   integer_cst      type: @21      low : 448     
@2582   tree_list        valu: @39      chan: @2604   
@2583   identifier_node  strg: __builtin_strcpy        lngt: 16      
@2584   function_decl    name: @2605    type: @2606    srcp: <built-in>:0      
                         note: artificial              chan: @2607   
                         lang: C        body: undefined 
                         link: extern  
@2585   tree_list        valu: @33      chan: @11     
@2586   identifier_node  strg: __builtin_trap          lngt: 14      
@2587   function_decl    name: @2608    type: @2609    srcp: <built-in>:0      
                         note: artificial              chan: @2610   
                         lang: C        body: undefined 
                         link: extern  
@2588   tree_list        valu: @2465    chan: @11     
@2589   tree_list        valu: @33      chan: @2611   
@2590   parm_decl        name: @2464    type: @2465    srcp: stdlib.h:242    
                         argt: @2465    size: @49      algn: 32      
                         used: 0       
@2591   tree_list        valu: @33      chan: @11     
@2592   tree_list        valu: @241     chan: @2612   
@2593   identifier_node  strg: strtoq   lngt: 6       
@2594   function_type    size: @9       algn: 8        retn: @576    
                         prms: @2568   
@2595   function_decl    name: @2613    type: @2614    srcp: stdlib.h:190    
                         chan: @2615    lang: C        args: @2616   
                         body: undefined               link: extern  
@2596   parm_decl        name: @2317    type: @308     srcp: stdlib.h:198    
                         chan: @2617    argt: @308     size: @49     
                         algn: 32       used: 0       
@2597   parm_decl        name: @2333    type: @229     srcp: stdlib.h:203    
                         chan: @2618    argt: @229     size: @49     
                         algn: 32       used: 0       
@2598   parm_decl        name: @657     type: @33      srcp: stdlib.h:212    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2599   type_decl        name: @2619    type: @2575    srcp: xlocale.h:31     
                         note: artificial 
@2600   integer_type     qual: c        name: @64      unql: @33     
                         size: @49      algn: 32       prec: 32      
                         sign: signed   min : @65      max : @66     
@2601   identifier_node  strg: __ctype_toupper         lngt: 15      
@2602   field_decl       name: @2620    type: @2621    scpe: @2484   
                         srcp: xlocale.h:39            chan: @2622   
                         accs: pub      size: @2530    algn: 32      
                         bpos: @2623   
@2603   integer_cst      type: @21      low : 480     
@2604   tree_list        valu: @70      chan: @11     
@2605   identifier_node  strg: strcmp   lngt: 6       
@2606   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2624   
@2607   function_decl    name: @2625    mngl: @2605    type: @2606   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2626    lang: C        body: undefined 
                         link: extern  
@2608   identifier_node  strg: strftime lngt: 8       
@2609   function_type    size: @9       algn: 8        retn: @170    
                         prms: @2627   
@2610   function_decl    name: @2628    mngl: @2608    type: @2609   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2629    lang: C        body: undefined 
                         link: extern  
@2611   tree_list        valu: @2465    chan: @11     
@2612   tree_list        valu: @33      chan: @11     
@2613   identifier_node  strg: strtoul  lngt: 7       
@2614   function_type    size: @9       algn: 8        retn: @1418   
                         prms: @2630   
@2615   function_decl    name: @2631    type: @2632    srcp: stdlib.h:186    
                         chan: @2633    lang: C        args: @2634   
                         body: undefined               link: extern  
@2616   parm_decl        name: @2317    type: @308     srcp: stdlib.h:190    
                         chan: @2635    argt: @308     size: @49     
                         algn: 32       used: 0       
@2617   parm_decl        name: @2333    type: @229     srcp: stdlib.h:198    
                         chan: @2636    argt: @229     size: @49     
                         algn: 32       used: 0       
@2618   parm_decl        name: @657     type: @33      srcp: stdlib.h:203    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2619   identifier_node  strg: locale_data             lngt: 11      
@2620   identifier_node  strg: __names  lngt: 7       
@2621   array_type       size: @2530    algn: 32       elts: @70     
                         domn: @2551   
@2622   type_decl        name: @2526    type: @2484    scpe: @2484   
                         srcp: xlocale.h:29            note: artificial 
@2623   integer_cst      type: @21      low : 512     
@2624   tree_list        valu: @70      chan: @2637   
@2625   identifier_node  strg: __builtin_strcmp        lngt: 16      
@2626   function_decl    name: @2638    type: @2245    srcp: <built-in>:0      
                         note: artificial              chan: @2639   
                         lang: C        body: undefined 
                         link: extern  
@2627   tree_list        valu: @39      chan: @2640   
@2628   identifier_node  strg: __builtin_strftime      lngt: 18      
@2629   function_decl    name: @2641    type: @2642    srcp: <built-in>:0      
                         note: artificial              chan: @2643   
                         lang: C        body: undefined 
                         link: extern  
@2630   tree_list        valu: @70      chan: @2644   
@2631   identifier_node  strg: strtol   lngt: 6       
@2632   function_type    size: @9       algn: 8        retn: @602    
                         prms: @2645   
@2633   function_decl    name: @2646    type: @2647    srcp: stdlib.h:178    
                         chan: @2648    lang: C        args: @2649   
                         body: undefined               link: extern  
@2634   parm_decl        name: @2317    type: @308     srcp: stdlib.h:186    
                         chan: @2650    argt: @308     size: @49     
                         algn: 32       used: 0       
@2635   parm_decl        name: @2333    type: @229     srcp: stdlib.h:190    
                         chan: @2651    argt: @229     size: @49     
                         algn: 32       used: 0       
@2636   parm_decl        name: @657     type: @33      srcp: stdlib.h:198    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2637   tree_list        valu: @70      chan: @11     
@2638   identifier_node  strg: strchr   lngt: 6       
@2639   function_decl    name: @2652    mngl: @2638    type: @2245   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2653    lang: C        body: undefined 
                         link: extern  
@2640   tree_list        valu: @170     chan: @2654   
@2641   identifier_node  strg: strfmon  lngt: 7       
@2642   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1579   
@2643   function_decl    name: @2655    mngl: @2641    type: @2642   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2656    lang: C        body: undefined 
                         link: extern  
@2644   tree_list        valu: @241     chan: @2657   
@2645   tree_list        valu: @70      chan: @2658   
@2646   identifier_node  strg: strtold  lngt: 7       
@2647   function_type    size: @9       algn: 8        retn: @354    
                         prms: @2659   
@2648   function_decl    name: @2660    type: @2661    srcp: stdlib.h:174    
                         chan: @2662    lang: C        args: @2663   
                         body: undefined               link: extern  
@2649   parm_decl        name: @2317    type: @308     srcp: stdlib.h:178    
                         chan: @2664    argt: @308     size: @49     
                         algn: 32       used: 0       
@2650   parm_decl        name: @2333    type: @229     srcp: stdlib.h:186    
                         chan: @2665    argt: @229     size: @49     
                         algn: 32       used: 0       
@2651   parm_decl        name: @657     type: @33      srcp: stdlib.h:190    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2652   identifier_node  strg: __builtin_strchr        lngt: 16      
@2653   function_decl    name: @2666    type: @2556    srcp: <built-in>:0      
                         note: artificial              chan: @2667   
                         lang: C        body: undefined 
                         link: extern  
@2654   tree_list        valu: @70      chan: @2668   
@2655   identifier_node  strg: __builtin_strfmon       lngt: 17      
@2656   function_decl    name: @2669    type: @2471    srcp: <built-in>:0      
                         note: artificial              chan: @2670   
                         lang: C        body: undefined 
                         link: extern  
@2657   tree_list        valu: @33      chan: @11     
@2658   tree_list        valu: @241     chan: @2671   
@2659   tree_list        valu: @70      chan: @2672   
@2660   identifier_node  strg: strtof   lngt: 6       
@2661   function_type    size: @9       algn: 8        retn: @436    
                         prms: @2673   
@2662   function_decl    name: @2674    type: @2675    srcp: stdlib.h:167    
                         chan: @2676    lang: C        args: @2677   
                         body: undefined               link: extern  
@2663   parm_decl        name: @2317    type: @308     srcp: stdlib.h:174    
                         chan: @2678    argt: @308     size: @49     
                         algn: 32       used: 0       
@2664   parm_decl        name: @2333    type: @229     srcp: stdlib.h:178    
                         argt: @229     size: @49      algn: 32      
                         used: 0       
@2665   parm_decl        name: @657     type: @33      srcp: stdlib.h:186    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@2666   identifier_node  strg: strcat   lngt: 6       
@2667   function_decl    name: @2679    mngl: @2666    type: @2556   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2680    lang: C        body: undefined 
                         link: extern  
@2668   tree_list        valu: @1903    chan: @11     
@2669   identifier_node  strg: __builtin_stdarg_start  lngt: 22      
@2670   function_decl    name: @2681    type: @2682    srcp: <built-in>:0      
                         note: artificial              chan: @2683   
                         lang: C        body: undefined 
                         link: extern  
@2671   tree_list        valu: @33      chan: @11     
@2672   tree_list        valu: @241     chan: @11     
@2673   tree_list        valu: @70      chan: @2684   
@2674   identifier_node  strg: strtod   lngt: 6       
@2675   function_type    size: @9       algn: 8        retn: @36     
                         prms: @2685   
@2676   function_decl    name: @2686    type: @2687    srcp: stdlib.h:159    
                         chan: @2688    lang: C        args: @2689   
                         body: undefined               link: extern  
@2677   parm_decl        name: @2317    type: @308     srcp: stdlib.h:167    
                         chan: @2690    argt: @308     size: @49     
                         algn: 32       used: 0       
@2678   parm_decl        name: @2333    type: @229     srcp: stdlib.h:174    
                         argt: @229     size: @49      algn: 32      
                         used: 0       
@2679   identifier_node  strg: __builtin_strcat        lngt: 16      
@2680   function_decl    name: @2691    type: @2606    srcp: <built-in>:0      
                         note: artificial              chan: @2692   
                         lang: C        body: undefined 
                         link: extern  
@2681   identifier_node  strg: __builtin_setjmp        lngt: 16      
@2682   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2693   
@2683   function_decl    name: @2694    type: @193     srcp: <built-in>:0      
                         note: artificial              chan: @2695   
                         lang: C        body: undefined 
                         link: extern  
@2684   tree_list        valu: @241     chan: @11     
@2685   tree_list        valu: @70      chan: @2696   
@2686   identifier_node  strg: atoll    lngt: 5       
@2687   function_type    size: @9       algn: 8        retn: @576    
                         prms: @2697   
@2688   function_decl    name: @2698    type: @2699    srcp: stdlib.h:152    
                         chan: @2700    lang: C        args: @2701   
                         body: undefined               link: extern  
@2689   parm_decl        name: @2317    type: @70      srcp: stdlib.h:159    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@2690   parm_decl        name: @2333    type: @229     srcp: stdlib.h:167    
                         argt: @229     size: @49      algn: 32      
                         used: 0       
@2691   identifier_node  strg: strcasecmp              lngt: 10      
@2692   function_decl    name: @2702    mngl: @2691    type: @2606   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2703    lang: C        body: undefined 
                         link: extern  
@2693   tree_list        valu: @58      chan: @11     
@2694   identifier_node  strg: __builtin_saveregs      lngt: 18      
@2695   function_decl    name: @2704    type: @236     srcp: <built-in>:0      
                         note: artificial              chan: @2705   
                         lang: C        body: undefined 
                         link: extern  
@2696   tree_list        valu: @241     chan: @11     
@2697   tree_list        valu: @70      chan: @11     
@2698   identifier_node  strg: atol     lngt: 4       
@2699   function_type    size: @9       algn: 8        retn: @602    
                         prms: @2288   
@2700   function_decl    name: @2706    type: @2707    srcp: stdlib.h:149    
                         chan: @2708    lang: C        args: @2709   
                         body: undefined               link: extern  
@2701   parm_decl        name: @2317    type: @70      srcp: stdlib.h:152    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@2702   identifier_node  strg: __builtin_strcasecmp    lngt: 20      
@2703   function_decl    name: @2710    type: @2210    srcp: <built-in>:0      
                         note: artificial              chan: @2711   
                         lang: C        body: undefined 
                         link: extern  
@2704   identifier_node  strg: __builtin_return_address 
                         lngt: 24      
@2705   function_decl    name: @2712    type: @196     srcp: <built-in>:0      
                         note: artificial              chan: @2713   
                         lang: C        body: undefined 
                         link: extern  
@2706   identifier_node  strg: atoi     lngt: 4       
@2707   function_type    size: @9       algn: 8        retn: @33     
                         prms: @243    
@2708   function_decl    name: @2714    type: @2715    srcp: stdlib.h:146    
                         chan: @2716    lang: C        args: @2717   
                         body: undefined               link: extern  
@2709   parm_decl        name: @2317    type: @70      srcp: stdlib.h:149    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@2710   identifier_node  strg: stpncpy  lngt: 7       
@2711   function_decl    name: @2718    mngl: @2710    type: @2210   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2719    lang: C        body: undefined 
                         link: extern  
@2712   identifier_node  strg: __builtin_return        lngt: 16      
@2713   function_decl    name: @2720    type: @2721    srcp: <built-in>:0      
                         note: artificial              chan: @2722   
                         lang: C        body: undefined 
                         link: extern  
@2714   identifier_node  strg: atof     lngt: 4       
@2715   function_type    size: @9       algn: 8        retn: @36     
                         prms: @2723   
@2716   function_decl    name: @2724    type: @2725    srcp: stdlib.h:140    
                         chan: @591     lang: C        body: undefined 
                         link: extern  
@2717   parm_decl        name: @2317    type: @70      srcp: stdlib.h:146    
                         argt: @70      size: @49      algn: 32      
                         used: 0       
@2718   identifier_node  strg: __builtin_stpncpy       lngt: 17      
@2719   function_decl    name: @2726    type: @2556    srcp: <built-in>:0      
                         note: artificial              chan: @2727   
                         lang: C        body: undefined 
                         link: extern  
@2720   identifier_node  strg: __builtin_prefetch      lngt: 18      
@2721   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2728   
@2722   function_decl    name: @2729    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @2731   
                         lang: C        body: undefined 
                         link: extern  
@2723   tree_list        valu: @70      chan: @11     
@2724   identifier_node  strg: __ctype_get_mb_cur_max  lngt: 22      
@2725   function_type    unql: @2732    size: @9       algn: 8       
                         retn: @141     prms: @11     
@2726   identifier_node  strg: stpcpy   lngt: 6       
@2727   function_decl    name: @2733    mngl: @2726    type: @2556   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2734    lang: C        body: undefined 
                         link: extern  
@2728   tree_list        valu: @1903   
@2729   identifier_node  strg: __builtin_popcountll    lngt: 20      
@2730   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2735   
@2731   function_decl    name: @2736    type: @2737    srcp: <built-in>:0      
                         note: artificial              chan: @2738   
                         lang: C        body: undefined 
                         link: extern  
@2732   function_type    size: @9       algn: 8        retn: @141    
                         prms: @11     
@2733   identifier_node  strg: __builtin_stpcpy        lngt: 16      
@2734   function_decl    name: @2739    type: @2245    srcp: <built-in>:0      
                         note: artificial              chan: @2740   
                         lang: C        body: undefined 
                         link: extern  
@2735   tree_list        valu: @502     chan: @11     
@2736   identifier_node  strg: __builtin_popcountl     lngt: 19      
@2737   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2741   
@2738   function_decl    name: @2742    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @2743   
                         lang: C        body: undefined 
                         link: extern  
@2739   identifier_node  strg: rindex   lngt: 6       
@2740   function_decl    name: @2744    mngl: @2739    type: @2245   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2745    lang: C        body: undefined 
                         link: extern  
@2741   tree_list        valu: @1418    chan: @11     
@2742   identifier_node  strg: __builtin_popcountimax  lngt: 22      
@2743   function_decl    name: @2746    type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @2747   
                         lang: C        body: undefined 
                         link: extern  
@2744   identifier_node  strg: __builtin_rindex        lngt: 16      
@2745   function_decl    name: @2748    type: @2749    srcp: <built-in>:0      
                         note: artificial              chan: @2750   
                         lang: C        body: undefined 
                         link: extern  
@2746   identifier_node  strg: __builtin_popcount      lngt: 18      
@2747   function_decl    name: @2751    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @2752   
                         lang: C        body: undefined 
                         link: extern  
@2748   identifier_node  strg: memset   lngt: 6       
@2749   function_type    size: @9       algn: 8        retn: @58     
                         prms: @2753   
@2750   function_decl    name: @2754    mngl: @2748    type: @2749   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2755    lang: C        body: undefined 
                         link: extern  
@2751   identifier_node  strg: __builtin_parityll      lngt: 18      
@2752   function_decl    name: @2756    type: @2737    srcp: <built-in>:0      
                         note: artificial              chan: @2757   
                         lang: C        body: undefined 
                         link: extern  
@2753   tree_list        valu: @58      chan: @2758   
@2754   identifier_node  strg: __builtin_memset        lngt: 16      
@2755   function_decl    name: @2759    type: @2760    srcp: <built-in>:0      
                         note: artificial              chan: @2761   
                         lang: C        body: undefined 
                         link: extern  
@2756   identifier_node  strg: __builtin_parityl       lngt: 17      
@2757   function_decl    name: @2762    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @2763   
                         lang: C        body: undefined 
                         link: extern  
@2758   tree_list        valu: @33      chan: @2764   
@2759   identifier_node  strg: mempcpy  lngt: 7       
@2760   function_type    size: @9       algn: 8        retn: @58     
                         prms: @2765   
@2761   function_decl    name: @2766    mngl: @2759    type: @2760   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2767    lang: C        body: undefined 
                         link: extern  
@2762   identifier_node  strg: __builtin_parityimax    lngt: 20      
@2763   function_decl    name: @2768    type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @2769   
                         lang: C        body: undefined 
                         link: extern  
@2764   tree_list        valu: @170     chan: @11     
@2765   tree_list        valu: @58      chan: @2770   
@2766   identifier_node  strg: __builtin_mempcpy       lngt: 17      
@2767   function_decl    name: @2771    type: @2760    srcp: <built-in>:0      
                         note: artificial              chan: @2772   
                         lang: C        body: undefined 
                         link: extern  
@2768   identifier_node  strg: __builtin_parity        lngt: 16      
@2769   function_decl    name: @2773    type: @193     srcp: <built-in>:0      
                         note: artificial              chan: @2774   
                         lang: C        body: undefined 
                         link: extern  
@2770   tree_list        valu: @1903    chan: @2775   
@2771   identifier_node  strg: memmove  lngt: 7       
@2772   function_decl    name: @2776    mngl: @2771    type: @2760   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2777    lang: C        body: undefined 
                         link: extern  
@2773   identifier_node  strg: __builtin_next_arg      lngt: 18      
@2774   function_decl    name: @2778    type: @218     srcp: stdlib.h:589    
                         chan: @2779    lang: C        args: @2780   
                         body: undefined               link: extern  
@2775   tree_list        valu: @170     chan: @11     
@2776   identifier_node  strg: __builtin_memmove       lngt: 17      
@2777   function_decl    name: @2781    type: @2760    srcp: <built-in>:0      
                         note: artificial              chan: @2782   
                         lang: C        body: undefined 
                         link: extern  
@2778   identifier_node  strg: malloc   lngt: 6       
@2779   function_decl    name: @2783    mngl: @2778    type: @236    
                         srcp: <built-in>:0            note: artificial 
                         chan: @2784    lang: C        body: undefined 
                         link: extern  
@2780   parm_decl        name: @185     type: @141     srcp: stdlib.h:589    
                         argt: @141     size: @49      algn: 32      
                         used: 0       
@2781   identifier_node  strg: memcpy   lngt: 6       
@2782   function_decl    name: @2785    mngl: @2781    type: @2760   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2786    lang: C        body: undefined 
                         link: extern  
@2783   identifier_node  strg: __builtin_malloc        lngt: 16      
@2784   function_decl    name: @2787    type: @2535    srcp: <built-in>:0      
                         note: artificial              chan: @2788   
                         lang: C        body: undefined 
                         link: extern  
@2785   identifier_node  strg: __builtin_memcpy        lngt: 16      
@2786   function_decl    name: @2789    type: @2790    srcp: <built-in>:0      
                         note: artificial              chan: @2791   
                         lang: C        body: undefined 
                         link: extern  
@2787   identifier_node  strg: __builtin_longjmp       lngt: 17      
@2788   function_decl    name: @2792    type: @2793    srcp: stdlib.h:792    
                         chan: @2794    lang: C        args: @2795   
                         body: undefined               link: extern  
@2789   identifier_node  strg: memcmp   lngt: 6       
@2790   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2796   
@2791   function_decl    name: @2797    mngl: @2789    type: @2790   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2798    lang: C        body: undefined 
                         link: extern  
@2792   identifier_node  strg: llabs    lngt: 5       
@2793   function_type    unql: @2799    size: @9       algn: 8       
                         retn: @576     prms: @2800   
@2794   function_decl    name: @2801    mngl: @2792    type: @2799   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2802    lang: C        body: undefined 
                         link: extern  
@2795   parm_decl        name: @292     type: @576     srcp: stdlib.h:792    
                         argt: @576     size: @44      algn: 64      
                         used: 0       
@2796   tree_list        valu: @1903    chan: @2803   
@2797   identifier_node  strg: __builtin_memcmp        lngt: 16      
@2798   function_decl    name: @2804    type: @2245    srcp: <built-in>:0      
                         note: artificial              chan: @2805   
                         lang: C        body: undefined 
                         link: extern  
@2799   function_type    size: @9       algn: 8        retn: @576    
                         prms: @2800   
@2800   tree_list        valu: @576     chan: @11     
@2801   identifier_node  strg: __builtin_llabs         lngt: 15      
@2802   function_decl    name: @2806    type: @2807    srcp: stdlib.h:787    
                         chan: @2808    lang: C        args: @2809   
                         body: undefined               link: extern  
@2803   tree_list        valu: @1903    chan: @2810   
@2804   identifier_node  strg: index    lngt: 5       
@2805   function_decl    name: @2811    mngl: @2804    type: @2245   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2812    lang: C        body: undefined 
                         link: extern  
@2806   identifier_node  strg: labs     lngt: 4       
@2807   function_type    unql: @2813    size: @9       algn: 8       
                         retn: @602     prms: @2814   
@2808   function_decl    name: @2815    mngl: @2806    type: @2813   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2816    lang: C        body: undefined 
                         link: extern  
@2809   parm_decl        name: @292     type: @602     srcp: stdlib.h:787    
                         argt: @602     size: @49      algn: 32      
                         used: 0       
@2810   tree_list        valu: @170     chan: @11     
@2811   identifier_node  strg: __builtin_index         lngt: 15      
@2812   function_decl    name: @2817    type: @2818    srcp: <built-in>:0      
                         note: artificial              chan: @2819   
                         lang: C        body: undefined 
                         link: extern  
@2813   function_type    size: @9       algn: 8        retn: @602    
                         prms: @2814   
@2814   tree_list        valu: @602     chan: @11     
@2815   identifier_node  strg: __builtin_labs          lngt: 14      
@2816   function_decl    name: @2820    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2822   
                         lang: C        body: undefined 
                         link: extern  
@2817   identifier_node  strg: bzero    lngt: 5       
@2818   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2823   
@2819   function_decl    name: @2824    mngl: @2817    type: @2818   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2825    lang: C        body: undefined 
                         link: extern  
@2820   identifier_node  strg: __builtin_isunordered   lngt: 21      
@2821   function_type    size: @9       algn: 8        retn: @33     
@2822   function_decl    name: @2826    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2827   
                         lang: C        body: undefined 
                         link: extern  
@2823   tree_list        valu: @58      chan: @2828   
@2824   identifier_node  strg: __builtin_bzero         lngt: 15      
@2825   function_decl    name: @2829    type: @2830    srcp: <built-in>:0      
                         note: artificial              chan: @2831   
                         lang: C        body: undefined 
                         link: extern  
@2826   identifier_node  strg: __builtin_islessgreater lngt: 23      
@2827   function_decl    name: @2832    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2833   
                         lang: C        body: undefined 
                         link: extern  
@2828   tree_list        valu: @170     chan: @11     
@2829   identifier_node  strg: bcopy    lngt: 5       
@2830   function_type    size: @9       algn: 8        retn: @26     
                         prms: @2834   
@2831   function_decl    name: @2835    mngl: @2829    type: @2830   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2836    lang: C        body: undefined 
                         link: extern  
@2832   identifier_node  strg: __builtin_islessequal   lngt: 21      
@2833   function_decl    name: @2837    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2838   
                         lang: C        body: undefined 
                         link: extern  
@2834   tree_list        valu: @1903    chan: @2839   
@2835   identifier_node  strg: __builtin_bcopy         lngt: 15      
@2836   function_decl    name: @2840    type: @2841    srcp: <built-in>:0      
                         note: artificial              chan: @2842   
                         lang: C        body: undefined 
                         link: extern  
@2837   identifier_node  strg: __builtin_isless        lngt: 16      
@2838   function_decl    name: @2843    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2844   
                         lang: C        body: undefined 
                         link: extern  
@2839   tree_list        valu: @58      chan: @2845   
@2840   identifier_node  strg: bcmp     lngt: 4       
@2841   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2796   
@2842   function_decl    name: @2846    mngl: @2840    type: @2841   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2847    lang: C        body: undefined 
                         link: extern  
@2843   identifier_node  strg: __builtin_isgreaterequal 
                         lngt: 24      
@2844   function_decl    name: @2848    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2849   
                         lang: C        body: undefined 
                         link: extern  
@2845   tree_list        valu: @170     chan: @11     
@2846   identifier_node  strg: __builtin_bcmp          lngt: 14      
@2847   function_decl    name: @2850    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @2852   
                         lang: C        body: undefined 
                         link: extern  
@2848   identifier_node  strg: __builtin_isgreater     lngt: 19      
@2849   function_decl    name: @2853    type: @2854    srcp: <built-in>:0      
                         note: artificial              chan: @2855   
                         lang: C        body: undefined 
                         link: extern  
@2850   identifier_node  strg: ctanl    lngt: 5       
@2851   function_type    size: @9       algn: 8        retn: @335    
                         prms: @2856   
@2852   function_decl    name: @2857    mngl: @2850    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2858    lang: C        body: undefined 
                         link: extern  
@2853   identifier_node  strg: isnanl   lngt: 6       
@2854   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2859   
@2855   function_decl    name: @2860    mngl: @2853    type: @2854   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2861    lang: C        body: undefined 
                         link: extern  
@2856   tree_list        valu: @335     chan: @11     
@2857   identifier_node  strg: __builtin_ctanl         lngt: 15      
@2858   function_decl    name: @2862    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @2863   
                         lang: C        body: undefined 
                         link: extern  
@2859   tree_list        valu: @354     chan: @11     
@2860   identifier_node  strg: __builtin_isnanl        lngt: 16      
@2861   function_decl    name: @2864    type: @2865    srcp: <built-in>:0      
                         note: artificial              chan: @2866   
                         lang: C        body: undefined 
                         link: extern  
@2862   identifier_node  strg: ctanhl   lngt: 6       
@2863   function_decl    name: @2867    mngl: @2862    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2868    lang: C        body: undefined 
                         link: extern  
@2864   identifier_node  strg: isnanf   lngt: 6       
@2865   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2869   
@2866   function_decl    name: @2870    mngl: @2864    type: @2865   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2871    lang: C        body: undefined 
                         link: extern  
@2867   identifier_node  strg: __builtin_ctanhl        lngt: 16      
@2868   function_decl    name: @2872    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @2874   
                         lang: C        body: undefined 
                         link: extern  
@2869   tree_list        valu: @436     chan: @11     
@2870   identifier_node  strg: __builtin_isnanf        lngt: 16      
@2871   function_decl    name: @2875    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2876   
                         lang: C        body: undefined 
                         link: extern  
@2872   identifier_node  strg: ctanhf   lngt: 6       
@2873   function_type    size: @9       algn: 8        retn: @411    
                         prms: @2877   
@2874   function_decl    name: @2878    mngl: @2872    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2879    lang: C        body: undefined 
                         link: extern  
@2875   identifier_node  strg: isnan    lngt: 5       
@2876   function_decl    name: @2880    mngl: @2875    type: @2821   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2881    lang: C        body: undefined 
                         link: extern  
@2877   tree_list        valu: @411     chan: @11     
@2878   identifier_node  strg: __builtin_ctanhf        lngt: 16      
@2879   function_decl    name: @2882    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @2884   
                         lang: C        body: undefined 
                         link: extern  
@2880   identifier_node  strg: __builtin_isnan         lngt: 15      
@2881   function_decl    name: @2885    type: @2854    srcp: <built-in>:0      
                         note: artificial              chan: @2886   
                         lang: C        body: undefined 
                         link: extern  
@2882   identifier_node  strg: ctanh    lngt: 5       
@2883   function_type    size: @9       algn: 8        retn: @375    
                         prms: @2887   
@2884   function_decl    name: @2888    mngl: @2882    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2889    lang: C        body: undefined 
                         link: extern  
@2885   identifier_node  strg: isinfl   lngt: 6       
@2886   function_decl    name: @2890    mngl: @2885    type: @2854   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2891    lang: C        body: undefined 
                         link: extern  
@2887   tree_list        valu: @375     chan: @11     
@2888   identifier_node  strg: __builtin_ctanh         lngt: 15      
@2889   function_decl    name: @2892    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @2893   
                         lang: C        body: undefined 
                         link: extern  
@2890   identifier_node  strg: __builtin_isinfl        lngt: 16      
@2891   function_decl    name: @2894    type: @2865    srcp: <built-in>:0      
                         note: artificial              chan: @2895   
                         lang: C        body: undefined 
                         link: extern  
@2892   identifier_node  strg: ctanf    lngt: 5       
@2893   function_decl    name: @2896    mngl: @2892    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2897    lang: C        body: undefined 
                         link: extern  
@2894   identifier_node  strg: isinff   lngt: 6       
@2895   function_decl    name: @2898    mngl: @2894    type: @2865   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2899    lang: C        body: undefined 
                         link: extern  
@2896   identifier_node  strg: __builtin_ctanf         lngt: 15      
@2897   function_decl    name: @2900    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @2901   
                         lang: C        body: undefined 
                         link: extern  
@2898   identifier_node  strg: __builtin_isinff        lngt: 16      
@2899   function_decl    name: @2902    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @2903   
                         lang: C        body: undefined 
                         link: extern  
@2900   identifier_node  strg: ctan     lngt: 4       
@2901   function_decl    name: @2904    mngl: @2900    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2905    lang: C        body: undefined 
                         link: extern  
@2902   identifier_node  strg: isinf    lngt: 5       
@2903   function_decl    name: @2906    mngl: @2902    type: @2821   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2907    lang: C        body: undefined 
                         link: extern  
@2904   identifier_node  strg: __builtin_ctan          lngt: 14      
@2905   function_decl    name: @2908    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @2909   
                         lang: C        body: undefined 
                         link: extern  
@2906   identifier_node  strg: __builtin_isinf         lngt: 15      
@2907   function_decl    name: @2910    type: @2854    srcp: <built-in>:0      
                         note: artificial              chan: @2911   
                         lang: C        body: undefined 
                         link: extern  
@2908   identifier_node  strg: csqrtl   lngt: 6       
@2909   function_decl    name: @2912    mngl: @2908    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2913    lang: C        body: undefined 
                         link: extern  
@2910   identifier_node  strg: finitel  lngt: 7       
@2911   function_decl    name: @2914    mngl: @2910    type: @2854   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2915    lang: C        body: undefined 
                         link: extern  
@2912   identifier_node  strg: __builtin_csqrtl        lngt: 16      
@2913   function_decl    name: @2916    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @2917   
                         lang: C        body: undefined 
                         link: extern  
@2914   identifier_node  strg: __builtin_finitel       lngt: 17      
@2915   function_decl    name: @2918    type: @2865    srcp: <built-in>:0      
                         note: artificial              chan: @2919   
                         lang: C        body: undefined 
                         link: extern  
@2916   identifier_node  strg: csqrtf   lngt: 6       
@2917   function_decl    name: @2920    mngl: @2916    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2921    lang: C        body: undefined 
                         link: extern  
@2918   identifier_node  strg: finitef  lngt: 7       
@2919   function_decl    name: @2922    mngl: @2918    type: @2865   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2923    lang: C        body: undefined 
                         link: extern  
@2920   identifier_node  strg: __builtin_csqrtf        lngt: 16      
@2921   function_decl    name: @2924    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @2925   
                         lang: C        body: undefined 
                         link: extern  
@2922   identifier_node  strg: __builtin_finitef       lngt: 17      
@2923   function_decl    name: @2926    type: @2927    srcp: <built-in>:0      
                         note: artificial              chan: @2928   
                         lang: C        body: undefined 
                         link: extern  
@2924   identifier_node  strg: csqrt    lngt: 5       
@2925   function_decl    name: @2929    mngl: @2924    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2930    lang: C        body: undefined 
                         link: extern  
@2926   identifier_node  strg: finite   lngt: 6       
@2927   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2931   
@2928   function_decl    name: @2932    mngl: @2926    type: @2927   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2933    lang: C        body: undefined 
                         link: extern  
@2929   identifier_node  strg: __builtin_csqrt         lngt: 15      
@2930   function_decl    name: @2934    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @2935   
                         lang: C        body: undefined 
                         link: extern  
@2931   tree_list        valu: @36      chan: @11     
@2932   identifier_node  strg: __builtin_finite        lngt: 16      
@2933   function_decl    name: @2936    type: @196     srcp: <built-in>:0      
                         note: artificial              chan: @2937   
                         lang: C        body: undefined 
                         link: extern  
@2934   identifier_node  strg: csinl    lngt: 5       
@2935   function_decl    name: @2938    mngl: @2934    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2939    lang: C        body: undefined 
                         link: extern  
@2936   identifier_node  strg: __builtin_init_dwarf_reg_size_table 
                         lngt: 35      
@2937   function_decl    name: @2940    type: @2799    srcp: <built-in>:0      
                         note: artificial              chan: @2941   
                         lang: C        body: undefined 
                         link: extern  
@2938   identifier_node  strg: __builtin_csinl         lngt: 15      
@2939   function_decl    name: @2942    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @2943   
                         lang: C        body: undefined 
                         link: extern  
@2940   identifier_node  strg: imaxabs  lngt: 7       
@2941   function_decl    name: @2944    mngl: @2940    type: @2799   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2945    lang: C        body: undefined 
                         link: extern  
@2942   identifier_node  strg: csinhl   lngt: 6       
@2943   function_decl    name: @2946    mngl: @2942    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2947    lang: C        body: undefined 
                         link: extern  
@2944   identifier_node  strg: __builtin_imaxabs       lngt: 17      
@2945   function_decl    name: @2948    type: @2949    srcp: <built-in>:0      
                         note: artificial              chan: @2950   
                         lang: C        body: undefined 
                         link: extern  
@2946   identifier_node  strg: __builtin_csinhl        lngt: 16      
@2947   function_decl    name: @2951    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @2952   
                         lang: C        body: undefined 
                         link: extern  
@2948   identifier_node  strg: gettext  lngt: 7       
@2949   function_type    size: @9       algn: 8        retn: @39     
                         prms: @739    
@2950   function_decl    name: @2953    mngl: @2948    type: @2949   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2954    lang: C        body: undefined 
                         link: extern  
@2951   identifier_node  strg: csinhf   lngt: 6       
@2952   function_decl    name: @2955    mngl: @2951    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2956    lang: C        body: undefined 
                         link: extern  
@2953   identifier_node  strg: __builtin_gettext       lngt: 17      
@2954   function_decl    name: @2957    type: @544     srcp: <built-in>:0      
                         note: artificial              chan: @2958   
                         lang: C        body: undefined 
                         link: extern  
@2955   identifier_node  strg: __builtin_csinhf        lngt: 16      
@2956   function_decl    name: @2959    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @2960   
                         lang: C        body: undefined 
                         link: extern  
@2957   identifier_node  strg: __builtin_frob_return_addr 
                         lngt: 26      
@2958   function_decl    name: @2961    type: @236     srcp: <built-in>:0      
                         note: artificial              chan: @2962   
                         lang: C        body: undefined 
                         link: extern  
@2959   identifier_node  strg: csinh    lngt: 5       
@2960   function_decl    name: @2963    mngl: @2959    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2964    lang: C        body: undefined 
                         link: extern  
@2961   identifier_node  strg: __builtin_frame_address lngt: 23      
@2962   function_decl    name: @2965    type: @85      srcp: <built-in>:0      
                         note: artificial              chan: @2966   
                         lang: C        body: undefined 
                         link: extern  
@2963   identifier_node  strg: __builtin_csinh         lngt: 15      
@2964   function_decl    name: @2967    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @2968   
                         lang: C        body: undefined 
                         link: extern  
@2965   identifier_node  strg: fork     lngt: 4       
@2966   function_decl    name: @2969    mngl: @2965    type: @85     
                         srcp: <built-in>:0            note: artificial 
                         chan: @2970    lang: C        body: undefined 
                         link: extern  
@2967   identifier_node  strg: csinf    lngt: 5       
@2968   function_decl    name: @2971    mngl: @2967    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2972    lang: C        body: undefined 
                         link: extern  
@2969   identifier_node  strg: __builtin_fork          lngt: 14      
@2970   function_decl    name: @2973    type: @2974    srcp: <built-in>:0      
                         note: artificial              chan: @2975   
                         lang: C        body: undefined 
                         link: extern  
@2971   identifier_node  strg: __builtin_csinf         lngt: 15      
@2972   function_decl    name: @2976    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @2977   
                         lang: C        body: undefined 
                         link: extern  
@2973   identifier_node  strg: ffsll    lngt: 5       
@2974   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2978   
@2975   function_decl    name: @2979    mngl: @2973    type: @2974   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2980    lang: C        body: undefined 
                         link: extern  
@2976   identifier_node  strg: csin     lngt: 4       
@2977   function_decl    name: @2981    mngl: @2976    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2982    lang: C        body: undefined 
                         link: extern  
@2978   tree_list        valu: @576     chan: @11     
@2979   identifier_node  strg: __builtin_ffsll         lngt: 15      
@2980   function_decl    name: @2983    type: @2984    srcp: <built-in>:0      
                         note: artificial              chan: @2985   
                         lang: C        body: undefined 
                         link: extern  
@2981   identifier_node  strg: __builtin_csin          lngt: 14      
@2982   function_decl    name: @2986    type: @2987    srcp: <built-in>:0      
                         note: artificial              chan: @2988   
                         lang: C        body: undefined 
                         link: extern  
@2983   identifier_node  strg: ffsl     lngt: 4       
@2984   function_type    size: @9       algn: 8        retn: @33     
                         prms: @2989   
@2985   function_decl    name: @2990    mngl: @2983    type: @2984   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2991    lang: C        body: undefined 
                         link: extern  
@2986   identifier_node  strg: creall   lngt: 6       
@2987   function_type    size: @9       algn: 8        retn: @354    
                         prms: @2992   
@2988   function_decl    name: @2993    mngl: @2986    type: @2987   
                         srcp: <built-in>:0            note: artificial 
                         chan: @2994    lang: C        body: undefined 
                         link: extern  
@2989   tree_list        valu: @602     chan: @11     
@2990   identifier_node  strg: __builtin_ffsl          lngt: 14      
@2991   function_decl    name: @2995    type: @2974    srcp: <built-in>:0      
                         note: artificial              chan: @2996   
                         lang: C        body: undefined 
                         link: extern  
@2992   tree_list        valu: @335     chan: @11     
@2993   identifier_node  strg: __builtin_creall        lngt: 16      
@2994   function_decl    name: @2997    type: @2998    srcp: <built-in>:0      
                         note: artificial              chan: @2999   
                         lang: C        body: undefined 
                         link: extern  
@2995   identifier_node  strg: ffsimax  lngt: 7       
@2996   function_decl    name: @3000    mngl: @2995    type: @2974   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3001    lang: C        body: undefined 
                         link: extern  
@2997   identifier_node  strg: crealf   lngt: 6       
@2998   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3002   
@2999   function_decl    name: @3003    mngl: @2997    type: @2998   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3004    lang: C        body: undefined 
                         link: extern  
@3000   identifier_node  strg: __builtin_ffsimax       lngt: 17      
@3001   function_decl    name: @3005    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @3006   
                         lang: C        body: undefined 
                         link: extern  
@3002   tree_list        valu: @411     chan: @11     
@3003   identifier_node  strg: __builtin_crealf        lngt: 16      
@3004   function_decl    name: @3007    type: @3008    srcp: <built-in>:0      
                         note: artificial              chan: @3009   
                         lang: C        body: undefined 
                         link: extern  
@3005   identifier_node  strg: ffs      lngt: 3       
@3006   function_decl    name: @3010    mngl: @3005    type: @175    
                         srcp: <built-in>:0            note: artificial 
                         chan: @3011    lang: C        body: undefined 
                         link: extern  
@3007   identifier_node  strg: creal    lngt: 5       
@3008   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3012   
@3009   function_decl    name: @3013    mngl: @3007    type: @3008   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3014    lang: C        body: undefined 
                         link: extern  
@3010   identifier_node  strg: __builtin_ffs           lngt: 13      
@3011   function_decl    name: @3015    type: @544     srcp: <built-in>:0      
                         note: artificial              chan: @3016   
                         lang: C        body: undefined 
                         link: extern  
@3012   tree_list        valu: @375     chan: @11     
@3013   identifier_node  strg: __builtin_creal         lngt: 15      
@3014   function_decl    name: @3017    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3018   
                         lang: C        body: undefined 
                         link: extern  
@3015   identifier_node  strg: __builtin_extract_return_addr 
                         lngt: 29      
@3016   function_decl    name: @3019    type: @2682    srcp: <built-in>:0      
                         note: artificial              chan: @3020   
                         lang: C        body: undefined 
                         link: extern  
@3017   identifier_node  strg: cprojl   lngt: 6       
@3018   function_decl    name: @3021    mngl: @3017    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3022    lang: C        body: undefined 
                         link: extern  
@3019   identifier_node  strg: __builtin_extend_pointer 
                         lngt: 24      
@3020   function_decl    name: @3023    type: @3024    srcp: <built-in>:0      
                         note: artificial              chan: @3025   
                         lang: C        body: undefined 
                         link: extern  
@3021   identifier_node  strg: __builtin_cprojl        lngt: 16      
@3022   function_decl    name: @3026    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3027   
                         lang: C        body: undefined 
                         link: extern  
@3023   identifier_node  strg: __builtin_expect        lngt: 16      
@3024   function_type    size: @9       algn: 8        retn: @602    
                         prms: @3028   
@3025   function_decl    name: @3029    type: @2405    srcp: stdlib.h:646    
                         chan: @3030    lang: C        args: @3031   
                         body: undefined               link: extern  
@3026   identifier_node  strg: cprojf   lngt: 6       
@3027   function_decl    name: @3032    mngl: @3026    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3033    lang: C        body: undefined 
                         link: extern  
@3028   tree_list        valu: @602     chan: @3034   
@3029   identifier_node  strg: exit     lngt: 4       
@3030   function_decl    name: @3035    mngl: @3029    type: @2422   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3036    lang: C        body: undefined 
                         link: extern  
@3031   parm_decl        name: @2426    type: @33      srcp: stdlib.h:646    
                         argt: @33      size: @49      algn: 32      
                         used: 0       
@3032   identifier_node  strg: __builtin_cprojf        lngt: 16      
@3033   function_decl    name: @3037    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3038   
                         lang: C        body: undefined 
                         link: extern  
@3034   tree_list        valu: @602     chan: @11     
@3035   identifier_node  strg: __builtin_exit          lngt: 14      
@3036   function_decl    name: @3039    type: @3040    srcp: <built-in>:0      
                         note: artificial              chan: @3041   
                         lang: C        body: undefined 
                         link: extern  
@3037   identifier_node  strg: cproj    lngt: 5       
@3038   function_decl    name: @3042    mngl: @3037    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3043    lang: C        body: undefined 
                         link: extern  
@3039   identifier_node  strg: execve   lngt: 6       
@3040   function_type    size: @9       algn: 8        retn: @33     
                         prms: @3044   
@3041   function_decl    name: @3045    mngl: @3039    type: @3040   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3046    lang: C        body: undefined 
                         link: extern  
@3042   identifier_node  strg: __builtin_cproj         lngt: 15      
@3043   function_decl    name: @3047    type: @3048    srcp: <built-in>:0      
                         note: artificial              chan: @3049   
                         lang: C        body: undefined 
                         link: extern  
@3044   tree_list        valu: @70      chan: @3050   
@3045   identifier_node  strg: __builtin_execve        lngt: 16      
@3046   function_decl    name: @3051    type: @3052    srcp: <built-in>:0      
                         note: artificial              chan: @3053   
                         lang: C        body: undefined 
                         link: extern  
@3047   identifier_node  strg: cpowl    lngt: 5       
@3048   function_type    size: @9       algn: 8        retn: @335    
                         prms: @3054   
@3049   function_decl    name: @3055    mngl: @3047    type: @3048   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3056    lang: C        body: undefined 
                         link: extern  
@3050   tree_list        valu: @3057    chan: @3058   
@3051   identifier_node  strg: execvp   lngt: 6       
@3052   function_type    size: @9       algn: 8        retn: @33     
                         prms: @3059   
@3053   function_decl    name: @3060    mngl: @3051    type: @3052   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3061    lang: C        body: undefined 
                         link: extern  
@3054   tree_list        valu: @335     chan: @3062   
@3055   identifier_node  strg: __builtin_cpowl         lngt: 15      
@3056   function_decl    name: @3063    type: @3064    srcp: <built-in>:0      
                         note: artificial              chan: @3065   
                         lang: C        body: undefined 
                         link: extern  
@3057   pointer_type     size: @49      algn: 32       ptd : @70     
@3058   tree_list        valu: @3057    chan: @11     
@3059   tree_list        valu: @70      chan: @3066   
@3060   identifier_node  strg: __builtin_execvp        lngt: 16      
@3061   function_decl    name: @3067    type: @3052    srcp: <built-in>:0      
                         note: artificial              chan: @3068   
                         lang: C        body: undefined 
                         link: extern  
@3062   tree_list        valu: @335     chan: @11     
@3063   identifier_node  strg: cpowf    lngt: 5       
@3064   function_type    size: @9       algn: 8        retn: @411    
                         prms: @3069   
@3065   function_decl    name: @3070    mngl: @3063    type: @3064   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3071    lang: C        body: undefined 
                         link: extern  
@3066   tree_list        valu: @3057    chan: @11     
@3067   identifier_node  strg: execv    lngt: 5       
@3068   function_decl    name: @3072    mngl: @3067    type: @3052   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3073    lang: C        body: undefined 
                         link: extern  
@3069   tree_list        valu: @411     chan: @3074   
@3070   identifier_node  strg: __builtin_cpowf         lngt: 15      
@3071   function_decl    name: @3075    type: @3076    srcp: <built-in>:0      
                         note: artificial              chan: @3077   
                         lang: C        body: undefined 
                         link: extern  
@3072   identifier_node  strg: __builtin_execv         lngt: 15      
@3073   function_decl    name: @3078    type: @3079    srcp: <built-in>:0      
                         note: artificial              chan: @3080   
                         lang: C        body: undefined 
                         link: extern  
@3074   tree_list        valu: @411     chan: @11     
@3075   identifier_node  strg: cpow     lngt: 4       
@3076   function_type    size: @9       algn: 8        retn: @375    
                         prms: @3081   
@3077   function_decl    name: @3082    mngl: @3075    type: @3076   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3083    lang: C        body: undefined 
                         link: extern  
@3078   identifier_node  strg: execle   lngt: 6       
@3079   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1483   
@3080   function_decl    name: @3084    mngl: @3078    type: @3079   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3085    lang: C        body: undefined 
                         link: extern  
@3081   tree_list        valu: @375     chan: @3086   
@3082   identifier_node  strg: __builtin_cpow          lngt: 14      
@3083   function_decl    name: @3087    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3088   
                         lang: C        body: undefined 
                         link: extern  
@3084   identifier_node  strg: __builtin_execle        lngt: 16      
@3085   function_decl    name: @3089    type: @3090    srcp: <built-in>:0      
                         note: artificial              chan: @3091   
                         lang: C        body: undefined 
                         link: extern  
@3086   tree_list        valu: @375     chan: @11     
@3087   identifier_node  strg: conjl    lngt: 5       
@3088   function_decl    name: @3092    mngl: @3087    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3093    lang: C        body: undefined 
                         link: extern  
@3089   identifier_node  strg: execlp   lngt: 6       
@3090   function_type    size: @9       algn: 8        retn: @33     
                         prms: @1483   
@3091   function_decl    name: @3094    mngl: @3089    type: @3090   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3095    lang: C        body: undefined 
                         link: extern  
@3092   identifier_node  strg: __builtin_conjl         lngt: 15      
@3093   function_decl    name: @3096    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3097   
                         lang: C        body: undefined 
                         link: extern  
@3094   identifier_node  strg: __builtin_execlp        lngt: 16      
@3095   function_decl    name: @3098    type: @3090    srcp: <built-in>:0      
                         note: artificial              chan: @3099   
                         lang: C        body: undefined 
                         link: extern  
@3096   identifier_node  strg: conjf    lngt: 5       
@3097   function_decl    name: @3100    mngl: @3096    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3101    lang: C        body: undefined 
                         link: extern  
@3098   identifier_node  strg: execl    lngt: 5       
@3099   function_decl    name: @3102    mngl: @3098    type: @3090   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3103    lang: C        body: undefined 
                         link: extern  
@3100   identifier_node  strg: __builtin_conjf         lngt: 15      
@3101   function_decl    name: @3104    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3105   
                         lang: C        body: undefined 
                         link: extern  
@3102   identifier_node  strg: __builtin_execl         lngt: 15      
@3103   function_decl    name: @3106    type: @175     srcp: <built-in>:0      
                         note: artificial              chan: @3107   
                         lang: C        body: undefined 
                         link: extern  
@3104   identifier_node  strg: conj     lngt: 4       
@3105   function_decl    name: @3108    mngl: @3104    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3109    lang: C        body: undefined 
                         link: extern  
@3106   identifier_node  strg: __builtin_eh_return_data_regno 
                         lngt: 30      
@3107   function_decl    name: @3110    type: @906     srcp: <built-in>:0      
                         note: artificial              chan: @3111   
                         lang: C        body: undefined 
                         link: extern  
@3108   identifier_node  strg: __builtin_conj          lngt: 14      
@3109   function_decl    name: @3112    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3113   
                         lang: C        body: undefined 
                         link: extern  
@3110   identifier_node  strg: __builtin_eh_return     lngt: 19      
@3111   function_decl    name: @3114    type: @3115    srcp: <built-in>:0      
                         note: artificial              chan: @3116   
                         lang: C        body: undefined 
                         link: extern  
@3112   identifier_node  strg: clog10l  lngt: 7       
@3113   function_decl    name: @3117    mngl: @3112    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3118    lang: C        body: undefined 
                         link: extern  
@3114   identifier_node  strg: __builtin_dwarf_sp_column 
                         lngt: 25      
@3115   function_type    size: @9       algn: 8        retn: @170    
                         prms: @11     
@3116   function_decl    name: @3119    type: @505     srcp: <built-in>:0      
                         note: artificial              chan: @3120   
                         lang: C        body: undefined 
                         link: extern  
@3117   identifier_node  strg: __builtin_clog10l       lngt: 17      
@3118   function_decl    name: @3121    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3122   
                         lang: C        body: undefined 
                         link: extern  
@3119   identifier_node  strg: __builtin_dwarf_cfa     lngt: 19      
@3120   function_decl    name: @3123    type: @3124    srcp: <built-in>:0      
                         note: artificial              chan: @3125   
                         lang: C        body: undefined 
                         link: extern  
@3121   identifier_node  strg: clog10f  lngt: 7       
@3122   function_decl    name: @3126    mngl: @3121    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3127    lang: C        body: undefined 
                         link: extern  
@3123   identifier_node  strg: dgettext lngt: 8       
@3124   function_type    size: @9       algn: 8        retn: @39     
                         prms: @2205   
@3125   function_decl    name: @3128    mngl: @3123    type: @3124   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3129    lang: C        body: undefined 
                         link: extern  
@3126   identifier_node  strg: __builtin_clog10f       lngt: 17      
@3127   function_decl    name: @3130    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3131   
                         lang: C        body: undefined 
                         link: extern  
@3128   identifier_node  strg: __builtin_dgettext      lngt: 18      
@3129   function_decl    name: @3132    type: @3133    srcp: <built-in>:0      
                         note: artificial              chan: @3134   
                         lang: C        body: undefined 
                         link: extern  
@3130   identifier_node  strg: clog10   lngt: 6       
@3131   function_decl    name: @3135    mngl: @3130    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3136    lang: C        body: undefined 
                         link: extern  
@3132   identifier_node  strg: dcgettext               lngt: 9       
@3133   function_type    size: @9       algn: 8        retn: @39     
                         prms: @3137   
@3134   function_decl    name: @3138    mngl: @3132    type: @3133   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3139    lang: C        body: undefined 
                         link: extern  
@3135   identifier_node  strg: __builtin_clog10        lngt: 16      
@3136   function_decl    name: @3140    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3141   
                         lang: C        body: undefined 
                         link: extern  
@3137   tree_list        valu: @70      chan: @3142   
@3138   identifier_node  strg: __builtin_dcgettext     lngt: 19      
@3139   function_decl    name: @3143    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @3144   
                         lang: C        body: undefined 
                         link: extern  
@3140   identifier_node  strg: clogl    lngt: 5       
@3141   function_decl    name: @3145    mngl: @3140    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3146    lang: C        body: undefined 
                         link: extern  
@3142   tree_list        valu: @70      chan: @3147   
@3143   identifier_node  strg: __builtin_ctzll         lngt: 15      
@3144   function_decl    name: @3148    type: @2737    srcp: <built-in>:0      
                         note: artificial              chan: @3149   
                         lang: C        body: undefined 
                         link: extern  
@3145   identifier_node  strg: __builtin_clogl         lngt: 15      
@3146   function_decl    name: @3150    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3151   
                         lang: C        body: undefined 
                         link: extern  
@3147   tree_list        valu: @33      chan: @11     
@3148   identifier_node  strg: __builtin_ctzl          lngt: 14      
@3149   function_decl    name: @3152    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @3153   
                         lang: C        body: undefined 
                         link: extern  
@3150   identifier_node  strg: clogf    lngt: 5       
@3151   function_decl    name: @3154    mngl: @3150    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3155    lang: C        body: undefined 
                         link: extern  
@3152   identifier_node  strg: __builtin_ctzimax       lngt: 17      
@3153   function_decl    name: @3156    type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @3157   
                         lang: C        body: undefined 
                         link: extern  
@3154   identifier_node  strg: __builtin_clogf         lngt: 15      
@3155   function_decl    name: @3158    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3159   
                         lang: C        body: undefined 
                         link: extern  
@3156   identifier_node  strg: __builtin_ctz           lngt: 13      
@3157   function_decl    name: @3160    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @3161   
                         lang: C        body: undefined 
                         link: extern  
@3158   identifier_node  strg: clog     lngt: 4       
@3159   function_decl    name: @3162    mngl: @3158    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3163    lang: C        body: undefined 
                         link: extern  
@3160   identifier_node  strg: __builtin_constant_p    lngt: 20      
@3161   function_decl    name: @3164    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @3165   
                         lang: C        body: undefined 
                         link: extern  
@3162   identifier_node  strg: __builtin_clog          lngt: 14      
@3163   function_decl    name: @3166    type: @2987    srcp: <built-in>:0      
                         note: artificial              chan: @3167   
                         lang: C        body: undefined 
                         link: extern  
@3164   identifier_node  strg: __builtin_clzll         lngt: 15      
@3165   function_decl    name: @3168    type: @2737    srcp: <built-in>:0      
                         note: artificial              chan: @3169   
                         lang: C        body: undefined 
                         link: extern  
@3166   identifier_node  strg: cimagl   lngt: 6       
@3167   function_decl    name: @3170    mngl: @3166    type: @2987   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3171    lang: C        body: undefined 
                         link: extern  
@3168   identifier_node  strg: __builtin_clzl          lngt: 14      
@3169   function_decl    name: @3172    type: @2730    srcp: <built-in>:0      
                         note: artificial              chan: @3173   
                         lang: C        body: undefined 
                         link: extern  
@3170   identifier_node  strg: __builtin_cimagl        lngt: 16      
@3171   function_decl    name: @3174    type: @2998    srcp: <built-in>:0      
                         note: artificial              chan: @3175   
                         lang: C        body: undefined 
                         link: extern  
@3172   identifier_node  strg: __builtin_clzimax       lngt: 17      
@3173   function_decl    name: @3176    type: @430     srcp: <built-in>:0      
                         note: artificial              chan: @3177   
                         lang: C        body: undefined 
                         link: extern  
@3174   identifier_node  strg: cimagf   lngt: 6       
@3175   function_decl    name: @3178    mngl: @3174    type: @2998   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3179    lang: C        body: undefined 
                         link: extern  
@3176   identifier_node  strg: __builtin_clz           lngt: 13      
@3177   function_decl    name: @3180    type: @2821    srcp: <built-in>:0      
                         note: artificial              chan: @118    
                         lang: C        body: undefined 
                         link: extern  
@3178   identifier_node  strg: __builtin_cimagf        lngt: 16      
@3179   function_decl    name: @3181    type: @3008    srcp: <built-in>:0      
                         note: artificial              chan: @3182   
                         lang: C        body: undefined 
                         link: extern  
@3180   identifier_node  strg: __builtin_classify_type lngt: 23      
@3181   identifier_node  strg: cimag    lngt: 5       
@3182   function_decl    name: @3183    mngl: @3181    type: @3008   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3184    lang: C        body: undefined 
                         link: extern  
@3183   identifier_node  strg: __builtin_cimag         lngt: 15      
@3184   function_decl    name: @3185    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3186   
                         lang: C        body: undefined 
                         link: extern  
@3185   identifier_node  strg: cexpl    lngt: 5       
@3186   function_decl    name: @3187    mngl: @3185    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3188    lang: C        body: undefined 
                         link: extern  
@3187   identifier_node  strg: __builtin_cexpl         lngt: 15      
@3188   function_decl    name: @3189    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3190   
                         lang: C        body: undefined 
                         link: extern  
@3189   identifier_node  strg: cexpf    lngt: 5       
@3190   function_decl    name: @3191    mngl: @3189    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3192    lang: C        body: undefined 
                         link: extern  
@3191   identifier_node  strg: __builtin_cexpf         lngt: 15      
@3192   function_decl    name: @3193    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3194   
                         lang: C        body: undefined 
                         link: extern  
@3193   identifier_node  strg: cexp     lngt: 4       
@3194   function_decl    name: @3195    mngl: @3193    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3196    lang: C        body: undefined 
                         link: extern  
@3195   identifier_node  strg: __builtin_cexp          lngt: 14      
@3196   function_decl    name: @3197    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3198   
                         lang: C        body: undefined 
                         link: extern  
@3197   identifier_node  strg: ccosl    lngt: 5       
@3198   function_decl    name: @3199    mngl: @3197    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3200    lang: C        body: undefined 
                         link: extern  
@3199   identifier_node  strg: __builtin_ccosl         lngt: 15      
@3200   function_decl    name: @3201    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3202   
                         lang: C        body: undefined 
                         link: extern  
@3201   identifier_node  strg: ccoshl   lngt: 6       
@3202   function_decl    name: @3203    mngl: @3201    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3204    lang: C        body: undefined 
                         link: extern  
@3203   identifier_node  strg: __builtin_ccoshl        lngt: 16      
@3204   function_decl    name: @3205    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3206   
                         lang: C        body: undefined 
                         link: extern  
@3205   identifier_node  strg: ccoshf   lngt: 6       
@3206   function_decl    name: @3207    mngl: @3205    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3208    lang: C        body: undefined 
                         link: extern  
@3207   identifier_node  strg: __builtin_ccoshf        lngt: 16      
@3208   function_decl    name: @3209    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3210   
                         lang: C        body: undefined 
                         link: extern  
@3209   identifier_node  strg: ccosh    lngt: 5       
@3210   function_decl    name: @3211    mngl: @3209    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3212    lang: C        body: undefined 
                         link: extern  
@3211   identifier_node  strg: __builtin_ccosh         lngt: 15      
@3212   function_decl    name: @3213    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3214   
                         lang: C        body: undefined 
                         link: extern  
@3213   identifier_node  strg: ccosf    lngt: 5       
@3214   function_decl    name: @3215    mngl: @3213    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3216    lang: C        body: undefined 
                         link: extern  
@3215   identifier_node  strg: __builtin_ccosf         lngt: 15      
@3216   function_decl    name: @3217    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3218   
                         lang: C        body: undefined 
                         link: extern  
@3217   identifier_node  strg: ccos     lngt: 4       
@3218   function_decl    name: @3219    mngl: @3217    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3220    lang: C        body: undefined 
                         link: extern  
@3219   identifier_node  strg: __builtin_ccos          lngt: 14      
@3220   function_decl    name: @3221    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3222   
                         lang: C        body: undefined 
                         link: extern  
@3221   identifier_node  strg: catanl   lngt: 6       
@3222   function_decl    name: @3223    mngl: @3221    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3224    lang: C        body: undefined 
                         link: extern  
@3223   identifier_node  strg: __builtin_catanl        lngt: 16      
@3224   function_decl    name: @3225    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3226   
                         lang: C        body: undefined 
                         link: extern  
@3225   identifier_node  strg: catanhl  lngt: 7       
@3226   function_decl    name: @3227    mngl: @3225    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3228    lang: C        body: undefined 
                         link: extern  
@3227   identifier_node  strg: __builtin_catanhl       lngt: 17      
@3228   function_decl    name: @3229    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3230   
                         lang: C        body: undefined 
                         link: extern  
@3229   identifier_node  strg: catanhf  lngt: 7       
@3230   function_decl    name: @3231    mngl: @3229    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3232    lang: C        body: undefined 
                         link: extern  
@3231   identifier_node  strg: __builtin_catanhf       lngt: 17      
@3232   function_decl    name: @3233    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3234   
                         lang: C        body: undefined 
                         link: extern  
@3233   identifier_node  strg: catanh   lngt: 6       
@3234   function_decl    name: @3235    mngl: @3233    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3236    lang: C        body: undefined 
                         link: extern  
@3235   identifier_node  strg: __builtin_catanh        lngt: 16      
@3236   function_decl    name: @3237    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3238   
                         lang: C        body: undefined 
                         link: extern  
@3237   identifier_node  strg: catanf   lngt: 6       
@3238   function_decl    name: @3239    mngl: @3237    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3240    lang: C        body: undefined 
                         link: extern  
@3239   identifier_node  strg: __builtin_catanf        lngt: 16      
@3240   function_decl    name: @3241    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3242   
                         lang: C        body: undefined 
                         link: extern  
@3241   identifier_node  strg: catan    lngt: 5       
@3242   function_decl    name: @3243    mngl: @3241    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3244    lang: C        body: undefined 
                         link: extern  
@3243   identifier_node  strg: __builtin_catan         lngt: 15      
@3244   function_decl    name: @3245    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3246   
                         lang: C        body: undefined 
                         link: extern  
@3245   identifier_node  strg: casinl   lngt: 6       
@3246   function_decl    name: @3247    mngl: @3245    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3248    lang: C        body: undefined 
                         link: extern  
@3247   identifier_node  strg: __builtin_casinl        lngt: 16      
@3248   function_decl    name: @3249    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3250   
                         lang: C        body: undefined 
                         link: extern  
@3249   identifier_node  strg: casinhl  lngt: 7       
@3250   function_decl    name: @3251    mngl: @3249    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3252    lang: C        body: undefined 
                         link: extern  
@3251   identifier_node  strg: __builtin_casinhl       lngt: 17      
@3252   function_decl    name: @3253    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3254   
                         lang: C        body: undefined 
                         link: extern  
@3253   identifier_node  strg: casinhf  lngt: 7       
@3254   function_decl    name: @3255    mngl: @3253    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3256    lang: C        body: undefined 
                         link: extern  
@3255   identifier_node  strg: __builtin_casinhf       lngt: 17      
@3256   function_decl    name: @3257    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3258   
                         lang: C        body: undefined 
                         link: extern  
@3257   identifier_node  strg: casinh   lngt: 6       
@3258   function_decl    name: @3259    mngl: @3257    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3260    lang: C        body: undefined 
                         link: extern  
@3259   identifier_node  strg: __builtin_casinh        lngt: 16      
@3260   function_decl    name: @3261    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3262   
                         lang: C        body: undefined 
                         link: extern  
@3261   identifier_node  strg: casinf   lngt: 6       
@3262   function_decl    name: @3263    mngl: @3261    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3264    lang: C        body: undefined 
                         link: extern  
@3263   identifier_node  strg: __builtin_casinf        lngt: 16      
@3264   function_decl    name: @3265    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3266   
                         lang: C        body: undefined 
                         link: extern  
@3265   identifier_node  strg: casin    lngt: 5       
@3266   function_decl    name: @3267    mngl: @3265    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3268    lang: C        body: undefined 
                         link: extern  
@3267   identifier_node  strg: __builtin_casin         lngt: 15      
@3268   function_decl    name: @3269    type: @2987    srcp: <built-in>:0      
                         note: artificial              chan: @3270   
                         lang: C        body: undefined 
                         link: extern  
@3269   identifier_node  strg: cargl    lngt: 5       
@3270   function_decl    name: @3271    mngl: @3269    type: @2987   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3272    lang: C        body: undefined 
                         link: extern  
@3271   identifier_node  strg: __builtin_cargl         lngt: 15      
@3272   function_decl    name: @3273    type: @2998    srcp: <built-in>:0      
                         note: artificial              chan: @3274   
                         lang: C        body: undefined 
                         link: extern  
@3273   identifier_node  strg: cargf    lngt: 5       
@3274   function_decl    name: @3275    mngl: @3273    type: @2998   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3276    lang: C        body: undefined 
                         link: extern  
@3275   identifier_node  strg: __builtin_cargf         lngt: 15      
@3276   function_decl    name: @3277    type: @3008    srcp: <built-in>:0      
                         note: artificial              chan: @3278   
                         lang: C        body: undefined 
                         link: extern  
@3277   identifier_node  strg: carg     lngt: 4       
@3278   function_decl    name: @3279    mngl: @3277    type: @3008   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3280    lang: C        body: undefined 
                         link: extern  
@3279   identifier_node  strg: __builtin_carg          lngt: 14      
@3280   function_decl    name: @3281    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3282   
                         lang: C        body: undefined 
                         link: extern  
@3281   identifier_node  strg: cacosl   lngt: 6       
@3282   function_decl    name: @3283    mngl: @3281    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3284    lang: C        body: undefined 
                         link: extern  
@3283   identifier_node  strg: __builtin_cacosl        lngt: 16      
@3284   function_decl    name: @3285    type: @2851    srcp: <built-in>:0      
                         note: artificial              chan: @3286   
                         lang: C        body: undefined 
                         link: extern  
@3285   identifier_node  strg: cacoshl  lngt: 7       
@3286   function_decl    name: @3287    mngl: @3285    type: @2851   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3288    lang: C        body: undefined 
                         link: extern  
@3287   identifier_node  strg: __builtin_cacoshl       lngt: 17      
@3288   function_decl    name: @3289    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3290   
                         lang: C        body: undefined 
                         link: extern  
@3289   identifier_node  strg: cacoshf  lngt: 7       
@3290   function_decl    name: @3291    mngl: @3289    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3292    lang: C        body: undefined 
                         link: extern  
@3291   identifier_node  strg: __builtin_cacoshf       lngt: 17      
@3292   function_decl    name: @3293    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3294   
                         lang: C        body: undefined 
                         link: extern  
@3293   identifier_node  strg: cacosh   lngt: 6       
@3294   function_decl    name: @3295    mngl: @3293    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3296    lang: C        body: undefined 
                         link: extern  
@3295   identifier_node  strg: __builtin_cacosh        lngt: 16      
@3296   function_decl    name: @3297    type: @2873    srcp: <built-in>:0      
                         note: artificial              chan: @3298   
                         lang: C        body: undefined 
                         link: extern  
@3297   identifier_node  strg: cacosf   lngt: 6       
@3298   function_decl    name: @3299    mngl: @3297    type: @2873   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3300    lang: C        body: undefined 
                         link: extern  
@3299   identifier_node  strg: __builtin_cacosf        lngt: 16      
@3300   function_decl    name: @3301    type: @2883    srcp: <built-in>:0      
                         note: artificial              chan: @3302   
                         lang: C        body: undefined 
                         link: extern  
@3301   identifier_node  strg: cacos    lngt: 5       
@3302   function_decl    name: @3303    mngl: @3301    type: @2883   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3304    lang: C        body: undefined 
                         link: extern  
@3303   identifier_node  strg: __builtin_cacos         lngt: 15      
@3304   function_decl    name: @3305    type: @2987    srcp: <built-in>:0      
                         note: artificial              chan: @3306   
                         lang: C        body: undefined 
                         link: extern  
@3305   identifier_node  strg: cabsl    lngt: 5       
@3306   function_decl    name: @3307    mngl: @3305    type: @2987   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3308    lang: C        body: undefined 
                         link: extern  
@3307   identifier_node  strg: __builtin_cabsl         lngt: 15      
@3308   function_decl    name: @3309    type: @2998    srcp: <built-in>:0      
                         note: artificial              chan: @3310   
                         lang: C        body: undefined 
                         link: extern  
@3309   identifier_node  strg: cabsf    lngt: 5       
@3310   function_decl    name: @3311    mngl: @3309    type: @2998   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3312    lang: C        body: undefined 
                         link: extern  
@3311   identifier_node  strg: __builtin_cabsf         lngt: 15      
@3312   function_decl    name: @3313    type: @3008    srcp: <built-in>:0      
                         note: artificial              chan: @3314   
                         lang: C        body: undefined 
                         link: extern  
@3313   identifier_node  strg: cabs     lngt: 4       
@3314   function_decl    name: @3315    mngl: @3313    type: @3008   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3316    lang: C        body: undefined 
                         link: extern  
@3315   identifier_node  strg: __builtin_cabs          lngt: 14      
@3316   function_decl    name: @3317    type: @3318    srcp: <built-in>:0      
                         note: artificial              chan: @3319   
                         lang: C        body: undefined 
                         link: extern  
@3317   identifier_node  strg: ynl      lngt: 3       
@3318   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3320   
@3319   function_decl    name: @3321    mngl: @3317    type: @3318   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3322    lang: C        body: undefined 
                         link: extern  
@3320   tree_list        valu: @33      chan: @3323   
@3321   identifier_node  strg: __builtin_ynl           lngt: 13      
@3322   function_decl    name: @3324    type: @3325    srcp: <built-in>:0      
                         note: artificial              chan: @3326   
                         lang: C        body: undefined 
                         link: extern  
@3323   tree_list        valu: @354     chan: @11     
@3324   identifier_node  strg: ynf      lngt: 3       
@3325   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3327   
@3326   function_decl    name: @3328    mngl: @3324    type: @3325   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3329    lang: C        body: undefined 
                         link: extern  
@3327   tree_list        valu: @33      chan: @3330   
@3328   identifier_node  strg: __builtin_ynf           lngt: 13      
@3329   function_decl    name: @3331    type: @3332    srcp: <built-in>:0      
                         note: artificial              chan: @3333   
                         lang: C        body: undefined 
                         link: extern  
@3330   tree_list        valu: @436     chan: @11     
@3331   identifier_node  strg: yn       lngt: 2       
@3332   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3334   
@3333   function_decl    name: @3335    mngl: @3331    type: @3332   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3336    lang: C        body: undefined 
                         link: extern  
@3334   tree_list        valu: @33      chan: @3337   
@3335   identifier_node  strg: __builtin_yn            lngt: 12      
@3336   function_decl    name: @3338    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3340   
                         lang: C        body: undefined 
                         link: extern  
@3337   tree_list        valu: @36      chan: @11     
@3338   identifier_node  strg: y1l      lngt: 3       
@3339   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3341   
@3340   function_decl    name: @3342    mngl: @3338    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3343    lang: C        body: undefined 
                         link: extern  
@3341   tree_list        valu: @354     chan: @11     
@3342   identifier_node  strg: __builtin_y1l           lngt: 13      
@3343   function_decl    name: @3344    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3346   
                         lang: C        body: undefined 
                         link: extern  
@3344   identifier_node  strg: y1f      lngt: 3       
@3345   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3347   
@3346   function_decl    name: @3348    mngl: @3344    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3349    lang: C        body: undefined 
                         link: extern  
@3347   tree_list        valu: @436     chan: @11     
@3348   identifier_node  strg: __builtin_y1f           lngt: 13      
@3349   function_decl    name: @3350    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3352   
                         lang: C        body: undefined 
                         link: extern  
@3350   identifier_node  strg: y1       lngt: 2       
@3351   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3353   
@3352   function_decl    name: @3354    mngl: @3350    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3355    lang: C        body: undefined 
                         link: extern  
@3353   tree_list        valu: @36      chan: @11     
@3354   identifier_node  strg: __builtin_y1            lngt: 12      
@3355   function_decl    name: @3356    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3357   
                         lang: C        body: undefined 
                         link: extern  
@3356   identifier_node  strg: y0l      lngt: 3       
@3357   function_decl    name: @3358    mngl: @3356    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3359    lang: C        body: undefined 
                         link: extern  
@3358   identifier_node  strg: __builtin_y0l           lngt: 13      
@3359   function_decl    name: @3360    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3361   
                         lang: C        body: undefined 
                         link: extern  
@3360   identifier_node  strg: y0f      lngt: 3       
@3361   function_decl    name: @3362    mngl: @3360    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3363    lang: C        body: undefined 
                         link: extern  
@3362   identifier_node  strg: __builtin_y0f           lngt: 13      
@3363   function_decl    name: @3364    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3365   
                         lang: C        body: undefined 
                         link: extern  
@3364   identifier_node  strg: y0       lngt: 2       
@3365   function_decl    name: @3366    mngl: @3364    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3367    lang: C        body: undefined 
                         link: extern  
@3366   identifier_node  strg: __builtin_y0            lngt: 12      
@3367   function_decl    name: @3368    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3369   
                         lang: C        body: undefined 
                         link: extern  
@3368   identifier_node  strg: truncl   lngt: 6       
@3369   function_decl    name: @3370    mngl: @3368    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3371    lang: C        body: undefined 
                         link: extern  
@3370   identifier_node  strg: __builtin_truncl        lngt: 16      
@3371   function_decl    name: @3372    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3373   
                         lang: C        body: undefined 
                         link: extern  
@3372   identifier_node  strg: truncf   lngt: 6       
@3373   function_decl    name: @3374    mngl: @3372    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3375    lang: C        body: undefined 
                         link: extern  
@3374   identifier_node  strg: __builtin_truncf        lngt: 16      
@3375   function_decl    name: @3376    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3377   
                         lang: C        body: undefined 
                         link: extern  
@3376   identifier_node  strg: trunc    lngt: 5       
@3377   function_decl    name: @3378    mngl: @3376    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3379    lang: C        body: undefined 
                         link: extern  
@3378   identifier_node  strg: __builtin_trunc         lngt: 15      
@3379   function_decl    name: @3380    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3381   
                         lang: C        body: undefined 
                         link: extern  
@3380   identifier_node  strg: tgammal  lngt: 7       
@3381   function_decl    name: @3382    mngl: @3380    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3383    lang: C        body: undefined 
                         link: extern  
@3382   identifier_node  strg: __builtin_tgammal       lngt: 17      
@3383   function_decl    name: @3384    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3385   
                         lang: C        body: undefined 
                         link: extern  
@3384   identifier_node  strg: tgammaf  lngt: 7       
@3385   function_decl    name: @3386    mngl: @3384    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3387    lang: C        body: undefined 
                         link: extern  
@3386   identifier_node  strg: __builtin_tgammaf       lngt: 17      
@3387   function_decl    name: @3388    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3389   
                         lang: C        body: undefined 
                         link: extern  
@3388   identifier_node  strg: tgamma   lngt: 6       
@3389   function_decl    name: @3390    mngl: @3388    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3391    lang: C        body: undefined 
                         link: extern  
@3390   identifier_node  strg: __builtin_tgamma        lngt: 16      
@3391   function_decl    name: @3392    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3393   
                         lang: C        body: undefined 
                         link: extern  
@3392   identifier_node  strg: tanl     lngt: 4       
@3393   function_decl    name: @3394    mngl: @3392    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3395    lang: C        body: undefined 
                         link: extern  
@3394   identifier_node  strg: __builtin_tanl          lngt: 14      
@3395   function_decl    name: @3396    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3397   
                         lang: C        body: undefined 
                         link: extern  
@3396   identifier_node  strg: tanhl    lngt: 5       
@3397   function_decl    name: @3398    mngl: @3396    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3399    lang: C        body: undefined 
                         link: extern  
@3398   identifier_node  strg: __builtin_tanhl         lngt: 15      
@3399   function_decl    name: @3400    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3401   
                         lang: C        body: undefined 
                         link: extern  
@3400   identifier_node  strg: tanhf    lngt: 5       
@3401   function_decl    name: @3402    mngl: @3400    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3403    lang: C        body: undefined 
                         link: extern  
@3402   identifier_node  strg: __builtin_tanhf         lngt: 15      
@3403   function_decl    name: @3404    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3405   
                         lang: C        body: undefined 
                         link: extern  
@3404   identifier_node  strg: tanh     lngt: 4       
@3405   function_decl    name: @3406    mngl: @3404    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3407    lang: C        body: undefined 
                         link: extern  
@3406   identifier_node  strg: __builtin_tanh          lngt: 14      
@3407   function_decl    name: @3408    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3409   
                         lang: C        body: undefined 
                         link: extern  
@3408   identifier_node  strg: tanf     lngt: 4       
@3409   function_decl    name: @3410    mngl: @3408    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3411    lang: C        body: undefined 
                         link: extern  
@3410   identifier_node  strg: __builtin_tanf          lngt: 14      
@3411   function_decl    name: @3412    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3413   
                         lang: C        body: undefined 
                         link: extern  
@3412   identifier_node  strg: tan      lngt: 3       
@3413   function_decl    name: @3414    mngl: @3412    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3415    lang: C        body: undefined 
                         link: extern  
@3414   identifier_node  strg: __builtin_tan           lngt: 13      
@3415   function_decl    name: @3416    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3417   
                         lang: C        body: undefined 
                         link: extern  
@3416   identifier_node  strg: sqrtl    lngt: 5       
@3417   function_decl    name: @3418    mngl: @3416    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3419    lang: C        body: undefined 
                         link: extern  
@3418   identifier_node  strg: __builtin_sqrtl         lngt: 15      
@3419   function_decl    name: @3420    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3421   
                         lang: C        body: undefined 
                         link: extern  
@3420   identifier_node  strg: sqrtf    lngt: 5       
@3421   function_decl    name: @3422    mngl: @3420    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3423    lang: C        body: undefined 
                         link: extern  
@3422   identifier_node  strg: __builtin_sqrtf         lngt: 15      
@3423   function_decl    name: @3424    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3425   
                         lang: C        body: undefined 
                         link: extern  
@3424   identifier_node  strg: sqrt     lngt: 4       
@3425   function_decl    name: @3426    mngl: @3424    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3427    lang: C        body: undefined 
                         link: extern  
@3426   identifier_node  strg: __builtin_sqrt          lngt: 14      
@3427   function_decl    name: @3428    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3429   
                         lang: C        body: undefined 
                         link: extern  
@3428   identifier_node  strg: sinl     lngt: 4       
@3429   function_decl    name: @3430    mngl: @3428    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3431    lang: C        body: undefined 
                         link: extern  
@3430   identifier_node  strg: __builtin_sinl          lngt: 14      
@3431   function_decl    name: @3432    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3433   
                         lang: C        body: undefined 
                         link: extern  
@3432   identifier_node  strg: sinhl    lngt: 5       
@3433   function_decl    name: @3434    mngl: @3432    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3435    lang: C        body: undefined 
                         link: extern  
@3434   identifier_node  strg: __builtin_sinhl         lngt: 15      
@3435   function_decl    name: @3436    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3437   
                         lang: C        body: undefined 
                         link: extern  
@3436   identifier_node  strg: sinhf    lngt: 5       
@3437   function_decl    name: @3438    mngl: @3436    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3439    lang: C        body: undefined 
                         link: extern  
@3438   identifier_node  strg: __builtin_sinhf         lngt: 15      
@3439   function_decl    name: @3440    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3441   
                         lang: C        body: undefined 
                         link: extern  
@3440   identifier_node  strg: sinh     lngt: 4       
@3441   function_decl    name: @3442    mngl: @3440    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3443    lang: C        body: undefined 
                         link: extern  
@3442   identifier_node  strg: __builtin_sinh          lngt: 14      
@3443   function_decl    name: @3444    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3445   
                         lang: C        body: undefined 
                         link: extern  
@3444   identifier_node  strg: sinf     lngt: 4       
@3445   function_decl    name: @3446    mngl: @3444    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3447    lang: C        body: undefined 
                         link: extern  
@3446   identifier_node  strg: __builtin_sinf          lngt: 14      
@3447   function_decl    name: @3448    type: @3449    srcp: <built-in>:0      
                         note: artificial              chan: @3450   
                         lang: C        body: undefined 
                         link: extern  
@3448   identifier_node  strg: sincosl  lngt: 7       
@3449   function_type    size: @9       algn: 8        retn: @26     
                         prms: @3451   
@3450   function_decl    name: @3452    mngl: @3448    type: @3449   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3453    lang: C        body: undefined 
                         link: extern  
@3451   tree_list        valu: @354     chan: @3454   
@3452   identifier_node  strg: __builtin_sincosl       lngt: 17      
@3453   function_decl    name: @3455    type: @3456    srcp: <built-in>:0      
                         note: artificial              chan: @3457   
                         lang: C        body: undefined 
                         link: extern  
@3454   tree_list        valu: @3458    chan: @3459   
@3455   identifier_node  strg: sincosf  lngt: 7       
@3456   function_type    size: @9       algn: 8        retn: @26     
                         prms: @3460   
@3457   function_decl    name: @3461    mngl: @3455    type: @3456   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3462    lang: C        body: undefined 
                         link: extern  
@3458   pointer_type     size: @49      algn: 32       ptd : @354    
@3459   tree_list        valu: @3458    chan: @11     
@3460   tree_list        valu: @436     chan: @3463   
@3461   identifier_node  strg: __builtin_sincosf       lngt: 17      
@3462   function_decl    name: @3464    type: @3465    srcp: <built-in>:0      
                         note: artificial              chan: @3466   
                         lang: C        body: undefined 
                         link: extern  
@3463   tree_list        valu: @3467    chan: @3468   
@3464   identifier_node  strg: sincos   lngt: 6       
@3465   function_type    size: @9       algn: 8        retn: @26     
                         prms: @3469   
@3466   function_decl    name: @3470    mngl: @3464    type: @3465   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3471    lang: C        body: undefined 
                         link: extern  
@3467   pointer_type     size: @49      algn: 32       ptd : @436    
@3468   tree_list        valu: @3467    chan: @11     
@3469   tree_list        valu: @36      chan: @3472   
@3470   identifier_node  strg: __builtin_sincos        lngt: 16      
@3471   function_decl    name: @3473    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3474   
                         lang: C        body: undefined 
                         link: extern  
@3472   tree_list        valu: @88      chan: @3475   
@3473   identifier_node  strg: sin      lngt: 3       
@3474   function_decl    name: @3476    mngl: @3473    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3477    lang: C        body: undefined 
                         link: extern  
@3475   tree_list        valu: @88      chan: @11     
@3476   identifier_node  strg: __builtin_sin           lngt: 13      
@3477   function_decl    name: @3478    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3479   
                         lang: C        body: undefined 
                         link: extern  
@3478   identifier_node  strg: significandl            lngt: 12      
@3479   function_decl    name: @3480    mngl: @3478    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3481    lang: C        body: undefined 
                         link: extern  
@3480   identifier_node  strg: __builtin_significandl  lngt: 22      
@3481   function_decl    name: @3482    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3483   
                         lang: C        body: undefined 
                         link: extern  
@3482   identifier_node  strg: significandf            lngt: 12      
@3483   function_decl    name: @3484    mngl: @3482    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3485    lang: C        body: undefined 
                         link: extern  
@3484   identifier_node  strg: __builtin_significandf  lngt: 22      
@3485   function_decl    name: @3486    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3487   
                         lang: C        body: undefined 
                         link: extern  
@3486   identifier_node  strg: significand             lngt: 11      
@3487   function_decl    name: @3488    mngl: @3486    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3489    lang: C        body: undefined 
                         link: extern  
@3488   identifier_node  strg: __builtin_significand   lngt: 21      
@3489   function_decl    name: @3490    type: @2854    srcp: <built-in>:0      
                         note: artificial              chan: @3491   
                         lang: C        body: undefined 
                         link: extern  
@3490   identifier_node  strg: signbitl lngt: 8       
@3491   function_decl    name: @3492    mngl: @3490    type: @2854   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3493    lang: C        body: undefined 
                         link: extern  
@3492   identifier_node  strg: __builtin_signbitl      lngt: 18      
@3493   function_decl    name: @3494    type: @2865    srcp: <built-in>:0      
                         note: artificial              chan: @3495   
                         lang: C        body: undefined 
                         link: extern  
@3494   identifier_node  strg: signbitf lngt: 8       
@3495   function_decl    name: @3496    mngl: @3494    type: @2865   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3497    lang: C        body: undefined 
                         link: extern  
@3496   identifier_node  strg: __builtin_signbitf      lngt: 18      
@3497   function_decl    name: @3498    type: @2927    srcp: <built-in>:0      
                         note: artificial              chan: @3499   
                         lang: C        body: undefined 
                         link: extern  
@3498   identifier_node  strg: signbit  lngt: 7       
@3499   function_decl    name: @3500    mngl: @3498    type: @2927   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3501    lang: C        body: undefined 
                         link: extern  
@3500   identifier_node  strg: __builtin_signbit       lngt: 17      
@3501   function_decl    name: @3502    type: @3503    srcp: <built-in>:0      
                         note: artificial              chan: @3504   
                         lang: C        body: undefined 
                         link: extern  
@3502   identifier_node  strg: scalbnl  lngt: 7       
@3503   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3505   
@3504   function_decl    name: @3506    mngl: @3502    type: @3503   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3507    lang: C        body: undefined 
                         link: extern  
@3505   tree_list        valu: @354     chan: @3508   
@3506   identifier_node  strg: __builtin_scalbnl       lngt: 17      
@3507   function_decl    name: @3509    type: @3510    srcp: <built-in>:0      
                         note: artificial              chan: @3511   
                         lang: C        body: undefined 
                         link: extern  
@3508   tree_list        valu: @33      chan: @11     
@3509   identifier_node  strg: scalbnf  lngt: 7       
@3510   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3512   
@3511   function_decl    name: @3513    mngl: @3509    type: @3510   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3514    lang: C        body: undefined 
                         link: extern  
@3512   tree_list        valu: @436     chan: @3515   
@3513   identifier_node  strg: __builtin_scalbnf       lngt: 17      
@3514   function_decl    name: @3516    type: @3517    srcp: <built-in>:0      
                         note: artificial              chan: @3518   
                         lang: C        body: undefined 
                         link: extern  
@3515   tree_list        valu: @33      chan: @11     
@3516   identifier_node  strg: scalbn   lngt: 6       
@3517   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3519   
@3518   function_decl    name: @3520    mngl: @3516    type: @3517   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3521    lang: C        body: undefined 
                         link: extern  
@3519   tree_list        valu: @36      chan: @3522   
@3520   identifier_node  strg: __builtin_scalbn        lngt: 16      
@3521   function_decl    name: @3523    type: @3524    srcp: <built-in>:0      
                         note: artificial              chan: @3525   
                         lang: C        body: undefined 
                         link: extern  
@3522   tree_list        valu: @33      chan: @11     
@3523   identifier_node  strg: scalblnl lngt: 8       
@3524   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3526   
@3525   function_decl    name: @3527    mngl: @3523    type: @3524   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3528    lang: C        body: undefined 
                         link: extern  
@3526   tree_list        valu: @354     chan: @3529   
@3527   identifier_node  strg: __builtin_scalblnl      lngt: 18      
@3528   function_decl    name: @3530    type: @3531    srcp: <built-in>:0      
                         note: artificial              chan: @3532   
                         lang: C        body: undefined 
                         link: extern  
@3529   tree_list        valu: @602     chan: @11     
@3530   identifier_node  strg: scalblnf lngt: 8       
@3531   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3533   
@3532   function_decl    name: @3534    mngl: @3530    type: @3531   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3535    lang: C        body: undefined 
                         link: extern  
@3533   tree_list        valu: @436     chan: @3536   
@3534   identifier_node  strg: __builtin_scalblnf      lngt: 18      
@3535   function_decl    name: @3537    type: @3538    srcp: <built-in>:0      
                         note: artificial              chan: @3539   
                         lang: C        body: undefined 
                         link: extern  
@3536   tree_list        valu: @602     chan: @11     
@3537   identifier_node  strg: scalbln  lngt: 7       
@3538   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3540   
@3539   function_decl    name: @3541    mngl: @3537    type: @3538   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3542    lang: C        body: undefined 
                         link: extern  
@3540   tree_list        valu: @36      chan: @3543   
@3541   identifier_node  strg: __builtin_scalbln       lngt: 17      
@3542   function_decl    name: @3544    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @3546   
                         lang: C        body: undefined 
                         link: extern  
@3543   tree_list        valu: @602     chan: @11     
@3544   identifier_node  strg: scalbl   lngt: 6       
@3545   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3547   
@3546   function_decl    name: @3548    mngl: @3544    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3549    lang: C        body: undefined 
                         link: extern  
@3547   tree_list        valu: @354     chan: @3550   
@3548   identifier_node  strg: __builtin_scalbl        lngt: 16      
@3549   function_decl    name: @3551    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @3553   
                         lang: C        body: undefined 
                         link: extern  
@3550   tree_list        valu: @354     chan: @11     
@3551   identifier_node  strg: scalbf   lngt: 6       
@3552   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3554   
@3553   function_decl    name: @3555    mngl: @3551    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3556    lang: C        body: undefined 
                         link: extern  
@3554   tree_list        valu: @436     chan: @3557   
@3555   identifier_node  strg: __builtin_scalbf        lngt: 16      
@3556   function_decl    name: @3558    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @3560   
                         lang: C        body: undefined 
                         link: extern  
@3557   tree_list        valu: @436     chan: @11     
@3558   identifier_node  strg: scalb    lngt: 5       
@3559   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3561   
@3560   function_decl    name: @3562    mngl: @3558    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3563    lang: C        body: undefined 
                         link: extern  
@3561   tree_list        valu: @36      chan: @3564   
@3562   identifier_node  strg: __builtin_scalb         lngt: 15      
@3563   function_decl    name: @3565    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3566   
                         lang: C        body: undefined 
                         link: extern  
@3564   tree_list        valu: @36      chan: @11     
@3565   identifier_node  strg: roundl   lngt: 6       
@3566   function_decl    name: @3567    mngl: @3565    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3568    lang: C        body: undefined 
                         link: extern  
@3567   identifier_node  strg: __builtin_roundl        lngt: 16      
@3568   function_decl    name: @3569    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3570   
                         lang: C        body: undefined 
                         link: extern  
@3569   identifier_node  strg: roundf   lngt: 6       
@3570   function_decl    name: @3571    mngl: @3569    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3572    lang: C        body: undefined 
                         link: extern  
@3571   identifier_node  strg: __builtin_roundf        lngt: 16      
@3572   function_decl    name: @3573    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3574   
                         lang: C        body: undefined 
                         link: extern  
@3573   identifier_node  strg: round    lngt: 5       
@3574   function_decl    name: @3575    mngl: @3573    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3576    lang: C        body: undefined 
                         link: extern  
@3575   identifier_node  strg: __builtin_round         lngt: 15      
@3576   function_decl    name: @3577    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3578   
                         lang: C        body: undefined 
                         link: extern  
@3577   identifier_node  strg: rintl    lngt: 5       
@3578   function_decl    name: @3579    mngl: @3577    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3580    lang: C        body: undefined 
                         link: extern  
@3579   identifier_node  strg: __builtin_rintl         lngt: 15      
@3580   function_decl    name: @3581    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3582   
                         lang: C        body: undefined 
                         link: extern  
@3581   identifier_node  strg: rintf    lngt: 5       
@3582   function_decl    name: @3583    mngl: @3581    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3584    lang: C        body: undefined 
                         link: extern  
@3583   identifier_node  strg: __builtin_rintf         lngt: 15      
@3584   function_decl    name: @3585    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3586   
                         lang: C        body: undefined 
                         link: extern  
@3585   identifier_node  strg: rint     lngt: 4       
@3586   function_decl    name: @3587    mngl: @3585    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3588    lang: C        body: undefined 
                         link: extern  
@3587   identifier_node  strg: __builtin_rint          lngt: 14      
@3588   function_decl    name: @3589    type: @3590    srcp: <built-in>:0      
                         note: artificial              chan: @3591   
                         lang: C        body: undefined 
                         link: extern  
@3589   identifier_node  strg: remquol  lngt: 7       
@3590   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3592   
@3591   function_decl    name: @3593    mngl: @3589    type: @3590   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3594    lang: C        body: undefined 
                         link: extern  
@3592   tree_list        valu: @354     chan: @3595   
@3593   identifier_node  strg: __builtin_remquol       lngt: 17      
@3594   function_decl    name: @3596    type: @3597    srcp: <built-in>:0      
                         note: artificial              chan: @3598   
                         lang: C        body: undefined 
                         link: extern  
@3595   tree_list        valu: @354     chan: @3599   
@3596   identifier_node  strg: remquof  lngt: 7       
@3597   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3600   
@3598   function_decl    name: @3601    mngl: @3596    type: @3597   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3602    lang: C        body: undefined 
                         link: extern  
@3599   tree_list        valu: @417     chan: @11     
@3600   tree_list        valu: @436     chan: @3603   
@3601   identifier_node  strg: __builtin_remquof       lngt: 17      
@3602   function_decl    name: @3604    type: @3605    srcp: <built-in>:0      
                         note: artificial              chan: @3606   
                         lang: C        body: undefined 
                         link: extern  
@3603   tree_list        valu: @436     chan: @3607   
@3604   identifier_node  strg: remquo   lngt: 6       
@3605   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3608   
@3606   function_decl    name: @3609    mngl: @3604    type: @3605   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3610    lang: C        body: undefined 
                         link: extern  
@3607   tree_list        valu: @417     chan: @11     
@3608   tree_list        valu: @36      chan: @3611   
@3609   identifier_node  strg: __builtin_remquo        lngt: 16      
@3610   function_decl    name: @3612    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @3613   
                         lang: C        body: undefined 
                         link: extern  
@3611   tree_list        valu: @36      chan: @3614   
@3612   identifier_node  strg: remainderl              lngt: 10      
@3613   function_decl    name: @3615    mngl: @3612    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3616    lang: C        body: undefined 
                         link: extern  
@3614   tree_list        valu: @417     chan: @11     
@3615   identifier_node  strg: __builtin_remainderl    lngt: 20      
@3616   function_decl    name: @3617    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @3618   
                         lang: C        body: undefined 
                         link: extern  
@3617   identifier_node  strg: remainderf              lngt: 10      
@3618   function_decl    name: @3619    mngl: @3617    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3620    lang: C        body: undefined 
                         link: extern  
@3619   identifier_node  strg: __builtin_remainderf    lngt: 20      
@3620   function_decl    name: @3621    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @3622   
                         lang: C        body: undefined 
                         link: extern  
@3621   identifier_node  strg: remainder               lngt: 9       
@3622   function_decl    name: @3623    mngl: @3621    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3624    lang: C        body: undefined 
                         link: extern  
@3623   identifier_node  strg: __builtin_remainder     lngt: 19      
@3624   function_decl    name: @3625    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @3626   
                         lang: C        body: undefined 
                         link: extern  
@3625   identifier_node  strg: powl     lngt: 4       
@3626   function_decl    name: @3627    mngl: @3625    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3628    lang: C        body: undefined 
                         link: extern  
@3627   identifier_node  strg: __builtin_powl          lngt: 14      
@3628   function_decl    name: @3629    type: @3503    srcp: <built-in>:0      
                         note: artificial              chan: @3630   
                         lang: C        body: undefined 
                         link: extern  
@3629   identifier_node  strg: __builtin_powil         lngt: 15      
@3630   function_decl    name: @3631    type: @3510    srcp: <built-in>:0      
                         note: artificial              chan: @3632   
                         lang: C        body: undefined 
                         link: extern  
@3631   identifier_node  strg: __builtin_powif         lngt: 15      
@3632   function_decl    name: @3633    type: @3517    srcp: <built-in>:0      
                         note: artificial              chan: @3634   
                         lang: C        body: undefined 
                         link: extern  
@3633   identifier_node  strg: __builtin_powi          lngt: 14      
@3634   function_decl    name: @3635    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @3636   
                         lang: C        body: undefined 
                         link: extern  
@3635   identifier_node  strg: powf     lngt: 4       
@3636   function_decl    name: @3637    mngl: @3635    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3638    lang: C        body: undefined 
                         link: extern  
@3637   identifier_node  strg: __builtin_powf          lngt: 14      
@3638   function_decl    name: @3639    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3640   
                         lang: C        body: undefined 
                         link: extern  
@3639   identifier_node  strg: pow10l   lngt: 6       
@3640   function_decl    name: @3641    mngl: @3639    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3642    lang: C        body: undefined 
                         link: extern  
@3641   identifier_node  strg: __builtin_pow10l        lngt: 16      
@3642   function_decl    name: @3643    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3644   
                         lang: C        body: undefined 
                         link: extern  
@3643   identifier_node  strg: pow10f   lngt: 6       
@3644   function_decl    name: @3645    mngl: @3643    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3646    lang: C        body: undefined 
                         link: extern  
@3645   identifier_node  strg: __builtin_pow10f        lngt: 16      
@3646   function_decl    name: @3647    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3648   
                         lang: C        body: undefined 
                         link: extern  
@3647   identifier_node  strg: pow10    lngt: 5       
@3648   function_decl    name: @3649    mngl: @3647    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3650    lang: C        body: undefined 
                         link: extern  
@3649   identifier_node  strg: __builtin_pow10         lngt: 15      
@3650   function_decl    name: @3651    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @3652   
                         lang: C        body: undefined 
                         link: extern  
@3651   identifier_node  strg: pow      lngt: 3       
@3652   function_decl    name: @3653    mngl: @3651    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3654    lang: C        body: undefined 
                         link: extern  
@3653   identifier_node  strg: __builtin_pow           lngt: 13      
@3654   function_decl    name: @3655    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @3656   
                         lang: C        body: undefined 
                         link: extern  
@3655   identifier_node  strg: nexttowardl             lngt: 11      
@3656   function_decl    name: @3657    mngl: @3655    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3658    lang: C        body: undefined 
                         link: extern  
@3657   identifier_node  strg: __builtin_nexttowardl   lngt: 21      
@3658   function_decl    name: @3659    type: @3660    srcp: <built-in>:0      
                         note: artificial              chan: @3661   
                         lang: C        body: undefined 
                         link: extern  
@3659   identifier_node  strg: nexttowardf             lngt: 11      
@3660   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3662   
@3661   function_decl    name: @3663    mngl: @3659    type: @3660   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3664    lang: C        body: undefined 
                         link: extern  
@3662   tree_list        valu: @436     chan: @3665   
@3663   identifier_node  strg: __builtin_nexttowardf   lngt: 21      
@3664   function_decl    name: @3666    type: @3667    srcp: <built-in>:0      
                         note: artificial              chan: @3668   
                         lang: C        body: undefined 
                         link: extern  
@3665   tree_list        valu: @354     chan: @11     
@3666   identifier_node  strg: nexttoward              lngt: 10      
@3667   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3669   
@3668   function_decl    name: @3670    mngl: @3666    type: @3667   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3671    lang: C        body: undefined 
                         link: extern  
@3669   tree_list        valu: @36      chan: @3672   
@3670   identifier_node  strg: __builtin_nexttoward    lngt: 20      
@3671   function_decl    name: @3673    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @3674   
                         lang: C        body: undefined 
                         link: extern  
@3672   tree_list        valu: @354     chan: @11     
@3673   identifier_node  strg: nextafterl              lngt: 10      
@3674   function_decl    name: @3675    mngl: @3673    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3676    lang: C        body: undefined 
                         link: extern  
@3675   identifier_node  strg: __builtin_nextafterl    lngt: 20      
@3676   function_decl    name: @3677    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @3678   
                         lang: C        body: undefined 
                         link: extern  
@3677   identifier_node  strg: nextafterf              lngt: 10      
@3678   function_decl    name: @3679    mngl: @3677    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3680    lang: C        body: undefined 
                         link: extern  
@3679   identifier_node  strg: __builtin_nextafterf    lngt: 20      
@3680   function_decl    name: @3681    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @3682   
                         lang: C        body: undefined 
                         link: extern  
@3681   identifier_node  strg: nextafter               lngt: 9       
@3682   function_decl    name: @3683    mngl: @3681    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3684    lang: C        body: undefined 
                         link: extern  
@3683   identifier_node  strg: __builtin_nextafter     lngt: 19      
@3684   function_decl    name: @3685    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3686   
                         lang: C        body: undefined 
                         link: extern  
@3685   identifier_node  strg: nearbyintl              lngt: 10      
@3686   function_decl    name: @3687    mngl: @3685    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3688    lang: C        body: undefined 
                         link: extern  
@3687   identifier_node  strg: __builtin_nearbyintl    lngt: 20      
@3688   function_decl    name: @3689    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3690   
                         lang: C        body: undefined 
                         link: extern  
@3689   identifier_node  strg: nearbyintf              lngt: 10      
@3690   function_decl    name: @3691    mngl: @3689    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3692    lang: C        body: undefined 
                         link: extern  
@3691   identifier_node  strg: __builtin_nearbyintf    lngt: 20      
@3692   function_decl    name: @3693    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3694   
                         lang: C        body: undefined 
                         link: extern  
@3693   identifier_node  strg: nearbyint               lngt: 9       
@3694   function_decl    name: @3695    mngl: @3693    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3696    lang: C        body: undefined 
                         link: extern  
@3695   identifier_node  strg: __builtin_nearbyint     lngt: 19      
@3696   function_decl    name: @3697    type: @3698    srcp: <built-in>:0      
                         note: artificial              chan: @3699   
                         lang: C        body: undefined 
                         link: extern  
@3697   identifier_node  strg: __builtin_nansl         lngt: 15      
@3698   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3700   
@3699   function_decl    name: @3701    type: @3702    srcp: <built-in>:0      
                         note: artificial              chan: @3703   
                         lang: C        body: undefined 
                         link: extern  
@3700   tree_list        valu: @70      chan: @11     
@3701   identifier_node  strg: __builtin_nansf         lngt: 15      
@3702   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3704   
@3703   function_decl    name: @3705    type: @3706    srcp: <built-in>:0      
                         note: artificial              chan: @3707   
                         lang: C        body: undefined 
                         link: extern  
@3704   tree_list        valu: @70      chan: @11     
@3705   identifier_node  strg: __builtin_nans          lngt: 14      
@3706   function_type    size: @9       algn: 8        retn: @36     
                         prms: @2723   
@3707   function_decl    name: @3708    type: @3698    srcp: <built-in>:0      
                         note: artificial              chan: @3709   
                         lang: C        body: undefined 
                         link: extern  
@3708   identifier_node  strg: __builtin_nanl          lngt: 14      
@3709   function_decl    name: @3710    type: @3702    srcp: <built-in>:0      
                         note: artificial              chan: @3711   
                         lang: C        body: undefined 
                         link: extern  
@3710   identifier_node  strg: __builtin_nanf          lngt: 14      
@3711   function_decl    name: @3712    type: @3706    srcp: <built-in>:0      
                         note: artificial              chan: @3713   
                         lang: C        body: undefined 
                         link: extern  
@3712   identifier_node  strg: __builtin_nan           lngt: 13      
@3713   function_decl    name: @3714    type: @3715    srcp: <built-in>:0      
                         note: artificial              chan: @3716   
                         lang: C        body: undefined 
                         link: extern  
@3714   identifier_node  strg: modfl    lngt: 5       
@3715   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3717   
@3716   function_decl    name: @3718    mngl: @3714    type: @3715   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3719    lang: C        body: undefined 
                         link: extern  
@3717   tree_list        valu: @354     chan: @3720   
@3718   identifier_node  strg: __builtin_modfl         lngt: 15      
@3719   function_decl    name: @3721    type: @3722    srcp: <built-in>:0      
                         note: artificial              chan: @3723   
                         lang: C        body: undefined 
                         link: extern  
@3720   tree_list        valu: @3458    chan: @11     
@3721   identifier_node  strg: modff    lngt: 5       
@3722   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3724   
@3723   function_decl    name: @3725    mngl: @3721    type: @3722   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3726    lang: C        body: undefined 
                         link: extern  
@3724   tree_list        valu: @436     chan: @3727   
@3725   identifier_node  strg: __builtin_modff         lngt: 15      
@3726   function_decl    name: @3728    type: @3729    srcp: <built-in>:0      
                         note: artificial              chan: @3730   
                         lang: C        body: undefined 
                         link: extern  
@3727   tree_list        valu: @3467    chan: @11     
@3728   identifier_node  strg: modf     lngt: 4       
@3729   function_type    size: @9       algn: 8        retn: @36     
                         prms: @3731   
@3730   function_decl    name: @3732    mngl: @3728    type: @3729   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3733    lang: C        body: undefined 
                         link: extern  
@3731   tree_list        valu: @36      chan: @3734   
@3732   identifier_node  strg: __builtin_modf          lngt: 14      
@3733   function_decl    name: @3735    type: @3736    srcp: <built-in>:0      
                         note: artificial              chan: @3737   
                         lang: C        body: undefined 
                         link: extern  
@3734   tree_list        valu: @88      chan: @11     
@3735   identifier_node  strg: lroundl  lngt: 7       
@3736   function_type    size: @9       algn: 8        retn: @602    
                         prms: @3738   
@3737   function_decl    name: @3739    mngl: @3735    type: @3736   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3740    lang: C        body: undefined 
                         link: extern  
@3738   tree_list        valu: @354     chan: @11     
@3739   identifier_node  strg: __builtin_lroundl       lngt: 17      
@3740   function_decl    name: @3741    type: @3742    srcp: <built-in>:0      
                         note: artificial              chan: @3743   
                         lang: C        body: undefined 
                         link: extern  
@3741   identifier_node  strg: lroundf  lngt: 7       
@3742   function_type    size: @9       algn: 8        retn: @602    
                         prms: @3744   
@3743   function_decl    name: @3745    mngl: @3741    type: @3742   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3746    lang: C        body: undefined 
                         link: extern  
@3744   tree_list        valu: @436     chan: @11     
@3745   identifier_node  strg: __builtin_lroundf       lngt: 17      
@3746   function_decl    name: @3747    type: @3748    srcp: <built-in>:0      
                         note: artificial              chan: @3749   
                         lang: C        body: undefined 
                         link: extern  
@3747   identifier_node  strg: lround   lngt: 6       
@3748   function_type    size: @9       algn: 8        retn: @602    
                         prms: @3750   
@3749   function_decl    name: @3751    mngl: @3747    type: @3748   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3752    lang: C        body: undefined 
                         link: extern  
@3750   tree_list        valu: @36      chan: @11     
@3751   identifier_node  strg: __builtin_lround        lngt: 16      
@3752   function_decl    name: @3753    type: @3736    srcp: <built-in>:0      
                         note: artificial              chan: @3754   
                         lang: C        body: undefined 
                         link: extern  
@3753   identifier_node  strg: lrintl   lngt: 6       
@3754   function_decl    name: @3755    mngl: @3753    type: @3736   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3756    lang: C        body: undefined 
                         link: extern  
@3755   identifier_node  strg: __builtin_lrintl        lngt: 16      
@3756   function_decl    name: @3757    type: @3742    srcp: <built-in>:0      
                         note: artificial              chan: @3758   
                         lang: C        body: undefined 
                         link: extern  
@3757   identifier_node  strg: lrintf   lngt: 6       
@3758   function_decl    name: @3759    mngl: @3757    type: @3742   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3760    lang: C        body: undefined 
                         link: extern  
@3759   identifier_node  strg: __builtin_lrintf        lngt: 16      
@3760   function_decl    name: @3761    type: @3748    srcp: <built-in>:0      
                         note: artificial              chan: @3762   
                         lang: C        body: undefined 
                         link: extern  
@3761   identifier_node  strg: lrint    lngt: 5       
@3762   function_decl    name: @3763    mngl: @3761    type: @3748   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3764    lang: C        body: undefined 
                         link: extern  
@3763   identifier_node  strg: __builtin_lrint         lngt: 15      
@3764   function_decl    name: @3765    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3766   
                         lang: C        body: undefined 
                         link: extern  
@3765   identifier_node  strg: logl     lngt: 4       
@3766   function_decl    name: @3767    mngl: @3765    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3768    lang: C        body: undefined 
                         link: extern  
@3767   identifier_node  strg: __builtin_logl          lngt: 14      
@3768   function_decl    name: @3769    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3770   
                         lang: C        body: undefined 
                         link: extern  
@3769   identifier_node  strg: logf     lngt: 4       
@3770   function_decl    name: @3771    mngl: @3769    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3772    lang: C        body: undefined 
                         link: extern  
@3771   identifier_node  strg: __builtin_logf          lngt: 14      
@3772   function_decl    name: @3773    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3774   
                         lang: C        body: undefined 
                         link: extern  
@3773   identifier_node  strg: logbl    lngt: 5       
@3774   function_decl    name: @3775    mngl: @3773    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3776    lang: C        body: undefined 
                         link: extern  
@3775   identifier_node  strg: __builtin_logbl         lngt: 15      
@3776   function_decl    name: @3777    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3778   
                         lang: C        body: undefined 
                         link: extern  
@3777   identifier_node  strg: logbf    lngt: 5       
@3778   function_decl    name: @3779    mngl: @3777    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3780    lang: C        body: undefined 
                         link: extern  
@3779   identifier_node  strg: __builtin_logbf         lngt: 15      
@3780   function_decl    name: @3781    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3782   
                         lang: C        body: undefined 
                         link: extern  
@3781   identifier_node  strg: logb     lngt: 4       
@3782   function_decl    name: @3783    mngl: @3781    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3784    lang: C        body: undefined 
                         link: extern  
@3783   identifier_node  strg: __builtin_logb          lngt: 14      
@3784   function_decl    name: @3785    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3786   
                         lang: C        body: undefined 
                         link: extern  
@3785   identifier_node  strg: log2l    lngt: 5       
@3786   function_decl    name: @3787    mngl: @3785    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3788    lang: C        body: undefined 
                         link: extern  
@3787   identifier_node  strg: __builtin_log2l         lngt: 15      
@3788   function_decl    name: @3789    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3790   
                         lang: C        body: undefined 
                         link: extern  
@3789   identifier_node  strg: log2f    lngt: 5       
@3790   function_decl    name: @3791    mngl: @3789    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3792    lang: C        body: undefined 
                         link: extern  
@3791   identifier_node  strg: __builtin_log2f         lngt: 15      
@3792   function_decl    name: @3793    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3794   
                         lang: C        body: undefined 
                         link: extern  
@3793   identifier_node  strg: log2     lngt: 4       
@3794   function_decl    name: @3795    mngl: @3793    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3796    lang: C        body: undefined 
                         link: extern  
@3795   identifier_node  strg: __builtin_log2          lngt: 14      
@3796   function_decl    name: @3797    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3798   
                         lang: C        body: undefined 
                         link: extern  
@3797   identifier_node  strg: log1pl   lngt: 6       
@3798   function_decl    name: @3799    mngl: @3797    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3800    lang: C        body: undefined 
                         link: extern  
@3799   identifier_node  strg: __builtin_log1pl        lngt: 16      
@3800   function_decl    name: @3801    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3802   
                         lang: C        body: undefined 
                         link: extern  
@3801   identifier_node  strg: log1pf   lngt: 6       
@3802   function_decl    name: @3803    mngl: @3801    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3804    lang: C        body: undefined 
                         link: extern  
@3803   identifier_node  strg: __builtin_log1pf        lngt: 16      
@3804   function_decl    name: @3805    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3806   
                         lang: C        body: undefined 
                         link: extern  
@3805   identifier_node  strg: log1p    lngt: 5       
@3806   function_decl    name: @3807    mngl: @3805    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3808    lang: C        body: undefined 
                         link: extern  
@3807   identifier_node  strg: __builtin_log1p         lngt: 15      
@3808   function_decl    name: @3809    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3810   
                         lang: C        body: undefined 
                         link: extern  
@3809   identifier_node  strg: log10l   lngt: 6       
@3810   function_decl    name: @3811    mngl: @3809    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3812    lang: C        body: undefined 
                         link: extern  
@3811   identifier_node  strg: __builtin_log10l        lngt: 16      
@3812   function_decl    name: @3813    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3814   
                         lang: C        body: undefined 
                         link: extern  
@3813   identifier_node  strg: log10f   lngt: 6       
@3814   function_decl    name: @3815    mngl: @3813    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3816    lang: C        body: undefined 
                         link: extern  
@3815   identifier_node  strg: __builtin_log10f        lngt: 16      
@3816   function_decl    name: @3817    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3818   
                         lang: C        body: undefined 
                         link: extern  
@3817   identifier_node  strg: log10    lngt: 5       
@3818   function_decl    name: @3819    mngl: @3817    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3820    lang: C        body: undefined 
                         link: extern  
@3819   identifier_node  strg: __builtin_log10         lngt: 15      
@3820   function_decl    name: @3821    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3822   
                         lang: C        body: undefined 
                         link: extern  
@3821   identifier_node  strg: log      lngt: 3       
@3822   function_decl    name: @3823    mngl: @3821    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3824    lang: C        body: undefined 
                         link: extern  
@3823   identifier_node  strg: __builtin_log           lngt: 13      
@3824   function_decl    name: @3825    type: @3826    srcp: <built-in>:0      
                         note: artificial              chan: @3827   
                         lang: C        body: undefined 
                         link: extern  
@3825   identifier_node  strg: llroundl lngt: 8       
@3826   function_type    size: @9       algn: 8        retn: @576    
                         prms: @3828   
@3827   function_decl    name: @3829    mngl: @3825    type: @3826   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3830    lang: C        body: undefined 
                         link: extern  
@3828   tree_list        valu: @354     chan: @11     
@3829   identifier_node  strg: __builtin_llroundl      lngt: 18      
@3830   function_decl    name: @3831    type: @3832    srcp: <built-in>:0      
                         note: artificial              chan: @3833   
                         lang: C        body: undefined 
                         link: extern  
@3831   identifier_node  strg: llroundf lngt: 8       
@3832   function_type    size: @9       algn: 8        retn: @576    
                         prms: @3834   
@3833   function_decl    name: @3835    mngl: @3831    type: @3832   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3836    lang: C        body: undefined 
                         link: extern  
@3834   tree_list        valu: @436     chan: @11     
@3835   identifier_node  strg: __builtin_llroundf      lngt: 18      
@3836   function_decl    name: @3837    type: @3838    srcp: <built-in>:0      
                         note: artificial              chan: @3839   
                         lang: C        body: undefined 
                         link: extern  
@3837   identifier_node  strg: llround  lngt: 7       
@3838   function_type    size: @9       algn: 8        retn: @576    
                         prms: @3840   
@3839   function_decl    name: @3841    mngl: @3837    type: @3838   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3842    lang: C        body: undefined 
                         link: extern  
@3840   tree_list        valu: @36      chan: @11     
@3841   identifier_node  strg: __builtin_llround       lngt: 17      
@3842   function_decl    name: @3843    type: @3826    srcp: <built-in>:0      
                         note: artificial              chan: @3844   
                         lang: C        body: undefined 
                         link: extern  
@3843   identifier_node  strg: llrintl  lngt: 7       
@3844   function_decl    name: @3845    mngl: @3843    type: @3826   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3846    lang: C        body: undefined 
                         link: extern  
@3845   identifier_node  strg: __builtin_llrintl       lngt: 17      
@3846   function_decl    name: @3847    type: @3832    srcp: <built-in>:0      
                         note: artificial              chan: @3848   
                         lang: C        body: undefined 
                         link: extern  
@3847   identifier_node  strg: llrintf  lngt: 7       
@3848   function_decl    name: @3849    mngl: @3847    type: @3832   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3850    lang: C        body: undefined 
                         link: extern  
@3849   identifier_node  strg: __builtin_llrintf       lngt: 17      
@3850   function_decl    name: @3851    type: @3838    srcp: <built-in>:0      
                         note: artificial              chan: @3852   
                         lang: C        body: undefined 
                         link: extern  
@3851   identifier_node  strg: llrint   lngt: 6       
@3852   function_decl    name: @3853    mngl: @3851    type: @3838   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3854    lang: C        body: undefined 
                         link: extern  
@3853   identifier_node  strg: __builtin_llrint        lngt: 16      
@3854   function_decl    name: @3855    type: @3826    srcp: <built-in>:0      
                         note: artificial              chan: @3856   
                         lang: C        body: undefined 
                         link: extern  
@3855   identifier_node  strg: __builtin_llfloorl      lngt: 18      
@3856   function_decl    name: @3857    type: @3832    srcp: <built-in>:0      
                         note: artificial              chan: @3858   
                         lang: C        body: undefined 
                         link: extern  
@3857   identifier_node  strg: __builtin_llfloorf      lngt: 18      
@3858   function_decl    name: @3859    type: @3838    srcp: <built-in>:0      
                         note: artificial              chan: @3860   
                         lang: C        body: undefined 
                         link: extern  
@3859   identifier_node  strg: __builtin_llfloor       lngt: 17      
@3860   function_decl    name: @3861    type: @3826    srcp: <built-in>:0      
                         note: artificial              chan: @3862   
                         lang: C        body: undefined 
                         link: extern  
@3861   identifier_node  strg: __builtin_llceill       lngt: 17      
@3862   function_decl    name: @3863    type: @3832    srcp: <built-in>:0      
                         note: artificial              chan: @3864   
                         lang: C        body: undefined 
                         link: extern  
@3863   identifier_node  strg: __builtin_llceilf       lngt: 17      
@3864   function_decl    name: @3865    type: @3838    srcp: <built-in>:0      
                         note: artificial              chan: @3866   
                         lang: C        body: undefined 
                         link: extern  
@3865   identifier_node  strg: __builtin_llceil        lngt: 16      
@3866   function_decl    name: @3867    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3868   
                         lang: C        body: undefined 
                         link: extern  
@3867   identifier_node  strg: lgammal  lngt: 7       
@3868   function_decl    name: @3869    mngl: @3867    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3870    lang: C        body: undefined 
                         link: extern  
@3869   identifier_node  strg: __builtin_lgammal       lngt: 17      
@3870   function_decl    name: @3871    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3872   
                         lang: C        body: undefined 
                         link: extern  
@3871   identifier_node  strg: lgammaf  lngt: 7       
@3872   function_decl    name: @3873    mngl: @3871    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3874    lang: C        body: undefined 
                         link: extern  
@3873   identifier_node  strg: __builtin_lgammaf       lngt: 17      
@3874   function_decl    name: @3875    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3876   
                         lang: C        body: undefined 
                         link: extern  
@3875   identifier_node  strg: lgamma   lngt: 6       
@3876   function_decl    name: @3877    mngl: @3875    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3878    lang: C        body: undefined 
                         link: extern  
@3877   identifier_node  strg: __builtin_lgamma        lngt: 16      
@3878   function_decl    name: @3879    type: @3736    srcp: <built-in>:0      
                         note: artificial              chan: @3880   
                         lang: C        body: undefined 
                         link: extern  
@3879   identifier_node  strg: __builtin_lfloorl       lngt: 17      
@3880   function_decl    name: @3881    type: @3742    srcp: <built-in>:0      
                         note: artificial              chan: @3882   
                         lang: C        body: undefined 
                         link: extern  
@3881   identifier_node  strg: __builtin_lfloorf       lngt: 17      
@3882   function_decl    name: @3883    type: @3748    srcp: <built-in>:0      
                         note: artificial              chan: @3884   
                         lang: C        body: undefined 
                         link: extern  
@3883   identifier_node  strg: __builtin_lfloor        lngt: 16      
@3884   function_decl    name: @3885    type: @3503    srcp: <built-in>:0      
                         note: artificial              chan: @3886   
                         lang: C        body: undefined 
                         link: extern  
@3885   identifier_node  strg: ldexpl   lngt: 6       
@3886   function_decl    name: @3887    mngl: @3885    type: @3503   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3888    lang: C        body: undefined 
                         link: extern  
@3887   identifier_node  strg: __builtin_ldexpl        lngt: 16      
@3888   function_decl    name: @3889    type: @3510    srcp: <built-in>:0      
                         note: artificial              chan: @3890   
                         lang: C        body: undefined 
                         link: extern  
@3889   identifier_node  strg: ldexpf   lngt: 6       
@3890   function_decl    name: @3891    mngl: @3889    type: @3510   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3892    lang: C        body: undefined 
                         link: extern  
@3891   identifier_node  strg: __builtin_ldexpf        lngt: 16      
@3892   function_decl    name: @3893    type: @3517    srcp: <built-in>:0      
                         note: artificial              chan: @3894   
                         lang: C        body: undefined 
                         link: extern  
@3893   identifier_node  strg: ldexp    lngt: 5       
@3894   function_decl    name: @3895    mngl: @3893    type: @3517   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3896    lang: C        body: undefined 
                         link: extern  
@3895   identifier_node  strg: __builtin_ldexp         lngt: 15      
@3896   function_decl    name: @3897    type: @3736    srcp: <built-in>:0      
                         note: artificial              chan: @3898   
                         lang: C        body: undefined 
                         link: extern  
@3897   identifier_node  strg: __builtin_lceill        lngt: 16      
@3898   function_decl    name: @3899    type: @3742    srcp: <built-in>:0      
                         note: artificial              chan: @3900   
                         lang: C        body: undefined 
                         link: extern  
@3899   identifier_node  strg: __builtin_lceilf        lngt: 16      
@3900   function_decl    name: @3901    type: @3748    srcp: <built-in>:0      
                         note: artificial              chan: @3902   
                         lang: C        body: undefined 
                         link: extern  
@3901   identifier_node  strg: __builtin_lceil         lngt: 15      
@3902   function_decl    name: @3903    type: @3318    srcp: <built-in>:0      
                         note: artificial              chan: @3904   
                         lang: C        body: undefined 
                         link: extern  
@3903   identifier_node  strg: jnl      lngt: 3       
@3904   function_decl    name: @3905    mngl: @3903    type: @3318   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3906    lang: C        body: undefined 
                         link: extern  
@3905   identifier_node  strg: __builtin_jnl           lngt: 13      
@3906   function_decl    name: @3907    type: @3325    srcp: <built-in>:0      
                         note: artificial              chan: @3908   
                         lang: C        body: undefined 
                         link: extern  
@3907   identifier_node  strg: jnf      lngt: 3       
@3908   function_decl    name: @3909    mngl: @3907    type: @3325   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3910    lang: C        body: undefined 
                         link: extern  
@3909   identifier_node  strg: __builtin_jnf           lngt: 13      
@3910   function_decl    name: @3911    type: @3332    srcp: <built-in>:0      
                         note: artificial              chan: @3912   
                         lang: C        body: undefined 
                         link: extern  
@3911   identifier_node  strg: jn       lngt: 2       
@3912   function_decl    name: @3913    mngl: @3911    type: @3332   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3914    lang: C        body: undefined 
                         link: extern  
@3913   identifier_node  strg: __builtin_jn            lngt: 12      
@3914   function_decl    name: @3915    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3916   
                         lang: C        body: undefined 
                         link: extern  
@3915   identifier_node  strg: j1l      lngt: 3       
@3916   function_decl    name: @3917    mngl: @3915    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3918    lang: C        body: undefined 
                         link: extern  
@3917   identifier_node  strg: __builtin_j1l           lngt: 13      
@3918   function_decl    name: @3919    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3920   
                         lang: C        body: undefined 
                         link: extern  
@3919   identifier_node  strg: j1f      lngt: 3       
@3920   function_decl    name: @3921    mngl: @3919    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3922    lang: C        body: undefined 
                         link: extern  
@3921   identifier_node  strg: __builtin_j1f           lngt: 13      
@3922   function_decl    name: @3923    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3924   
                         lang: C        body: undefined 
                         link: extern  
@3923   identifier_node  strg: j1       lngt: 2       
@3924   function_decl    name: @3925    mngl: @3923    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3926    lang: C        body: undefined 
                         link: extern  
@3925   identifier_node  strg: __builtin_j1            lngt: 12      
@3926   function_decl    name: @3927    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3928   
                         lang: C        body: undefined 
                         link: extern  
@3927   identifier_node  strg: j0l      lngt: 3       
@3928   function_decl    name: @3929    mngl: @3927    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3930    lang: C        body: undefined 
                         link: extern  
@3929   identifier_node  strg: __builtin_j0l           lngt: 13      
@3930   function_decl    name: @3931    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3932   
                         lang: C        body: undefined 
                         link: extern  
@3931   identifier_node  strg: j0f      lngt: 3       
@3932   function_decl    name: @3933    mngl: @3931    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3934    lang: C        body: undefined 
                         link: extern  
@3933   identifier_node  strg: __builtin_j0f           lngt: 13      
@3934   function_decl    name: @3935    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3936   
                         lang: C        body: undefined 
                         link: extern  
@3935   identifier_node  strg: j0       lngt: 2       
@3936   function_decl    name: @3937    mngl: @3935    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3938    lang: C        body: undefined 
                         link: extern  
@3937   identifier_node  strg: __builtin_j0            lngt: 12      
@3938   function_decl    name: @3939    type: @3940    srcp: <built-in>:0      
                         note: artificial              chan: @3941   
                         lang: C        body: undefined 
                         link: extern  
@3939   identifier_node  strg: __builtin_infl          lngt: 14      
@3940   function_type    size: @9       algn: 8        retn: @354    
                         prms: @11     
@3941   function_decl    name: @3942    type: @3943    srcp: <built-in>:0      
                         note: artificial              chan: @3944   
                         lang: C        body: undefined 
                         link: extern  
@3942   identifier_node  strg: __builtin_inff          lngt: 14      
@3943   function_type    size: @9       algn: 8        retn: @436    
                         prms: @11     
@3944   function_decl    name: @3945    type: @1165    srcp: <built-in>:0      
                         note: artificial              chan: @3946   
                         lang: C        body: undefined 
                         link: extern  
@3945   identifier_node  strg: __builtin_inf           lngt: 13      
@3946   function_decl    name: @3947    type: @2854    srcp: <built-in>:0      
                         note: artificial              chan: @3948   
                         lang: C        body: undefined 
                         link: extern  
@3947   identifier_node  strg: ilogbl   lngt: 6       
@3948   function_decl    name: @3949    mngl: @3947    type: @2854   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3950    lang: C        body: undefined 
                         link: extern  
@3949   identifier_node  strg: __builtin_ilogbl        lngt: 16      
@3950   function_decl    name: @3951    type: @2865    srcp: <built-in>:0      
                         note: artificial              chan: @3952   
                         lang: C        body: undefined 
                         link: extern  
@3951   identifier_node  strg: ilogbf   lngt: 6       
@3952   function_decl    name: @3953    mngl: @3951    type: @2865   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3954    lang: C        body: undefined 
                         link: extern  
@3953   identifier_node  strg: __builtin_ilogbf        lngt: 16      
@3954   function_decl    name: @3955    type: @2927    srcp: <built-in>:0      
                         note: artificial              chan: @3956   
                         lang: C        body: undefined 
                         link: extern  
@3955   identifier_node  strg: ilogb    lngt: 5       
@3956   function_decl    name: @3957    mngl: @3955    type: @2927   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3958    lang: C        body: undefined 
                         link: extern  
@3957   identifier_node  strg: __builtin_ilogb         lngt: 15      
@3958   function_decl    name: @3959    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @3960   
                         lang: C        body: undefined 
                         link: extern  
@3959   identifier_node  strg: hypotl   lngt: 6       
@3960   function_decl    name: @3961    mngl: @3959    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3962    lang: C        body: undefined 
                         link: extern  
@3961   identifier_node  strg: __builtin_hypotl        lngt: 16      
@3962   function_decl    name: @3963    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @3964   
                         lang: C        body: undefined 
                         link: extern  
@3963   identifier_node  strg: hypotf   lngt: 6       
@3964   function_decl    name: @3965    mngl: @3963    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3966    lang: C        body: undefined 
                         link: extern  
@3965   identifier_node  strg: __builtin_hypotf        lngt: 16      
@3966   function_decl    name: @3967    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @3968   
                         lang: C        body: undefined 
                         link: extern  
@3967   identifier_node  strg: hypot    lngt: 5       
@3968   function_decl    name: @3969    mngl: @3967    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3970    lang: C        body: undefined 
                         link: extern  
@3969   identifier_node  strg: __builtin_hypot         lngt: 15      
@3970   function_decl    name: @3971    type: @3940    srcp: <built-in>:0      
                         note: artificial              chan: @3972   
                         lang: C        body: undefined 
                         link: extern  
@3971   identifier_node  strg: __builtin_huge_vall     lngt: 19      
@3972   function_decl    name: @3973    type: @3943    srcp: <built-in>:0      
                         note: artificial              chan: @3974   
                         lang: C        body: undefined 
                         link: extern  
@3973   identifier_node  strg: __builtin_huge_valf     lngt: 19      
@3974   function_decl    name: @3975    type: @1165    srcp: <built-in>:0      
                         note: artificial              chan: @3976   
                         lang: C        body: undefined 
                         link: extern  
@3975   identifier_node  strg: __builtin_huge_val      lngt: 18      
@3976   function_decl    name: @3977    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @3978   
                         lang: C        body: undefined 
                         link: extern  
@3977   identifier_node  strg: gammal   lngt: 6       
@3978   function_decl    name: @3979    mngl: @3977    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3980    lang: C        body: undefined 
                         link: extern  
@3979   identifier_node  strg: __builtin_gammal        lngt: 16      
@3980   function_decl    name: @3981    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @3982   
                         lang: C        body: undefined 
                         link: extern  
@3981   identifier_node  strg: gammaf   lngt: 6       
@3982   function_decl    name: @3983    mngl: @3981    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3984    lang: C        body: undefined 
                         link: extern  
@3983   identifier_node  strg: __builtin_gammaf        lngt: 16      
@3984   function_decl    name: @3985    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @3986   
                         lang: C        body: undefined 
                         link: extern  
@3985   identifier_node  strg: gamma    lngt: 5       
@3986   function_decl    name: @3987    mngl: @3985    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3988    lang: C        body: undefined 
                         link: extern  
@3987   identifier_node  strg: __builtin_gamma         lngt: 15      
@3988   function_decl    name: @3989    type: @3990    srcp: <built-in>:0      
                         note: artificial              chan: @3991   
                         lang: C        body: undefined 
                         link: extern  
@3989   identifier_node  strg: frexpl   lngt: 6       
@3990   function_type    size: @9       algn: 8        retn: @354    
                         prms: @3992   
@3991   function_decl    name: @3993    mngl: @3989    type: @3990   
                         srcp: <built-in>:0            note: artificial 
                         chan: @3994    lang: C        body: undefined 
                         link: extern  
@3992   tree_list        valu: @354     chan: @3995   
@3993   identifier_node  strg: __builtin_frexpl        lngt: 16      
@3994   function_decl    name: @3996    type: @3997    srcp: <built-in>:0      
                         note: artificial              chan: @3998   
                         lang: C        body: undefined 
                         link: extern  
@3995   tree_list        valu: @417     chan: @11     
@3996   identifier_node  strg: frexpf   lngt: 6       
@3997   function_type    size: @9       algn: 8        retn: @436    
                         prms: @3999   
@3998   function_decl    name: @4000    mngl: @3996    type: @3997   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4001    lang: C        body: undefined 
                         link: extern  
@3999   tree_list        valu: @436     chan: @4002   
@4000   identifier_node  strg: __builtin_frexpf        lngt: 16      
@4001   function_decl    name: @4003    type: @4004    srcp: <built-in>:0      
                         note: artificial              chan: @4005   
                         lang: C        body: undefined 
                         link: extern  
@4002   tree_list        valu: @417     chan: @11     
@4003   identifier_node  strg: frexp    lngt: 5       
@4004   function_type    size: @9       algn: 8        retn: @36     
                         prms: @4006   
@4005   function_decl    name: @4007    mngl: @4003    type: @4004   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4008    lang: C        body: undefined 
                         link: extern  
@4006   tree_list        valu: @36      chan: @4009   
@4007   identifier_node  strg: __builtin_frexp         lngt: 15      
@4008   function_decl    name: @4010    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4011   
                         lang: C        body: undefined 
                         link: extern  
@4009   tree_list        valu: @417     chan: @11     
@4010   identifier_node  strg: fmodl    lngt: 5       
@4011   function_decl    name: @4012    mngl: @4010    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4013    lang: C        body: undefined 
                         link: extern  
@4012   identifier_node  strg: __builtin_fmodl         lngt: 15      
@4013   function_decl    name: @4014    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4015   
                         lang: C        body: undefined 
                         link: extern  
@4014   identifier_node  strg: fmodf    lngt: 5       
@4015   function_decl    name: @4016    mngl: @4014    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4017    lang: C        body: undefined 
                         link: extern  
@4016   identifier_node  strg: __builtin_fmodf         lngt: 15      
@4017   function_decl    name: @4018    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4019   
                         lang: C        body: undefined 
                         link: extern  
@4018   identifier_node  strg: fmod     lngt: 4       
@4019   function_decl    name: @4020    mngl: @4018    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4021    lang: C        body: undefined 
                         link: extern  
@4020   identifier_node  strg: __builtin_fmod          lngt: 14      
@4021   function_decl    name: @4022    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4023   
                         lang: C        body: undefined 
                         link: extern  
@4022   identifier_node  strg: fminl    lngt: 5       
@4023   function_decl    name: @4024    mngl: @4022    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4025    lang: C        body: undefined 
                         link: extern  
@4024   identifier_node  strg: __builtin_fminl         lngt: 15      
@4025   function_decl    name: @4026    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4027   
                         lang: C        body: undefined 
                         link: extern  
@4026   identifier_node  strg: fminf    lngt: 5       
@4027   function_decl    name: @4028    mngl: @4026    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4029    lang: C        body: undefined 
                         link: extern  
@4028   identifier_node  strg: __builtin_fminf         lngt: 15      
@4029   function_decl    name: @4030    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4031   
                         lang: C        body: undefined 
                         link: extern  
@4030   identifier_node  strg: fmin     lngt: 4       
@4031   function_decl    name: @4032    mngl: @4030    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4033    lang: C        body: undefined 
                         link: extern  
@4032   identifier_node  strg: __builtin_fmin          lngt: 14      
@4033   function_decl    name: @4034    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4035   
                         lang: C        body: undefined 
                         link: extern  
@4034   identifier_node  strg: fmaxl    lngt: 5       
@4035   function_decl    name: @4036    mngl: @4034    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4037    lang: C        body: undefined 
                         link: extern  
@4036   identifier_node  strg: __builtin_fmaxl         lngt: 15      
@4037   function_decl    name: @4038    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4039   
                         lang: C        body: undefined 
                         link: extern  
@4038   identifier_node  strg: fmaxf    lngt: 5       
@4039   function_decl    name: @4040    mngl: @4038    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4041    lang: C        body: undefined 
                         link: extern  
@4040   identifier_node  strg: __builtin_fmaxf         lngt: 15      
@4041   function_decl    name: @4042    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4043   
                         lang: C        body: undefined 
                         link: extern  
@4042   identifier_node  strg: fmax     lngt: 4       
@4043   function_decl    name: @4044    mngl: @4042    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4045    lang: C        body: undefined 
                         link: extern  
@4044   identifier_node  strg: __builtin_fmax          lngt: 14      
@4045   function_decl    name: @4046    type: @4047    srcp: <built-in>:0      
                         note: artificial              chan: @4048   
                         lang: C        body: undefined 
                         link: extern  
@4046   identifier_node  strg: fmal     lngt: 4       
@4047   function_type    size: @9       algn: 8        retn: @354    
                         prms: @4049   
@4048   function_decl    name: @4050    mngl: @4046    type: @4047   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4051    lang: C        body: undefined 
                         link: extern  
@4049   tree_list        valu: @354     chan: @4052   
@4050   identifier_node  strg: __builtin_fmal          lngt: 14      
@4051   function_decl    name: @4053    type: @4054    srcp: <built-in>:0      
                         note: artificial              chan: @4055   
                         lang: C        body: undefined 
                         link: extern  
@4052   tree_list        valu: @354     chan: @4056   
@4053   identifier_node  strg: fmaf     lngt: 4       
@4054   function_type    size: @9       algn: 8        retn: @436    
                         prms: @4057   
@4055   function_decl    name: @4058    mngl: @4053    type: @4054   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4059    lang: C        body: undefined 
                         link: extern  
@4056   tree_list        valu: @354     chan: @11     
@4057   tree_list        valu: @436     chan: @4060   
@4058   identifier_node  strg: __builtin_fmaf          lngt: 14      
@4059   function_decl    name: @4061    type: @4062    srcp: <built-in>:0      
                         note: artificial              chan: @4063   
                         lang: C        body: undefined 
                         link: extern  
@4060   tree_list        valu: @436     chan: @4064   
@4061   identifier_node  strg: fma      lngt: 3       
@4062   function_type    size: @9       algn: 8        retn: @36     
                         prms: @4065   
@4063   function_decl    name: @4066    mngl: @4061    type: @4062   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4067    lang: C        body: undefined 
                         link: extern  
@4064   tree_list        valu: @436     chan: @11     
@4065   tree_list        valu: @36      chan: @4068   
@4066   identifier_node  strg: __builtin_fma           lngt: 13      
@4067   function_decl    name: @4069    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4070   
                         lang: C        body: undefined 
                         link: extern  
@4068   tree_list        valu: @36      chan: @4071   
@4069   identifier_node  strg: floorl   lngt: 6       
@4070   function_decl    name: @4072    mngl: @4069    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4073    lang: C        body: undefined 
                         link: extern  
@4071   tree_list        valu: @36      chan: @11     
@4072   identifier_node  strg: __builtin_floorl        lngt: 16      
@4073   function_decl    name: @4074    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4075   
                         lang: C        body: undefined 
                         link: extern  
@4074   identifier_node  strg: floorf   lngt: 6       
@4075   function_decl    name: @4076    mngl: @4074    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4077    lang: C        body: undefined 
                         link: extern  
@4076   identifier_node  strg: __builtin_floorf        lngt: 16      
@4077   function_decl    name: @4078    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4079   
                         lang: C        body: undefined 
                         link: extern  
@4078   identifier_node  strg: floor    lngt: 5       
@4079   function_decl    name: @4080    mngl: @4078    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4081    lang: C        body: undefined 
                         link: extern  
@4080   identifier_node  strg: __builtin_floor         lngt: 15      
@4081   function_decl    name: @4082    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4083   
                         lang: C        body: undefined 
                         link: extern  
@4082   identifier_node  strg: fdiml    lngt: 5       
@4083   function_decl    name: @4084    mngl: @4082    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4085    lang: C        body: undefined 
                         link: extern  
@4084   identifier_node  strg: __builtin_fdiml         lngt: 15      
@4085   function_decl    name: @4086    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4087   
                         lang: C        body: undefined 
                         link: extern  
@4086   identifier_node  strg: fdimf    lngt: 5       
@4087   function_decl    name: @4088    mngl: @4086    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4089    lang: C        body: undefined 
                         link: extern  
@4088   identifier_node  strg: __builtin_fdimf         lngt: 15      
@4089   function_decl    name: @4090    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4091   
                         lang: C        body: undefined 
                         link: extern  
@4090   identifier_node  strg: fdim     lngt: 4       
@4091   function_decl    name: @4092    mngl: @4090    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4093    lang: C        body: undefined 
                         link: extern  
@4092   identifier_node  strg: __builtin_fdim          lngt: 14      
@4093   function_decl    name: @4094    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4095   
                         lang: C        body: undefined 
                         link: extern  
@4094   identifier_node  strg: fabsl    lngt: 5       
@4095   function_decl    name: @4096    mngl: @4094    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4097    lang: C        body: undefined 
                         link: extern  
@4096   identifier_node  strg: __builtin_fabsl         lngt: 15      
@4097   function_decl    name: @4098    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4099   
                         lang: C        body: undefined 
                         link: extern  
@4098   identifier_node  strg: fabsf    lngt: 5       
@4099   function_decl    name: @4100    mngl: @4098    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4101    lang: C        body: undefined 
                         link: extern  
@4100   identifier_node  strg: __builtin_fabsf         lngt: 15      
@4101   function_decl    name: @4102    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4103   
                         lang: C        body: undefined 
                         link: extern  
@4102   identifier_node  strg: fabs     lngt: 4       
@4103   function_decl    name: @4104    mngl: @4102    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4105    lang: C        body: undefined 
                         link: extern  
@4104   identifier_node  strg: __builtin_fabs          lngt: 14      
@4105   function_decl    name: @4106    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4107   
                         lang: C        body: undefined 
                         link: extern  
@4106   identifier_node  strg: expm1l   lngt: 6       
@4107   function_decl    name: @4108    mngl: @4106    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4109    lang: C        body: undefined 
                         link: extern  
@4108   identifier_node  strg: __builtin_expm1l        lngt: 16      
@4109   function_decl    name: @4110    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4111   
                         lang: C        body: undefined 
                         link: extern  
@4110   identifier_node  strg: expm1f   lngt: 6       
@4111   function_decl    name: @4112    mngl: @4110    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4113    lang: C        body: undefined 
                         link: extern  
@4112   identifier_node  strg: __builtin_expm1f        lngt: 16      
@4113   function_decl    name: @4114    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4115   
                         lang: C        body: undefined 
                         link: extern  
@4114   identifier_node  strg: expm1    lngt: 5       
@4115   function_decl    name: @4116    mngl: @4114    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4117    lang: C        body: undefined 
                         link: extern  
@4116   identifier_node  strg: __builtin_expm1         lngt: 15      
@4117   function_decl    name: @4118    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4119   
                         lang: C        body: undefined 
                         link: extern  
@4118   identifier_node  strg: expl     lngt: 4       
@4119   function_decl    name: @4120    mngl: @4118    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4121    lang: C        body: undefined 
                         link: extern  
@4120   identifier_node  strg: __builtin_expl          lngt: 14      
@4121   function_decl    name: @4122    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4123   
                         lang: C        body: undefined 
                         link: extern  
@4122   identifier_node  strg: expf     lngt: 4       
@4123   function_decl    name: @4124    mngl: @4122    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4125    lang: C        body: undefined 
                         link: extern  
@4124   identifier_node  strg: __builtin_expf          lngt: 14      
@4125   function_decl    name: @4126    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4127   
                         lang: C        body: undefined 
                         link: extern  
@4126   identifier_node  strg: exp2l    lngt: 5       
@4127   function_decl    name: @4128    mngl: @4126    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4129    lang: C        body: undefined 
                         link: extern  
@4128   identifier_node  strg: __builtin_exp2l         lngt: 15      
@4129   function_decl    name: @4130    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4131   
                         lang: C        body: undefined 
                         link: extern  
@4130   identifier_node  strg: exp2f    lngt: 5       
@4131   function_decl    name: @4132    mngl: @4130    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4133    lang: C        body: undefined 
                         link: extern  
@4132   identifier_node  strg: __builtin_exp2f         lngt: 15      
@4133   function_decl    name: @4134    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4135   
                         lang: C        body: undefined 
                         link: extern  
@4134   identifier_node  strg: exp2     lngt: 4       
@4135   function_decl    name: @4136    mngl: @4134    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4137    lang: C        body: undefined 
                         link: extern  
@4136   identifier_node  strg: __builtin_exp2          lngt: 14      
@4137   function_decl    name: @4138    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4139   
                         lang: C        body: undefined 
                         link: extern  
@4138   identifier_node  strg: exp10l   lngt: 6       
@4139   function_decl    name: @4140    mngl: @4138    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4141    lang: C        body: undefined 
                         link: extern  
@4140   identifier_node  strg: __builtin_exp10l        lngt: 16      
@4141   function_decl    name: @4142    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4143   
                         lang: C        body: undefined 
                         link: extern  
@4142   identifier_node  strg: exp10f   lngt: 6       
@4143   function_decl    name: @4144    mngl: @4142    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4145    lang: C        body: undefined 
                         link: extern  
@4144   identifier_node  strg: __builtin_exp10f        lngt: 16      
@4145   function_decl    name: @4146    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4147   
                         lang: C        body: undefined 
                         link: extern  
@4146   identifier_node  strg: exp10    lngt: 5       
@4147   function_decl    name: @4148    mngl: @4146    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4149    lang: C        body: undefined 
                         link: extern  
@4148   identifier_node  strg: __builtin_exp10         lngt: 15      
@4149   function_decl    name: @4150    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4151   
                         lang: C        body: undefined 
                         link: extern  
@4150   identifier_node  strg: exp      lngt: 3       
@4151   function_decl    name: @4152    mngl: @4150    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4153    lang: C        body: undefined 
                         link: extern  
@4152   identifier_node  strg: __builtin_exp           lngt: 13      
@4153   function_decl    name: @4154    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4155   
                         lang: C        body: undefined 
                         link: extern  
@4154   identifier_node  strg: erfl     lngt: 4       
@4155   function_decl    name: @4156    mngl: @4154    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4157    lang: C        body: undefined 
                         link: extern  
@4156   identifier_node  strg: __builtin_erfl          lngt: 14      
@4157   function_decl    name: @4158    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4159   
                         lang: C        body: undefined 
                         link: extern  
@4158   identifier_node  strg: erff     lngt: 4       
@4159   function_decl    name: @4160    mngl: @4158    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4161    lang: C        body: undefined 
                         link: extern  
@4160   identifier_node  strg: __builtin_erff          lngt: 14      
@4161   function_decl    name: @4162    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4163   
                         lang: C        body: undefined 
                         link: extern  
@4162   identifier_node  strg: erfcl    lngt: 5       
@4163   function_decl    name: @4164    mngl: @4162    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4165    lang: C        body: undefined 
                         link: extern  
@4164   identifier_node  strg: __builtin_erfcl         lngt: 15      
@4165   function_decl    name: @4166    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4167   
                         lang: C        body: undefined 
                         link: extern  
@4166   identifier_node  strg: erfcf    lngt: 5       
@4167   function_decl    name: @4168    mngl: @4166    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4169    lang: C        body: undefined 
                         link: extern  
@4168   identifier_node  strg: __builtin_erfcf         lngt: 15      
@4169   function_decl    name: @4170    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4171   
                         lang: C        body: undefined 
                         link: extern  
@4170   identifier_node  strg: erfc     lngt: 4       
@4171   function_decl    name: @4172    mngl: @4170    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4173    lang: C        body: undefined 
                         link: extern  
@4172   identifier_node  strg: __builtin_erfc          lngt: 14      
@4173   function_decl    name: @4174    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4175   
                         lang: C        body: undefined 
                         link: extern  
@4174   identifier_node  strg: erf      lngt: 3       
@4175   function_decl    name: @4176    mngl: @4174    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4177    lang: C        body: undefined 
                         link: extern  
@4176   identifier_node  strg: __builtin_erf           lngt: 13      
@4177   function_decl    name: @4178    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4179   
                         lang: C        body: undefined 
                         link: extern  
@4178   identifier_node  strg: dreml    lngt: 5       
@4179   function_decl    name: @4180    mngl: @4178    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4181    lang: C        body: undefined 
                         link: extern  
@4180   identifier_node  strg: __builtin_dreml         lngt: 15      
@4181   function_decl    name: @4182    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4183   
                         lang: C        body: undefined 
                         link: extern  
@4182   identifier_node  strg: dremf    lngt: 5       
@4183   function_decl    name: @4184    mngl: @4182    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4185    lang: C        body: undefined 
                         link: extern  
@4184   identifier_node  strg: __builtin_dremf         lngt: 15      
@4185   function_decl    name: @4186    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4187   
                         lang: C        body: undefined 
                         link: extern  
@4186   identifier_node  strg: drem     lngt: 4       
@4187   function_decl    name: @4188    mngl: @4186    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4189    lang: C        body: undefined 
                         link: extern  
@4188   identifier_node  strg: __builtin_drem          lngt: 14      
@4189   function_decl    name: @4190    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4191   
                         lang: C        body: undefined 
                         link: extern  
@4190   identifier_node  strg: cosl     lngt: 4       
@4191   function_decl    name: @4192    mngl: @4190    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4193    lang: C        body: undefined 
                         link: extern  
@4192   identifier_node  strg: __builtin_cosl          lngt: 14      
@4193   function_decl    name: @4194    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4195   
                         lang: C        body: undefined 
                         link: extern  
@4194   identifier_node  strg: coshl    lngt: 5       
@4195   function_decl    name: @4196    mngl: @4194    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4197    lang: C        body: undefined 
                         link: extern  
@4196   identifier_node  strg: __builtin_coshl         lngt: 15      
@4197   function_decl    name: @4198    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4199   
                         lang: C        body: undefined 
                         link: extern  
@4198   identifier_node  strg: coshf    lngt: 5       
@4199   function_decl    name: @4200    mngl: @4198    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4201    lang: C        body: undefined 
                         link: extern  
@4200   identifier_node  strg: __builtin_coshf         lngt: 15      
@4201   function_decl    name: @4202    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4203   
                         lang: C        body: undefined 
                         link: extern  
@4202   identifier_node  strg: cosh     lngt: 4       
@4203   function_decl    name: @4204    mngl: @4202    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4205    lang: C        body: undefined 
                         link: extern  
@4204   identifier_node  strg: __builtin_cosh          lngt: 14      
@4205   function_decl    name: @4206    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4207   
                         lang: C        body: undefined 
                         link: extern  
@4206   identifier_node  strg: cosf     lngt: 4       
@4207   function_decl    name: @4208    mngl: @4206    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4209    lang: C        body: undefined 
                         link: extern  
@4208   identifier_node  strg: __builtin_cosf          lngt: 14      
@4209   function_decl    name: @4210    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4211   
                         lang: C        body: undefined 
                         link: extern  
@4210   identifier_node  strg: cos      lngt: 3       
@4211   function_decl    name: @4212    mngl: @4210    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4213    lang: C        body: undefined 
                         link: extern  
@4212   identifier_node  strg: __builtin_cos           lngt: 13      
@4213   function_decl    name: @4214    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4215   
                         lang: C        body: undefined 
                         link: extern  
@4214   identifier_node  strg: copysignl               lngt: 9       
@4215   function_decl    name: @4216    mngl: @4214    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4217    lang: C        body: undefined 
                         link: extern  
@4216   identifier_node  strg: __builtin_copysignl     lngt: 19      
@4217   function_decl    name: @4218    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4219   
                         lang: C        body: undefined 
                         link: extern  
@4218   identifier_node  strg: copysignf               lngt: 9       
@4219   function_decl    name: @4220    mngl: @4218    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4221    lang: C        body: undefined 
                         link: extern  
@4220   identifier_node  strg: __builtin_copysignf     lngt: 19      
@4221   function_decl    name: @4222    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4223   
                         lang: C        body: undefined 
                         link: extern  
@4222   identifier_node  strg: copysign lngt: 8       
@4223   function_decl    name: @4224    mngl: @4222    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4225    lang: C        body: undefined 
                         link: extern  
@4224   identifier_node  strg: __builtin_copysign      lngt: 18      
@4225   function_decl    name: @4226    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4227   
                         lang: C        body: undefined 
                         link: extern  
@4226   identifier_node  strg: ceill    lngt: 5       
@4227   function_decl    name: @4228    mngl: @4226    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4229    lang: C        body: undefined 
                         link: extern  
@4228   identifier_node  strg: __builtin_ceill         lngt: 15      
@4229   function_decl    name: @4230    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4231   
                         lang: C        body: undefined 
                         link: extern  
@4230   identifier_node  strg: ceilf    lngt: 5       
@4231   function_decl    name: @4232    mngl: @4230    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4233    lang: C        body: undefined 
                         link: extern  
@4232   identifier_node  strg: __builtin_ceilf         lngt: 15      
@4233   function_decl    name: @4234    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4235   
                         lang: C        body: undefined 
                         link: extern  
@4234   identifier_node  strg: ceil     lngt: 4       
@4235   function_decl    name: @4236    mngl: @4234    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4237    lang: C        body: undefined 
                         link: extern  
@4236   identifier_node  strg: __builtin_ceil          lngt: 14      
@4237   function_decl    name: @4238    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4239   
                         lang: C        body: undefined 
                         link: extern  
@4238   identifier_node  strg: cbrtl    lngt: 5       
@4239   function_decl    name: @4240    mngl: @4238    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4241    lang: C        body: undefined 
                         link: extern  
@4240   identifier_node  strg: __builtin_cbrtl         lngt: 15      
@4241   function_decl    name: @4242    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4243   
                         lang: C        body: undefined 
                         link: extern  
@4242   identifier_node  strg: cbrtf    lngt: 5       
@4243   function_decl    name: @4244    mngl: @4242    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4245    lang: C        body: undefined 
                         link: extern  
@4244   identifier_node  strg: __builtin_cbrtf         lngt: 15      
@4245   function_decl    name: @4246    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4247   
                         lang: C        body: undefined 
                         link: extern  
@4246   identifier_node  strg: cbrt     lngt: 4       
@4247   function_decl    name: @4248    mngl: @4246    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4249    lang: C        body: undefined 
                         link: extern  
@4248   identifier_node  strg: __builtin_cbrt          lngt: 14      
@4249   function_decl    name: @4250    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4251   
                         lang: C        body: undefined 
                         link: extern  
@4250   identifier_node  strg: atanl    lngt: 5       
@4251   function_decl    name: @4252    mngl: @4250    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4253    lang: C        body: undefined 
                         link: extern  
@4252   identifier_node  strg: __builtin_atanl         lngt: 15      
@4253   function_decl    name: @4254    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4255   
                         lang: C        body: undefined 
                         link: extern  
@4254   identifier_node  strg: atanhl   lngt: 6       
@4255   function_decl    name: @4256    mngl: @4254    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4257    lang: C        body: undefined 
                         link: extern  
@4256   identifier_node  strg: __builtin_atanhl        lngt: 16      
@4257   function_decl    name: @4258    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4259   
                         lang: C        body: undefined 
                         link: extern  
@4258   identifier_node  strg: atanhf   lngt: 6       
@4259   function_decl    name: @4260    mngl: @4258    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4261    lang: C        body: undefined 
                         link: extern  
@4260   identifier_node  strg: __builtin_atanhf        lngt: 16      
@4261   function_decl    name: @4262    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4263   
                         lang: C        body: undefined 
                         link: extern  
@4262   identifier_node  strg: atanh    lngt: 5       
@4263   function_decl    name: @4264    mngl: @4262    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4265    lang: C        body: undefined 
                         link: extern  
@4264   identifier_node  strg: __builtin_atanh         lngt: 15      
@4265   function_decl    name: @4266    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4267   
                         lang: C        body: undefined 
                         link: extern  
@4266   identifier_node  strg: atanf    lngt: 5       
@4267   function_decl    name: @4268    mngl: @4266    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4269    lang: C        body: undefined 
                         link: extern  
@4268   identifier_node  strg: __builtin_atanf         lngt: 15      
@4269   function_decl    name: @4270    type: @3545    srcp: <built-in>:0      
                         note: artificial              chan: @4271   
                         lang: C        body: undefined 
                         link: extern  
@4270   identifier_node  strg: atan2l   lngt: 6       
@4271   function_decl    name: @4272    mngl: @4270    type: @3545   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4273    lang: C        body: undefined 
                         link: extern  
@4272   identifier_node  strg: __builtin_atan2l        lngt: 16      
@4273   function_decl    name: @4274    type: @3552    srcp: <built-in>:0      
                         note: artificial              chan: @4275   
                         lang: C        body: undefined 
                         link: extern  
@4274   identifier_node  strg: atan2f   lngt: 6       
@4275   function_decl    name: @4276    mngl: @4274    type: @3552   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4277    lang: C        body: undefined 
                         link: extern  
@4276   identifier_node  strg: __builtin_atan2f        lngt: 16      
@4277   function_decl    name: @4278    type: @3559    srcp: <built-in>:0      
                         note: artificial              chan: @4279   
                         lang: C        body: undefined 
                         link: extern  
@4278   identifier_node  strg: atan2    lngt: 5       
@4279   function_decl    name: @4280    mngl: @4278    type: @3559   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4281    lang: C        body: undefined 
                         link: extern  
@4280   identifier_node  strg: __builtin_atan2         lngt: 15      
@4281   function_decl    name: @4282    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4283   
                         lang: C        body: undefined 
                         link: extern  
@4282   identifier_node  strg: atan     lngt: 4       
@4283   function_decl    name: @4284    mngl: @4282    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4285    lang: C        body: undefined 
                         link: extern  
@4284   identifier_node  strg: __builtin_atan          lngt: 14      
@4285   function_decl    name: @4286    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4287   
                         lang: C        body: undefined 
                         link: extern  
@4286   identifier_node  strg: asinl    lngt: 5       
@4287   function_decl    name: @4288    mngl: @4286    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4289    lang: C        body: undefined 
                         link: extern  
@4288   identifier_node  strg: __builtin_asinl         lngt: 15      
@4289   function_decl    name: @4290    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4291   
                         lang: C        body: undefined 
                         link: extern  
@4290   identifier_node  strg: asinhl   lngt: 6       
@4291   function_decl    name: @4292    mngl: @4290    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4293    lang: C        body: undefined 
                         link: extern  
@4292   identifier_node  strg: __builtin_asinhl        lngt: 16      
@4293   function_decl    name: @4294    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4295   
                         lang: C        body: undefined 
                         link: extern  
@4294   identifier_node  strg: asinhf   lngt: 6       
@4295   function_decl    name: @4296    mngl: @4294    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4297    lang: C        body: undefined 
                         link: extern  
@4296   identifier_node  strg: __builtin_asinhf        lngt: 16      
@4297   function_decl    name: @4298    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4299   
                         lang: C        body: undefined 
                         link: extern  
@4298   identifier_node  strg: asinh    lngt: 5       
@4299   function_decl    name: @4300    mngl: @4298    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4301    lang: C        body: undefined 
                         link: extern  
@4300   identifier_node  strg: __builtin_asinh         lngt: 15      
@4301   function_decl    name: @4302    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4303   
                         lang: C        body: undefined 
                         link: extern  
@4302   identifier_node  strg: asinf    lngt: 5       
@4303   function_decl    name: @4304    mngl: @4302    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4305    lang: C        body: undefined 
                         link: extern  
@4304   identifier_node  strg: __builtin_asinf         lngt: 15      
@4305   function_decl    name: @4306    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4307   
                         lang: C        body: undefined 
                         link: extern  
@4306   identifier_node  strg: asin     lngt: 4       
@4307   function_decl    name: @4308    mngl: @4306    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4309    lang: C        body: undefined 
                         link: extern  
@4308   identifier_node  strg: __builtin_asin          lngt: 14      
@4309   function_decl    name: @4310    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4311   
                         lang: C        body: undefined 
                         link: extern  
@4310   identifier_node  strg: acosl    lngt: 5       
@4311   function_decl    name: @4312    mngl: @4310    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4313    lang: C        body: undefined 
                         link: extern  
@4312   identifier_node  strg: __builtin_acosl         lngt: 15      
@4313   function_decl    name: @4314    type: @3339    srcp: <built-in>:0      
                         note: artificial              chan: @4315   
                         lang: C        body: undefined 
                         link: extern  
@4314   identifier_node  strg: acoshl   lngt: 6       
@4315   function_decl    name: @4316    mngl: @4314    type: @3339   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4317    lang: C        body: undefined 
                         link: extern  
@4316   identifier_node  strg: __builtin_acoshl        lngt: 16      
@4317   function_decl    name: @4318    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4319   
                         lang: C        body: undefined 
                         link: extern  
@4318   identifier_node  strg: acoshf   lngt: 6       
@4319   function_decl    name: @4320    mngl: @4318    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4321    lang: C        body: undefined 
                         link: extern  
@4320   identifier_node  strg: __builtin_acoshf        lngt: 16      
@4321   function_decl    name: @4322    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4323   
                         lang: C        body: undefined 
                         link: extern  
@4322   identifier_node  strg: acosh    lngt: 5       
@4323   function_decl    name: @4324    mngl: @4322    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4325    lang: C        body: undefined 
                         link: extern  
@4324   identifier_node  strg: __builtin_acosh         lngt: 15      
@4325   function_decl    name: @4326    type: @3345    srcp: <built-in>:0      
                         note: artificial              chan: @4327   
                         lang: C        body: undefined 
                         link: extern  
@4326   identifier_node  strg: acosf    lngt: 5       
@4327   function_decl    name: @4328    mngl: @4326    type: @3345   
                         srcp: <built-in>:0            note: artificial 
                         chan: @4329    lang: C        body: undefined 
                         link: extern  
@4328   identifier_node  strg: __builtin_acosf         lngt: 15      
@4329   function_decl    name: @4330    type: @3351    srcp: <built-in>:0      
                         note: artificial              chan: @4331   
                         lang: C        body: undefined 
                         link: extern  
@4330   identifier_node  strg: acos     lngt: 4       
@4331   function_decl    name: @4332    mngl: @4330    type: @3351   
                         srcp: <built-in>:0            note: artificial 
                         chan: @1300    lang: C        body: undefined 
                         link: extern  
@4332   identifier_node  strg: __builtin_acos          lngt: 14      
