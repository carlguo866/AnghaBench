
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkt {int dummy; } ;
typedef struct pkt sockaddr_u ;


 int KOD_RATE ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int ZERO (struct pkt) ;
 int handle_pkt (int,struct pkt*,struct pkt*,char*) ;

void
test_HandleKodRate(void)
{
 struct pkt rpkt;
 sockaddr_u host;
 int rpktl;

 ZERO(rpkt);
 ZERO(host);
 rpktl = KOD_RATE;
 TEST_ASSERT_EQUAL(1, handle_pkt(rpktl, &rpkt, &host, ""));
}
