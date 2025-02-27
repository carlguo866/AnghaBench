
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct TYPE_2__ {int cim_la_size; int chip; } ;
struct adapter {TYPE_1__ params; } ;
typedef int cfg ;


 int UP_UP_DBG_LA_CFG_A ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 scalar_t__ is_t6 (int ) ;
 int memcpy (char*,int *,int) ;
 int t4_cim_read (struct adapter*,int ,int,int *) ;
 int t4_cim_read_la (struct adapter*,int *,int *) ;

int cudbg_collect_cim_la(struct cudbg_init *pdbg_init,
    struct cudbg_buffer *dbg_buff,
    struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 int size, rc;
 u32 cfg = 0;

 if (is_t6(padap->params.chip)) {
  size = padap->params.cim_la_size / 10 + 1;
  size *= 10 * sizeof(u32);
 } else {
  size = padap->params.cim_la_size / 8;
  size *= 8 * sizeof(u32);
 }

 size += sizeof(cfg);
 rc = cudbg_get_buff(pdbg_init, dbg_buff, size, &temp_buff);
 if (rc)
  return rc;

 rc = t4_cim_read(padap, UP_UP_DBG_LA_CFG_A, 1, &cfg);
 if (rc) {
  cudbg_err->sys_err = rc;
  cudbg_put_buff(pdbg_init, &temp_buff);
  return rc;
 }

 memcpy((char *)temp_buff.data, &cfg, sizeof(cfg));
 rc = t4_cim_read_la(padap,
       (u32 *)((char *)temp_buff.data + sizeof(cfg)),
       ((void*)0));
 if (rc < 0) {
  cudbg_err->sys_err = rc;
  cudbg_put_buff(pdbg_init, &temp_buff);
  return rc;
 }
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
