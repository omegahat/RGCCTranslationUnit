#if 1
#warning "Not using the native User Converters for RSPerl at this point"
#else
#include <Rinternals.h>
#include <UserConverters.h>

/* Headers from RSPerl  UserConverters.h */
#include "UserConverters.h"

void
GCCNode_p(SV *obj, PerlClassInfoPtr className, RSFromPerlConverter *converters)
{
   return(strncmp(className, "GCC::Node::", strlen("GCC::Node::")) == 0);
}

void
GCCNode_convert(SV *obj, PerlClassInfoPtr className, RSFromPerlConverter *converters)
{
   return(createPerlReference(SvRV(obj)));
}

#endif
