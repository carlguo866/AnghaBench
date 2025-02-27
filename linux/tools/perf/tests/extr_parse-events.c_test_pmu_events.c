
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct evlist_test {char* name; int check; int id; } ;
struct dirent {char* d_name; } ;
typedef int name ;
typedef int DIR ;


 int NAME_MAX ;
 int PATH_MAX ;
 int closedir (int *) ;
 int * opendir (char*) ;
 int pr_debug (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,...) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strchr (char*,char) ;
 char* sysfs__mountpoint () ;
 int test__checkevent_pmu_events ;
 int test__checkevent_pmu_events_mix ;
 int test_event (struct evlist_test*) ;

__attribute__((used)) static int test_pmu_events(void)
{
 struct stat st;
 char path[PATH_MAX];
 struct dirent *ent;
 DIR *dir;
 int ret;

 snprintf(path, PATH_MAX, "%s/bus/event_source/devices/cpu/events/",
   sysfs__mountpoint());

 ret = stat(path, &st);
 if (ret) {
  pr_debug("omitting PMU cpu events tests\n");
  return 0;
 }

 dir = opendir(path);
 if (!dir) {
  pr_debug("can't open pmu event dir");
  return -1;
 }

 while (!ret && (ent = readdir(dir))) {
  struct evlist_test e = { .id = 0, };
  char name[2 * NAME_MAX + 1 + 12 + 3];


  if (strchr(ent->d_name, '.'))
   continue;

  snprintf(name, sizeof(name), "cpu/event=%s/u", ent->d_name);

  e.name = name;
  e.check = test__checkevent_pmu_events;

  ret = test_event(&e);
  if (ret)
   break;
  snprintf(name, sizeof(name), "%s:u,cpu/event=%s/u", ent->d_name, ent->d_name);
  e.name = name;
  e.check = test__checkevent_pmu_events_mix;
  ret = test_event(&e);
 }

 closedir(dir);
 return ret;
}
