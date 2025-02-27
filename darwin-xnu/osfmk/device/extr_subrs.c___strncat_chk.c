
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __improbable (int) ;
 int panic (char*,char*,char const*,size_t,size_t,size_t) ;
 size_t strlen (char*) ;
 char* strncat (char*,char const*,size_t) ;
 size_t strnlen (char const*,size_t) ;

char *
__strncat_chk (char *restrict dst, const char *restrict src,
               size_t len, size_t chk_size)
{
    size_t len1 = strlen(dst);
    size_t len2 = strnlen(src, len);
    if (__improbable (chk_size < len1 + len2 + 1)) {
        panic("__strncat_chk object size check failed: dst %p, src %p, (%zu < %zu + %zu + 1)", dst, src, chk_size, len1, len2);
    }
    return strncat(dst, src, len);
}
