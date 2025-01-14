
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ dmu_object_type_t ;


 scalar_t__ DMU_OT_SA ;
 int DN_OLD_MAX_BONUSLEN ;
 int MIN (int,int ) ;
 int SPA_BLKPTRSHIFT ;

__attribute__((used)) static inline uint8_t
deduce_nblkptr(dmu_object_type_t bonus_type, uint64_t bonus_size)
{
 if (bonus_type == DMU_OT_SA) {
  return (1);
 } else {
  return (1 +
      ((DN_OLD_MAX_BONUSLEN -
      MIN(DN_OLD_MAX_BONUSLEN, bonus_size)) >> SPA_BLKPTRSHIFT));
 }
}
