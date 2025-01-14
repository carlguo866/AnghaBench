
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct bstr {scalar_t__ len; } ;
typedef struct bstr bstr ;


 long long BSTR_P (struct bstr) ;
 int NAMECH ;
 int VAL (void*) ;
 struct bstr bstr_cut (struct bstr,int) ;
 scalar_t__ bstr_eatstart0 (struct bstr*,char*) ;
 struct bstr bstr_splice (struct bstr,int ,int) ;
 scalar_t__ bstr_startswith0 (struct bstr,char*) ;
 int bstrspn (struct bstr,int ) ;
 long long bstrtoll (struct bstr,struct bstr*,int ) ;
 int mp_warn (struct mp_log*,char*,long long,long long) ;
 int obj_settings_list_find_by_label (int ,struct bstr) ;
 int obj_settings_list_num_items (int ) ;

__attribute__((used)) static int parse_obj_settings_del(struct mp_log *log, struct bstr opt_name,
                                  struct bstr *param, void *dst, bool *mark_del)
{
    bstr s = *param;
    if (bstr_eatstart0(&s, "@")) {


        int idx = bstrspn(s, NAMECH);
        bstr label = bstr_splice(s, 0, idx);
        s = bstr_cut(s, idx);
        if (bstr_startswith0(s, ":"))
            return 0;
        if (dst) {
            int label_index = obj_settings_list_find_by_label(VAL(dst), label);
            if (label_index >= 0) {
                mark_del[label_index] = 1;
            } else {
                mp_warn(log, "Option %.*s: item label @%.*s not found.\n",
                        BSTR_P(opt_name), BSTR_P(label));
            }
        }
        *param = s;
        return 1;
    }

    bstr rest;
    long long id = bstrtoll(s, &rest, 0);
    if (rest.len == s.len)
        return 0;

    if (dst) {
        int num = obj_settings_list_num_items(VAL(dst));
        if (id < 0)
            id = num + id;

        if (id >= 0 && id < num) {
            mark_del[id] = 1;
        } else {
            mp_warn(log, "Option %.*s: Index %lld is out of range.\n",
                    BSTR_P(opt_name), id);
        }
    }

    *param = rest;
    return 1;
}
