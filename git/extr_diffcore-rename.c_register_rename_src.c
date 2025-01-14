
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_rename_src {unsigned short score; struct diff_filepair* p; } ;
struct diff_filespec {int path; } ;
struct diff_filepair {unsigned short score; struct diff_filespec* one; } ;


 int ALLOC_GROW (struct diff_rename_src*,int,int ) ;
 int MOVE_ARRAY (struct diff_rename_src*,struct diff_rename_src*,int) ;
 struct diff_rename_src* rename_src ;
 int rename_src_alloc ;
 int rename_src_nr ;
 int strcmp (int ,int ) ;

__attribute__((used)) static struct diff_rename_src *register_rename_src(struct diff_filepair *p)
{
 int first, last;
 struct diff_filespec *one = p->one;
 unsigned short score = p->score;

 first = 0;
 last = rename_src_nr;
 while (last > first) {
  int next = first + ((last - first) >> 1);
  struct diff_rename_src *src = &(rename_src[next]);
  int cmp = strcmp(one->path, src->p->one->path);
  if (!cmp)
   return src;
  if (cmp < 0) {
   last = next;
   continue;
  }
  first = next+1;
 }


 ALLOC_GROW(rename_src, rename_src_nr + 1, rename_src_alloc);
 rename_src_nr++;
 if (first < rename_src_nr)
  MOVE_ARRAY(rename_src + first + 1, rename_src + first,
      rename_src_nr - first - 1);
 rename_src[first].p = p;
 rename_src[first].score = score;
 return &(rename_src[first]);
}
