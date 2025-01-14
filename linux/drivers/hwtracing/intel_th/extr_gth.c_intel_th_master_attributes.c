
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct attribute {char* name; int mode; } ;
struct TYPE_5__ {struct attribute attr; int store; int show; } ;
struct master_attribute {int master; struct gth_device* gth; TYPE_1__ attr; } ;
struct TYPE_6__ {char* name; struct attribute** attrs; } ;
struct gth_device {TYPE_2__ master_group; TYPE_3__* dev; } ;
struct TYPE_7__ {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUSR ;
 int TH_CONFIGURABLE_MASTERS ;
 char* devm_kasprintf (TYPE_3__*,int ,char*,int,char*) ;
 void* devm_kcalloc (TYPE_3__*,int,int,int ) ;
 int master_attr_show ;
 int master_attr_store ;
 int sysfs_attr_init (struct attribute*) ;
 int sysfs_create_group (int *,TYPE_2__*) ;

__attribute__((used)) static int intel_th_master_attributes(struct gth_device *gth)
{
 struct master_attribute *master_attrs;
 struct attribute **attrs;
 int i, nattrs = TH_CONFIGURABLE_MASTERS + 2;

 attrs = devm_kcalloc(gth->dev, nattrs, sizeof(void *), GFP_KERNEL);
 if (!attrs)
  return -ENOMEM;

 master_attrs = devm_kcalloc(gth->dev, nattrs,
        sizeof(struct master_attribute),
        GFP_KERNEL);
 if (!master_attrs)
  return -ENOMEM;

 for (i = 0; i < TH_CONFIGURABLE_MASTERS + 1; i++) {
  char *name;

  name = devm_kasprintf(gth->dev, GFP_KERNEL, "%d%s", i,
          i == TH_CONFIGURABLE_MASTERS ? "+" : "");
  if (!name)
   return -ENOMEM;

  master_attrs[i].attr.attr.name = name;
  master_attrs[i].attr.attr.mode = S_IRUGO | S_IWUSR;
  master_attrs[i].attr.show = master_attr_show;
  master_attrs[i].attr.store = master_attr_store;

  sysfs_attr_init(&master_attrs[i].attr.attr);
  attrs[i] = &master_attrs[i].attr.attr;

  master_attrs[i].gth = gth;
  master_attrs[i].master = i;
 }

 gth->master_group.name = "masters";
 gth->master_group.attrs = attrs;

 return sysfs_create_group(&gth->dev->kobj, &gth->master_group);
}
