
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct remove_options {int kvno_integer; int enctype_string; int principal_string; } ;
typedef int * krb5_principal ;
struct TYPE_4__ {int keytype; } ;
struct TYPE_5__ {int vno; TYPE_1__ keyblock; int * principal; } ;
typedef TYPE_2__ krb5_keytab_entry ;
typedef int * krb5_keytab ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;


 int EINVAL ;
 int context ;
 int krb5_free_principal (int ,int *) ;
 int krb5_kt_close (int ,int *) ;
 int krb5_kt_remove_entry (int ,int *,TYPE_2__*) ;
 int krb5_parse_name (int ,int ,int **) ;
 int krb5_string_to_enctype (int ,int ,int*) ;
 int krb5_warn (int ,int,char*,...) ;
 int krb5_warnx (int ,char*) ;
 int * ktutil_open_keytab () ;
 int sscanf (int ,char*,int*) ;

int
kt_remove(struct remove_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_keytab_entry entry;
    krb5_keytab keytab;
    krb5_principal principal = ((void*)0);
    krb5_enctype enctype = 0;

    if(opt->principal_string) {
 ret = krb5_parse_name(context, opt->principal_string, &principal);
 if(ret) {
     krb5_warn(context, ret, "%s", opt->principal_string);
     return 1;
 }
    }
    if(opt->enctype_string) {
 ret = krb5_string_to_enctype(context, opt->enctype_string, &enctype);
 if(ret) {
     int t;
     if(sscanf(opt->enctype_string, "%d", &t) == 1)
  enctype = t;
     else {
  krb5_warn(context, ret, "%s", opt->enctype_string);
  if(principal)
      krb5_free_principal(context, principal);
  return 1;
     }
 }
    }
    if (!principal && !enctype && !opt->kvno_integer) {
 krb5_warnx(context,
     "You must give at least one of "
     "principal, enctype or kvno.");
 ret = EINVAL;
 goto out;
    }

    if((keytab = ktutil_open_keytab()) == ((void*)0)) {
 ret = 1;
 goto out;
    }

    entry.principal = principal;
    entry.keyblock.keytype = enctype;
    entry.vno = opt->kvno_integer;
    ret = krb5_kt_remove_entry(context, keytab, &entry);
    krb5_kt_close(context, keytab);
    if(ret)
 krb5_warn(context, ret, "remove");
 out:
    if(principal)
 krb5_free_principal(context, principal);
    return ret != 0;
}
