
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cudbg_pbt_tables {int * pbt_data; int * lrf_table; int * pbt_static; int * pbt_dynamic; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct adapter {int dummy; } ;


 scalar_t__ CUDBG_CHAC_PBT_ADDR ;
 scalar_t__ CUDBG_CHAC_PBT_DATA ;
 scalar_t__ CUDBG_CHAC_PBT_LRF ;
 int CUDBG_LRF_ENTRIES ;
 int CUDBG_PBT_DATA_ENTRIES ;
 int CUDBG_PBT_DYNAMIC_ENTRIES ;
 int CUDBG_PBT_STATIC_ENTRIES ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_cim_read (struct adapter*,scalar_t__,int,int *) ;

int cudbg_collect_pbt_tables(struct cudbg_init *pdbg_init,
        struct cudbg_buffer *dbg_buff,
        struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 struct cudbg_pbt_tables *pbt;
 int i, rc;
 u32 addr;

 rc = cudbg_get_buff(pdbg_init, dbg_buff,
       sizeof(struct cudbg_pbt_tables),
       &temp_buff);
 if (rc)
  return rc;

 pbt = (struct cudbg_pbt_tables *)temp_buff.data;

 addr = CUDBG_CHAC_PBT_ADDR;
 for (i = 0; i < CUDBG_PBT_DYNAMIC_ENTRIES; i++) {
  rc = t4_cim_read(padap, addr + (i * 4), 1,
     &pbt->pbt_dynamic[i]);
  if (rc) {
   cudbg_err->sys_err = rc;
   cudbg_put_buff(pdbg_init, &temp_buff);
   return rc;
  }
 }



 addr = CUDBG_CHAC_PBT_ADDR + (1 << 6);
 for (i = 0; i < CUDBG_PBT_STATIC_ENTRIES; i++) {
  rc = t4_cim_read(padap, addr + (i * 4), 1,
     &pbt->pbt_static[i]);
  if (rc) {
   cudbg_err->sys_err = rc;
   cudbg_put_buff(pdbg_init, &temp_buff);
   return rc;
  }
 }


 addr = CUDBG_CHAC_PBT_LRF;
 for (i = 0; i < CUDBG_LRF_ENTRIES; i++) {
  rc = t4_cim_read(padap, addr + (i * 4), 1,
     &pbt->lrf_table[i]);
  if (rc) {
   cudbg_err->sys_err = rc;
   cudbg_put_buff(pdbg_init, &temp_buff);
   return rc;
  }
 }


 addr = CUDBG_CHAC_PBT_DATA;
 for (i = 0; i < CUDBG_PBT_DATA_ENTRIES; i++) {
  rc = t4_cim_read(padap, addr + (i * 4), 1,
     &pbt->pbt_data[i]);
  if (rc) {
   cudbg_err->sys_err = rc;
   cudbg_put_buff(pdbg_init, &temp_buff);
   return rc;
  }
 }
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
