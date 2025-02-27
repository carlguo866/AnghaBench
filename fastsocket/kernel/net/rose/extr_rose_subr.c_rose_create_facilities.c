
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rose_sock {int rand; int source_ndigis; int dest_ndigis; char* source_digis; char* dest_digis; char dest_addr; char source_addr; int source_call; int dest_call; } ;


 int AX25_ADDR_LEN ;
 unsigned char AX25_HBIT ;
 int FAC_CCITT ;
 int FAC_CCITT_DEST_NSAP ;
 int FAC_CCITT_SRC_NSAP ;
 int FAC_NATIONAL ;
 int FAC_NATIONAL_DEST_DIGI ;
 int FAC_NATIONAL_DIGIS ;
 int FAC_NATIONAL_RAND ;
 int FAC_NATIONAL_SRC_DIGI ;
 int ROSE_ADDR_LEN ;
 int ROSE_MAX_DIGIS ;
 char* ax2asc (char*,int *) ;
 int memcpy (unsigned char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int rose_create_facilities(unsigned char *buffer, struct rose_sock *rose)
{
 unsigned char *p = buffer + 1;
 char *callsign;
 char buf[11];
 int len, nb;


 if (rose->rand != 0 || rose->source_ndigis == 1 || rose->dest_ndigis == 1) {
  *p++ = 0x00;
  *p++ = FAC_NATIONAL;

  if (rose->rand != 0) {
   *p++ = FAC_NATIONAL_RAND;
   *p++ = (rose->rand >> 8) & 0xFF;
   *p++ = (rose->rand >> 0) & 0xFF;
  }


  if ((rose->source_ndigis > 0) || (rose->dest_ndigis > 0)) {
   int maxdigi = 0;
   *p++ = FAC_NATIONAL_DIGIS;
   *p++ = AX25_ADDR_LEN * (rose->source_ndigis + rose->dest_ndigis);
   for (nb = 0 ; nb < rose->source_ndigis ; nb++) {
    if (++maxdigi >= ROSE_MAX_DIGIS)
     break;
    memcpy(p, &rose->source_digis[nb], AX25_ADDR_LEN);
    p[6] |= AX25_HBIT;
    p += AX25_ADDR_LEN;
   }
   for (nb = 0 ; nb < rose->dest_ndigis ; nb++) {
    if (++maxdigi >= ROSE_MAX_DIGIS)
     break;
    memcpy(p, &rose->dest_digis[nb], AX25_ADDR_LEN);
    p[6] &= ~AX25_HBIT;
    p += AX25_ADDR_LEN;
   }
  }


  if (rose->source_ndigis > 0) {
   *p++ = FAC_NATIONAL_SRC_DIGI;
   *p++ = AX25_ADDR_LEN;
   memcpy(p, &rose->source_digis[0], AX25_ADDR_LEN);
   p += AX25_ADDR_LEN;
  }


  if (rose->dest_ndigis > 0) {
   *p++ = FAC_NATIONAL_DEST_DIGI;
   *p++ = AX25_ADDR_LEN;
   memcpy(p, &rose->dest_digis[0], AX25_ADDR_LEN);
   p += AX25_ADDR_LEN;
  }
 }

 *p++ = 0x00;
 *p++ = FAC_CCITT;

 *p++ = FAC_CCITT_DEST_NSAP;

 callsign = ax2asc(buf, &rose->dest_call);

 *p++ = strlen(callsign) + 10;
 *p++ = (strlen(callsign) + 9) * 2;

 *p++ = 0x47; *p++ = 0x00; *p++ = 0x11;
 *p++ = ROSE_ADDR_LEN * 2;
 memcpy(p, &rose->dest_addr, ROSE_ADDR_LEN);
 p += ROSE_ADDR_LEN;

 memcpy(p, callsign, strlen(callsign));
 p += strlen(callsign);

 *p++ = FAC_CCITT_SRC_NSAP;

 callsign = ax2asc(buf, &rose->source_call);

 *p++ = strlen(callsign) + 10;
 *p++ = (strlen(callsign) + 9) * 2;

 *p++ = 0x47; *p++ = 0x00; *p++ = 0x11;
 *p++ = ROSE_ADDR_LEN * 2;
 memcpy(p, &rose->source_addr, ROSE_ADDR_LEN);
 p += ROSE_ADDR_LEN;

 memcpy(p, callsign, strlen(callsign));
 p += strlen(callsign);

 len = p - buffer;
 buffer[0] = len - 1;

 return len;
}
