
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DBGDIDR_WRPS_NUM (int ) ;
 int cp14_dbgdidr_get () ;

__attribute__((used)) static __inline uint32_t
dbg_get_wrp_num(void)
{
 uint32_t dbg_didr;

 dbg_didr = cp14_dbgdidr_get();

 return (DBGDIDR_WRPS_NUM(dbg_didr));
}
