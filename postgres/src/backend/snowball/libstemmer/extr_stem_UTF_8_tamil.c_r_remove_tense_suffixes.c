
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SN_env {int* B; int c; } ;


 int r_remove_tense_suffix (struct SN_env*) ;

__attribute__((used)) static int r_remove_tense_suffixes(struct SN_env * z) {
    z->B[0] = 1;
    while(1) {
        int c1 = z->c;
        if (!(z->B[0])) goto lab0;
        { int c2 = z->c;
            { int ret = r_remove_tense_suffix(z);
                if (ret == 0) goto lab1;
                if (ret < 0) return ret;
            }
        lab1:
            z->c = c2;
        }
        continue;
    lab0:
        z->c = c1;
        break;
    }
    return 1;
}
