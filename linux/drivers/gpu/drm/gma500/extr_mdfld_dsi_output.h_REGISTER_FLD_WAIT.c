
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_device {int dummy; } ;


 scalar_t__ FLD_GET (int ,int,int) ;
 int REG_READ (scalar_t__) ;

__attribute__((used)) static inline int REGISTER_FLD_WAIT(struct drm_device *dev, u32 reg,
  u32 val, int start, int end)
{
 int t = 100000;

 while (FLD_GET(REG_READ(reg), start, end) != val) {
  if (--t == 0)
   return 1;
 }

 return 0;
}
