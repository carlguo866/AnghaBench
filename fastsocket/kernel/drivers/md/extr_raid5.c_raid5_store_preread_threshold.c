
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {unsigned long max_nr_stripes; unsigned long bypass_threshold; } ;
struct mddev {struct r5conf* private; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 size_t PAGE_SIZE ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t
raid5_store_preread_threshold(struct mddev *mddev, const char *page, size_t len)
{
 struct r5conf *conf = mddev->private;
 unsigned long new;
 if (len >= PAGE_SIZE)
  return -EINVAL;
 if (!conf)
  return -ENODEV;

 if (kstrtoul(page, 10, &new))
  return -EINVAL;
 if (new > conf->max_nr_stripes)
  return -EINVAL;
 conf->bypass_threshold = new;
 return len;
}
