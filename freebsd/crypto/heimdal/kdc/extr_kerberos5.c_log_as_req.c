
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rk_strpool {int dummy; } ;
typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef char* krb5_enctype ;
typedef int krb5_context ;
typedef int fixedstr ;
struct TYPE_4__ {size_t len; char** val; } ;
struct TYPE_5__ {int kdc_options; TYPE_1__ etype; } ;
typedef TYPE_2__ KDC_REQ_BODY ;


 int KDCOptions2int (int ) ;
 int asn1_KDCOptions_units () ;
 int free (char*) ;
 int kdc_log (int ,int *,int ,char*,...) ;
 scalar_t__ krb5_enctype_to_string (int ,char*,char**) ;
 char* rk_strpoolcollect (struct rk_strpool*) ;
 struct rk_strpool* rk_strpoolprintf (struct rk_strpool*,char*,...) ;
 int unparse_flags (int ,int ,char*,int) ;

__attribute__((used)) static void
log_as_req(krb5_context context,
    krb5_kdc_configuration *config,
    krb5_enctype cetype,
    krb5_enctype setype,
    const KDC_REQ_BODY *b)
{
    krb5_error_code ret;
    struct rk_strpool *p;
    char *str;
    size_t i;

    p = rk_strpoolprintf(((void*)0), "%s", "Client supported enctypes: ");

    for (i = 0; i < b->etype.len; i++) {
 ret = krb5_enctype_to_string(context, b->etype.val[i], &str);
 if (ret == 0) {
     p = rk_strpoolprintf(p, "%s", str);
     free(str);
 } else
     p = rk_strpoolprintf(p, "%d", b->etype.val[i]);
 if (p && i + 1 < b->etype.len)
     p = rk_strpoolprintf(p, ", ");
 if (p == ((void*)0)) {
     kdc_log(context, config, 0, "out of memory");
     return;
 }
    }
    if (p == ((void*)0))
 p = rk_strpoolprintf(p, "no encryption types");

    {
 char *cet;
 char *set;

 ret = krb5_enctype_to_string(context, cetype, &cet);
 if(ret == 0) {
     ret = krb5_enctype_to_string(context, setype, &set);
     if (ret == 0) {
  p = rk_strpoolprintf(p, ", using %s/%s", cet, set);
  free(set);
     }
     free(cet);
 }
 if (ret != 0)
     p = rk_strpoolprintf(p, ", using enctypes %d/%d",
     cetype, setype);
    }

    str = rk_strpoolcollect(p);
    kdc_log(context, config, 0, "%s", str);
    free(str);

    {
 char fixedstr[128];
 unparse_flags(KDCOptions2int(b->kdc_options), asn1_KDCOptions_units(),
        fixedstr, sizeof(fixedstr));
 if(*fixedstr)
     kdc_log(context, config, 0, "Requested flags: %s", fixedstr);
    }
}
