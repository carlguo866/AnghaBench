
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resync_pages {int * pages; } ;


 int RESYNC_PAGES ;
 int get_page (int ) ;

__attribute__((used)) static inline void resync_get_all_pages(struct resync_pages *rp)
{
 int i;

 for (i = 0; i < RESYNC_PAGES; i++)
  get_page(rp->pages[i]);
}
