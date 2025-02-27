
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PG_ANY ;
 int PG_UNSAFE_CLEAR ;
 struct memory_bitmap* forbidden_pages_map ;
 struct memory_bitmap* free_pages_map ;
 int kfree (struct memory_bitmap*) ;
 struct memory_bitmap* kzalloc (int,int ) ;
 int mark_nosave_pages (struct memory_bitmap*) ;
 int memory_bm_create (struct memory_bitmap*,int ,int ) ;
 int memory_bm_free (struct memory_bitmap*,int ) ;
 int pr_debug (char*) ;

int create_basic_memory_bitmaps(void)
{
 struct memory_bitmap *bm1, *bm2;
 int error = 0;

 BUG_ON(forbidden_pages_map || free_pages_map);

 bm1 = kzalloc(sizeof(struct memory_bitmap), GFP_KERNEL);
 if (!bm1)
  return -ENOMEM;

 error = memory_bm_create(bm1, GFP_KERNEL, PG_ANY);
 if (error)
  goto Free_first_object;

 bm2 = kzalloc(sizeof(struct memory_bitmap), GFP_KERNEL);
 if (!bm2)
  goto Free_first_bitmap;

 error = memory_bm_create(bm2, GFP_KERNEL, PG_ANY);
 if (error)
  goto Free_second_object;

 forbidden_pages_map = bm1;
 free_pages_map = bm2;
 mark_nosave_pages(forbidden_pages_map);

 pr_debug("PM: Basic memory bitmaps created\n");

 return 0;

 Free_second_object:
 kfree(bm2);
 Free_first_bitmap:
  memory_bm_free(bm1, PG_UNSAFE_CLEAR);
 Free_first_object:
 kfree(bm1);
 return -ENOMEM;
}
