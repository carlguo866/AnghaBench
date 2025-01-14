
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t meths_count; TYPE_2__* meths; } ;
typedef TYPE_1__ custom_ext_methods ;
struct TYPE_6__ {scalar_t__ add_cb; struct TYPE_6__* parse_arg; struct TYPE_6__* add_arg; } ;
typedef TYPE_2__ custom_ext_method ;


 int OPENSSL_free (TYPE_2__*) ;
 scalar_t__ custom_ext_add_old_cb_wrap ;

void custom_exts_free(custom_ext_methods *exts)
{
    size_t i;
    custom_ext_method *meth;

    for (i = 0, meth = exts->meths; i < exts->meths_count; i++, meth++) {
        if (meth->add_cb != custom_ext_add_old_cb_wrap)
            continue;


        OPENSSL_free(meth->add_arg);
        OPENSSL_free(meth->parse_arg);
    }
    OPENSSL_free(exts->meths);
}
