
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_13__ {int pc; } ;
struct TYPE_12__ {scalar_t__ esil; int cpu; } ;
struct TYPE_11__ {int size; } ;
typedef int RAnalOpMask ;
typedef TYPE_1__ RAnalOp ;
typedef TYPE_2__ RAnal ;
typedef TYPE_3__ CPU_MODEL ;


 int CPU_CONST_PARAM ;
 int avr_op_analyze (TYPE_2__*,TYPE_1__*,scalar_t__,int const*,int,TYPE_3__*) ;
 int const_by_name (TYPE_3__*,int ,char*) ;
 scalar_t__ const_get_value (int ) ;
 TYPE_3__* get_cpu_model (int ) ;
 int r_anal_esil_reg_write (scalar_t__,char*,scalar_t__) ;

__attribute__((used)) static int avr_op(RAnal *anal, RAnalOp *op, ut64 addr, const ut8 *buf, int len, RAnalOpMask mask) {
 CPU_MODEL *cpu;
 ut64 offset;


 if (!op) {
  return 2;
 }


 cpu = get_cpu_model (anal->cpu);


 if (anal->esil) {
  offset = 0;
  r_anal_esil_reg_write (anal->esil, "_prog", offset);

  offset += (1 << cpu->pc);
  r_anal_esil_reg_write (anal->esil, "_io", offset);

  offset += const_get_value (const_by_name (cpu, CPU_CONST_PARAM, "sram_start"));
  r_anal_esil_reg_write (anal->esil, "_sram", offset);

  offset += const_get_value (const_by_name (cpu, CPU_CONST_PARAM, "sram_size"));
  r_anal_esil_reg_write (anal->esil, "_eeprom", offset);

  offset += const_get_value (const_by_name (cpu, CPU_CONST_PARAM, "eeprom_size"));
  r_anal_esil_reg_write (anal->esil, "_page", offset);
 }

 avr_op_analyze (anal, op, addr, buf, len, cpu);

 return op->size;
}
