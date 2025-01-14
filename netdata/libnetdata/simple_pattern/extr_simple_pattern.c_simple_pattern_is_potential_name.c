
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_pattern {scalar_t__ mode; struct simple_pattern* next; int * match; } ;
typedef int SIMPLE_PATTERN ;


 scalar_t__ SIMPLE_PATTERN_EXACT ;
 int scan_is_potential_name (struct simple_pattern*,int*,int*,int*) ;

extern int simple_pattern_is_potential_name(SIMPLE_PATTERN *p)
{
    int alpha=0, colon=0, wildcards=0;
    struct simple_pattern *root = (struct simple_pattern*)p;
    while (root != ((void*)0)) {
        if (root->match != ((void*)0)) {
            scan_is_potential_name(root, &alpha, &colon, &wildcards);
        }
        if (root->mode != SIMPLE_PATTERN_EXACT)
            wildcards = 1;
        root = root->next;
    }
    return (alpha || wildcards) && !colon;
}
