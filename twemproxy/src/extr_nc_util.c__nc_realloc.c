
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int LOG_VVERB ;
 int log_debug (int ,char*,size_t,void*,char const*,int) ;
 int log_error (char*,size_t,char const*,int) ;
 void* realloc (void*,size_t) ;

void *
_nc_realloc(void *ptr, size_t size, const char *name, int line)
{
    void *p;

    ASSERT(size != 0);

    p = realloc(ptr, size);
    if (p == ((void*)0)) {
        log_error("realloc(%zu) failed @ %s:%d", size, name, line);
    } else {
        log_debug(LOG_VVERB, "realloc(%zu) at %p @ %s:%d", size, p, name, line);
    }

    return p;
}
