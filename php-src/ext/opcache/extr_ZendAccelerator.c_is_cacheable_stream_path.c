
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char const*,char*,int) ;

__attribute__((used)) static inline int is_cacheable_stream_path(const char *filename)
{
 return memcmp(filename, "file://", sizeof("file://") - 1) == 0 ||
        memcmp(filename, "phar://", sizeof("phar://") - 1) == 0;
}
