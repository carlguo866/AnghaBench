
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transmit_sc {int dummy; } ;
typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;


 int conf_offset_val (int) ;
 int wpa_drv_create_transmit_sc (void*,struct transmit_sc*,int ) ;

__attribute__((used)) static int
wpas_create_transmit_sc(void *wpa_s, struct transmit_sc *sc,
   enum confidentiality_offset co)
{
 return wpa_drv_create_transmit_sc(wpa_s, sc, conf_offset_val(co));
}
