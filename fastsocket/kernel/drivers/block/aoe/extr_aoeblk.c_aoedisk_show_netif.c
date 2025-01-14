
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct gendisk {struct aoedev* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aoetgt {struct aoeif* ifs; } ;
struct aoeif {struct net_device* nd; } ;
struct aoedev {int ntargets; struct aoetgt** targets; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (struct net_device**) ;
 int NAOEIFS ;
 scalar_t__ PAGE_SIZE ;
 struct gendisk* dev_to_disk (struct device*) ;
 int memset (struct net_device**,int ,int) ;
 int snprintf (char*,scalar_t__,char*,...) ;

__attribute__((used)) static ssize_t aoedisk_show_netif(struct device *dev,
      struct device_attribute *attr, char *page)
{
 struct gendisk *disk = dev_to_disk(dev);
 struct aoedev *d = disk->private_data;
 struct net_device *nds[8], **nd, **nnd, **ne;
 struct aoetgt **t, **te;
 struct aoeif *ifp, *e;
 char *p;

 memset(nds, 0, sizeof nds);
 nd = nds;
 ne = nd + ARRAY_SIZE(nds);
 t = d->targets;
 te = t + d->ntargets;
 for (; t < te && *t; t++) {
  ifp = (*t)->ifs;
  e = ifp + NAOEIFS;
  for (; ifp < e && ifp->nd; ifp++) {
   for (nnd = nds; nnd < nd; nnd++)
    if (*nnd == ifp->nd)
     break;
   if (nnd == nd && nd != ne)
    *nd++ = ifp->nd;
  }
 }

 ne = nd;
 nd = nds;
 if (*nd == ((void*)0))
  return snprintf(page, PAGE_SIZE, "none\n");
 for (p = page; nd < ne; nd++)
  p += snprintf(p, PAGE_SIZE - (p-page), "%s%s",
   p == page ? "" : ",", (*nd)->name);
 p += snprintf(p, PAGE_SIZE - (p-page), "\n");
 return p-page;
}
