
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int item ;


 scalar_t__ FLAGS_SIZE (int *) ;
 int ITEM_get_cas (int *) ;
 scalar_t__ ITEM_suffix (int *) ;
 char* itoa_u32 (int,char*) ;
 char* itoa_u64 (int ,char*) ;

__attribute__((used)) static inline int make_ascii_get_suffix(char *suffix, item *it, bool return_cas, int nbytes) {
    char *p = suffix;
    *p = ' ';
    p++;
    if (FLAGS_SIZE(it) == 0) {
        *p = '0';
        p++;
    } else {
        p = itoa_u32(*((uint32_t *) ITEM_suffix(it)), p);
    }
    *p = ' ';
    p = itoa_u32(nbytes-2, p+1);

    if (return_cas) {
        *p = ' ';
        p = itoa_u64(ITEM_get_cas(it), p+1);
    }

    *p = '\r';
    *(p+1) = '\n';
    *(p+2) = '\0';
    return (p - suffix) + 2;
}
