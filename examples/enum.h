typedef enum {red = 1, green, blue = 8}  PrimaryColor;
/* const int MY_CONSTANT = 1; */

/* typedef enum { A = 1, B = 2, C = 4, D = 8} Failure ; */
enum Failure { A = 1, B = 2, C = 4, D = 8};

typedef enum _animal { DOG = 1, CAT, RABBIT} Animal;


/* From wxWidgets source code header files: defs.h */
enum wxStretch
{
    wxSTRETCH_NOT             = 0x0000,
    wxSHRINK                  = 0x1000,
    wxGROW                    = 0x2000,
    wxEXPAND                  = wxGROW,
    wxSHAPED                  = 0x4000,
    wxFIXED_MINSIZE           = 0x8000,
    wxTILE                    = 0xc000,

    /* for compatibility only, default now, don't use explicitly any more */
#if WXWIN_COMPATIBILITY_2_4
    wxADJUST_MINSIZE          = 0x00100000
#else
    wxADJUST_MINSIZE          = 0
#endif
};



enum A1 { AA, AB, AC};
enum A2 { BL, BM, BN, BO};

enum {X, Y = 2, Z = 4}; /* This doesn't show up as it has no name. */



