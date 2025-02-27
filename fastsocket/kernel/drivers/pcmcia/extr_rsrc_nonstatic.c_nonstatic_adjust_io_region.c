
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {unsigned long base; int num; struct resource_map* next; } ;
struct socket_data {struct resource_map io_db; } ;
struct resource {int dummy; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;


 int ENOMEM ;
 int adjust_resource (struct resource*,unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rsrc_mutex ;

__attribute__((used)) static int nonstatic_adjust_io_region(struct resource *res, unsigned long r_start,
          unsigned long r_end, struct pcmcia_socket *s)
{
 struct resource_map *m;
 struct socket_data *s_data = s->resource_data;
 int ret = -ENOMEM;

 mutex_lock(&rsrc_mutex);
 for (m = s_data->io_db.next; m != &s_data->io_db; m = m->next) {
  unsigned long start = m->base;
  unsigned long end = m->base + m->num - 1;

  if (start > r_start || r_end > end)
   continue;

  ret = adjust_resource(res, r_start, r_end - r_start + 1);
  break;
 }
 mutex_unlock(&rsrc_mutex);

 return ret;
}
