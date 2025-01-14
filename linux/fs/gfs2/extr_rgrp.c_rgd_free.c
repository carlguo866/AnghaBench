
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gfs2_rgrpd {scalar_t__ rd_reserved; scalar_t__ rd_free_clone; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; } ;


 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static inline u32 rgd_free(struct gfs2_rgrpd *rgd, struct gfs2_blkreserv *rs)
{
 u32 tot_reserved, tot_free;

 if (WARN_ON_ONCE(rgd->rd_reserved < rs->rs_free))
  return 0;
 tot_reserved = rgd->rd_reserved - rs->rs_free;

 if (rgd->rd_free_clone < tot_reserved)
  tot_reserved = 0;

 tot_free = rgd->rd_free_clone - tot_reserved;

 return tot_free;
}
