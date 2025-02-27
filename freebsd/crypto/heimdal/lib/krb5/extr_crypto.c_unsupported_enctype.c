
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;


 scalar_t__ KRB5_PROG_ETYPE_NOSUPP ;
 int N_ (char*,char*) ;
 int free (char*) ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_set_error_message (int ,scalar_t__,int ,char*) ;

__attribute__((used)) static krb5_error_code
unsupported_enctype(krb5_context context, krb5_enctype etype)
{
    krb5_error_code ret;
    char *name;

    ret = krb5_enctype_to_string(context, etype, &name);
    if (ret)
 return ret;

    krb5_set_error_message(context, KRB5_PROG_ETYPE_NOSUPP,
      N_("Encryption type %s not supported", ""),
      name);
    free(name);
    return KRB5_PROG_ETYPE_NOSUPP;
}
