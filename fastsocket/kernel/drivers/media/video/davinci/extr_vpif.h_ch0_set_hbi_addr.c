
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH0_BTM_STRT_ADD_HANC ;
 int VPIF_CH0_TOP_STRT_ADD_HANC ;
 int regw (unsigned long,int ) ;

__attribute__((used)) static inline void ch0_set_hbi_addr(unsigned long top_vbi,
 unsigned long btm_vbi, unsigned long a, unsigned long b)
{
 regw(top_vbi, VPIF_CH0_TOP_STRT_ADD_HANC);
 regw(btm_vbi, VPIF_CH0_BTM_STRT_ADD_HANC);
}
