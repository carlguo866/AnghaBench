
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {unsigned long fcull_percent; unsigned long frun_percent; } ;


 int EINVAL ;
 int _enter (char*,char*) ;
 int cachefiles_daemon_range_error (struct cachefiles_cache*,char*) ;
 unsigned long simple_strtoul (char*,char**,int) ;

__attribute__((used)) static int cachefiles_daemon_frun(struct cachefiles_cache *cache, char *args)
{
 unsigned long frun;

 _enter(",%s", args);

 if (!*args)
  return -EINVAL;

 frun = simple_strtoul(args, &args, 10);
 if (args[0] != '%' || args[1] != '\0')
  return -EINVAL;

 if (frun <= cache->fcull_percent || frun >= 100)
  return cachefiles_daemon_range_error(cache, args);

 cache->frun_percent = frun;
 return 0;
}
