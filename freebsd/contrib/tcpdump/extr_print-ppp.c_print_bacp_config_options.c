
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;



 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_32BITS (int const*) ;
 int bacconfopts_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
print_bacp_config_options(netdissect_options *ndo,
                          const u_char *p, int length)
{
 int len, opt;

 if (length < 2)
  return 0;
 ND_TCHECK2(*p, 2);
 len = p[1];
 opt = p[0];
 if (length < len)
  return 0;
 if (len < 2) {
  ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
            tok2str(bacconfopts_values, "Unknown", opt),
            opt,
            len));
  return 0;
 }

 ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u",
           tok2str(bacconfopts_values, "Unknown", opt),
           opt,
           len));

 switch (opt) {
 case 128:
  if (len != 6) {
   ND_PRINT((ndo, " (length bogus, should be = 6)"));
   return len;
  }
  ND_TCHECK_32BITS(p + 2);
  ND_PRINT((ndo, ": Magic-Num 0x%08x", EXTRACT_32BITS(p + 2)));
  break;
 default:




  if (ndo->ndo_vflag < 2)
   print_unknown_data(ndo, &p[2], "\n\t    ", len - 2);
  break;
 }
 if (ndo->ndo_vflag > 1)
  print_unknown_data(ndo, &p[2], "\n\t    ", len - 2);

 return len;

trunc:
 ND_PRINT((ndo, "[|bacp]"));
 return 0;
}
