
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int parse_if_then_else(const char **string) {
    const char *s = *string;


    if(s[0] == '?') {
        *string = &s[1];
        return 1;
    }

    return 0;
}
