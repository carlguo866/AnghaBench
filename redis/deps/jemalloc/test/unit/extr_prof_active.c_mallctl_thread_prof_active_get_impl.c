
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mallctl_bool_get (char*,int,char const*,int) ;

__attribute__((used)) static void
mallctl_thread_prof_active_get_impl(bool thread_prof_active_old_expected,
    const char *func, int line) {
 mallctl_bool_get("thread.prof.active", thread_prof_active_old_expected,
     func, line);
}
