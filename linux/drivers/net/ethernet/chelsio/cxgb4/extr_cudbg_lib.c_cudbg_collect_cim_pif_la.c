
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_cim_pif_la {int size; scalar_t__ data; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct adapter {int dummy; } ;


 int CIM_PIFLA_SIZE ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_cim_read_pif_la (struct adapter*,int *,int *,int *,int *) ;

int cudbg_collect_cim_pif_la(struct cudbg_init *pdbg_init,
        struct cudbg_buffer *dbg_buff,
        struct cudbg_error *cudbg_err)
{
 struct cudbg_cim_pif_la *cim_pif_la_buff;
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 int size, rc;

 size = sizeof(struct cudbg_cim_pif_la) +
        2 * CIM_PIFLA_SIZE * 6 * sizeof(u32);
 rc = cudbg_get_buff(pdbg_init, dbg_buff, size, &temp_buff);
 if (rc)
  return rc;

 cim_pif_la_buff = (struct cudbg_cim_pif_la *)temp_buff.data;
 cim_pif_la_buff->size = CIM_PIFLA_SIZE;
 t4_cim_read_pif_la(padap, (u32 *)cim_pif_la_buff->data,
      (u32 *)cim_pif_la_buff->data + 6 * CIM_PIFLA_SIZE,
      ((void*)0), ((void*)0));
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
