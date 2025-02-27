
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esas2r_target {scalar_t__ target_state; int virt_targ_id; int identifier_len; int flags; int identifier; int phys_targ_id; scalar_t__ inter_block; scalar_t__ inter_byte; scalar_t__ block_size; } ;
struct esas2r_disc_context {scalar_t__ curr_virt_id; int curr_phys_id; } ;
struct esas2r_adapter {struct esas2r_target* targetdb; } ;


 scalar_t__ ESAS2R_MAX_TARGETS ;
 int TF_PASS_THRU ;
 int TF_USED ;
 scalar_t__ TS_PRESENT ;
 int esas2r_bugon () ;
 int esas2r_hdebug (char*,int ,int,int ) ;
 struct esas2r_target* esas2r_targ_db_find_by_ident (struct esas2r_adapter*,int*,int) ;
 int esas2r_targ_get_id (struct esas2r_target*,struct esas2r_adapter*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int memcpy (int ,int*,int) ;

struct esas2r_target *esas2r_targ_db_add_pthru(struct esas2r_adapter *a,
            struct esas2r_disc_context *dc,
            u8 *ident,
            u8 ident_len)
{
 struct esas2r_target *t;

 esas2r_trace_enter();

 if (dc->curr_virt_id >= ESAS2R_MAX_TARGETS) {
  esas2r_bugon();
  esas2r_trace_exit();
  return ((void*)0);
 }



 t = esas2r_targ_db_find_by_ident(a, ident, ident_len);

 if (t == ((void*)0)) {
  t = a->targetdb + dc->curr_virt_id;

  if (ident_len > sizeof(t->identifier)
      || t->target_state == TS_PRESENT) {
   esas2r_trace_exit();
   return ((void*)0);
  }
 }

 esas2r_hdebug("add PT; T:%d, V:%d, P:%d", esas2r_targ_get_id(t, a),
        dc->curr_virt_id,
        dc->curr_phys_id);

 t->block_size = 0;
 t->inter_byte = 0;
 t->inter_block = 0;
 t->virt_targ_id = dc->curr_virt_id;
 t->phys_targ_id = dc->curr_phys_id;
 t->identifier_len = ident_len;

 memcpy(t->identifier, ident, ident_len);

 t->flags |= TF_PASS_THRU | TF_USED;

 t->target_state = TS_PRESENT;

 return t;
}
