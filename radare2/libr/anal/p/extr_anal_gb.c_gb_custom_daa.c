
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_9__ {TYPE_1__* anal; } ;
struct TYPE_8__ {int reg; } ;
typedef TYPE_2__ RAnalEsil ;


 int R_FREE (char*) ;
 int r_anal_esil_get_parm (TYPE_2__*,char*,scalar_t__*) ;
 char* r_anal_esil_pop (TYPE_2__*) ;
 int r_anal_esil_pushnum (TYPE_2__*,int) ;
 int r_anal_esil_reg_read (TYPE_2__*,char*,scalar_t__*,int *) ;

__attribute__((used)) static bool gb_custom_daa (RAnalEsil *esil) {
 if (!esil || !esil->anal || !esil->anal->reg) {
  return 0;
 }
 char *v = r_anal_esil_pop(esil);
 ut64 n;
 if (!v || !r_anal_esil_get_parm(esil, v, &n)) {
  return 0;
 }
 R_FREE (v);
 ut8 val = (ut8)n;
 r_anal_esil_reg_read (esil, "H", &n, ((void*)0));
 const ut8 H = (ut8)n;
 r_anal_esil_reg_read (esil, "C", &n, ((void*)0));
 const ut8 C = (ut8)n;
 r_anal_esil_reg_read (esil, "N", &n, ((void*)0));
 if (n) {
  if (C) {
   val = (val - 0x60) & 0xff;
  }
  if (H) {
   val = (val - 0x06) & 0xff;
  }
 } else {
  if (C || (val > 0x99)) {
   val = (val + 0x60) & 0xff;
  }
  if (H || ((val & 0x0f) > 0x09)) {
   val += 0x06;
  };
 }
 return r_anal_esil_pushnum(esil, val);
}
