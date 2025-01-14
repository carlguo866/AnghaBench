
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mtk_mdp_fmt {size_t flags; size_t pixelformat; } ;


 size_t ARRAY_SIZE (struct mtk_mdp_fmt const*) ;
 size_t MTK_MDP_FMT_FLAG_CAPTURE ;
 size_t MTK_MDP_FMT_FLAG_OUTPUT ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (size_t) ;
 struct mtk_mdp_fmt const* mtk_mdp_formats ;

__attribute__((used)) static const struct mtk_mdp_fmt *mtk_mdp_find_fmt(u32 pixelformat, u32 type)
{
 u32 i, flag;

 flag = V4L2_TYPE_IS_OUTPUT(type) ? MTK_MDP_FMT_FLAG_OUTPUT :
        MTK_MDP_FMT_FLAG_CAPTURE;

 for (i = 0; i < ARRAY_SIZE(mtk_mdp_formats); ++i) {
  if (!(mtk_mdp_formats[i].flags & flag))
   continue;
  if (mtk_mdp_formats[i].pixelformat == pixelformat)
   return &mtk_mdp_formats[i];
 }
 return ((void*)0);
}
