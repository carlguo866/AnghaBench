
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
typedef int sint ;


 int BIT (int) ;
 scalar_t__ WIFI_MGT_TYPE ;

__attribute__((used)) static void construct_ctr_preload(
 u8 *ctr_preload,
 sint a4_exists,
 sint qc_exists,
 u8 *mpdu,
 u8 *pn_vector,
 sint c,
 uint frtype
)
{
 sint i = 0;

 for (i = 0; i < 16; i++)
  ctr_preload[i] = 0x00;
 i = 0;

 ctr_preload[0] = 0x01;
 if (qc_exists && a4_exists)
  ctr_preload[1] = mpdu[30] & 0x0f;
 if (qc_exists && !a4_exists)
  ctr_preload[1] = mpdu[24] & 0x0f;


 if (frtype == WIFI_MGT_TYPE)
  ctr_preload[1] |= BIT(4);

 for (i = 2; i < 8; i++)
  ctr_preload[i] = mpdu[i + 8];




 for (i = 8; i < 14; i++)
  ctr_preload[i] = pn_vector[13 - i];

 ctr_preload[14] = (unsigned char) (c / 256);
 ctr_preload[15] = (unsigned char) (c % 256);
}
