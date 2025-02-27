
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct storm_defs {size_t sem_fast_mem_addr; } ;
struct fw_info_location {int size; size_t grc_addr; } ;
struct fw_info {int size; size_t grc_addr; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef int fw_info_location ;


 size_t BYTES_IN_DWORD ;
 size_t BYTES_TO_DWORDS (int) ;
 size_t DWORDS_TO_BYTES (int ) ;
 scalar_t__ ECORE_IS_E5 (int ) ;
 int OSAL_MEMSET (struct fw_info_location*,int ,int) ;
 size_t SEM_FAST_REG_INT_RAM ;
 int SEM_FAST_REG_INT_RAM_SIZE_BB_K2 ;
 int SEM_FAST_REG_INT_RAM_SIZE_E5 ;
 size_t ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,size_t) ;
 struct storm_defs* s_storm_defs ;

__attribute__((used)) static void ecore_read_fw_info(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u8 storm_id,
          struct fw_info *fw_info)
{
 struct storm_defs *storm = &s_storm_defs[storm_id];
 struct fw_info_location fw_info_location;
 u32 addr, i, *dest;

 OSAL_MEMSET(&fw_info_location, 0, sizeof(fw_info_location));
 OSAL_MEMSET(fw_info, 0, sizeof(*fw_info));




 addr = storm->sem_fast_mem_addr + SEM_FAST_REG_INT_RAM +
  (ECORE_IS_E5(p_hwfn->p_dev) ?
   DWORDS_TO_BYTES(SEM_FAST_REG_INT_RAM_SIZE_E5) :
   DWORDS_TO_BYTES(SEM_FAST_REG_INT_RAM_SIZE_BB_K2))
  - sizeof(fw_info_location);

 dest = (u32 *)&fw_info_location;

 for (i = 0; i < BYTES_TO_DWORDS(sizeof(fw_info_location)); i++, addr += BYTES_IN_DWORD)
  dest[i] = ecore_rd(p_hwfn, p_ptt, addr);


 if (fw_info_location.size > 0 && fw_info_location.size <= sizeof(*fw_info)) {
  addr = fw_info_location.grc_addr;
  dest = (u32 *)fw_info;
  for (i = 0; i < BYTES_TO_DWORDS(fw_info_location.size); i++, addr += BYTES_IN_DWORD)
   dest[i] = ecore_rd(p_hwfn, p_ptt, addr);
 }
}
