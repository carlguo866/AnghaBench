
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_obj_settings {int enabled; scalar_t__* attribs; scalar_t__ name; } ;


 char* talloc_asprintf_append (char*,char*,...) ;
 char* talloc_strdup (int *,char*) ;
 char* talloc_strdup_append (char*,char*) ;

__attribute__((used)) static char *print_obj_osd_list(struct m_obj_settings *list)
{
    char *res = ((void*)0);
    for (int n = 0; list && list[n].name; n++) {
        res = talloc_asprintf_append(res, "%s [", list[n].name);
        for (int i = 0; list[n].attribs && list[n].attribs[i]; i += 2) {
            res = talloc_asprintf_append(res, "%s%s=%s", i > 0 ? " " : "",
                                         list[n].attribs[i],
                                         list[n].attribs[i + 1]);
        }
        res = talloc_asprintf_append(res, "]");
        if (!list[n].enabled)
            res = talloc_strdup_append(res, " (disabled)");
        res = talloc_strdup_append(res, "\n");
    }
    if (!res)
        res = talloc_strdup(((void*)0), "(empty)");
    return res;
}
