library(RGCCTranslationUnit)
tu = parseTU("inst/examples/libpcap/pcap.c.t00.tu")

ds = getDataStructures(tu)
r = getRoutines(tu)

grep("^pcap", names(r), value = TRUE)

resolveType(r$pcap_lib_version, tu)

resolveType(r$pcap_open_offline, tu)



########################################
library(RGCCTranslationUnit)
tu = parseTU("inst/examples/libpcap/savefile.c.t00.tu")

ds = getDataStructures(tu, "pcap.h")

pcap_t = resolveType(ds$pcap_t, tu)
class(pcap_t)
class(pcap_t@type)

names(pcap_t@type@fields)


pcap_t@type@fields$cleanup_op@type@type@parameters[[1]]@type@type


pcap_t@type@fields$cleanup_op@type@name
pcap_t@type@fields$cleanup_op@type


r = getRoutines(tu)
resolveType(r$pcap_open_offline, tu)
