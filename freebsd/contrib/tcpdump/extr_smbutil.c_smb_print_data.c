
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (unsigned char const) ;
 int min (int,int) ;
 int print_asc (int *,unsigned char const*,int) ;

void
smb_print_data(netdissect_options *ndo, const unsigned char *buf, int len)
{
    int i = 0;

    if (len <= 0)
 return;
    ND_PRINT((ndo, "[%03X] ", i));
    for (i = 0; i < len; ) {
        ND_TCHECK(buf[i]);
 ND_PRINT((ndo, "%02X ", buf[i] & 0xff));
 i++;
 if (i%8 == 0)
     ND_PRINT((ndo, " "));
 if (i % 16 == 0) {
     print_asc(ndo, &buf[i - 16], 8);
     ND_PRINT((ndo, " "));
     print_asc(ndo, &buf[i - 8], 8);
     ND_PRINT((ndo, "\n"));
     if (i < len)
  ND_PRINT((ndo, "[%03X] ", i));
 }
    }
    if (i % 16) {
 int n;

 n = 16 - (i % 16);
 ND_PRINT((ndo, " "));
 if (n>8)
     ND_PRINT((ndo, " "));
 while (n--)
     ND_PRINT((ndo, "   "));

 n = min(8, i % 16);
 print_asc(ndo, &buf[i - (i % 16)], n);
 ND_PRINT((ndo, " "));
 n = (i % 16) - n;
 if (n > 0)
     print_asc(ndo, &buf[i - n], n);
 ND_PRINT((ndo, "\n"));
    }
    return;

trunc:
    ND_PRINT((ndo, "\n"));
    ND_PRINT((ndo, "WARNING: Short packet. Try increasing the snap length\n"));
}
