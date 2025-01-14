
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int EINVAL ;
 int memset (int*,int,int) ;

__attribute__((used)) static int
arcturus_get_allowed_feature_mask(struct smu_context *smu,
      uint32_t *feature_mask, uint32_t num)
{
 if (num > 2)
  return -EINVAL;


 memset(feature_mask, 0xFF, sizeof(uint32_t) * num);

 return 0;
}
