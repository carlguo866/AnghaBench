
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int krb5_kt_cursor ;
struct TYPE_9__ {int keytype; } ;
struct TYPE_8__ {int vno; TYPE_6__ keyblock; int principal; } ;
typedef TYPE_1__ krb5_keytab_entry ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;


 scalar_t__ KRB5_KT_NOTFOUND ;
 int compare_keyblock (TYPE_6__*,TYPE_6__*) ;
 int context ;
 int fprintf (int ,char*,char const*,char const*,...) ;
 int free (char*) ;
 int keytab_string ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 scalar_t__ krb5_kt_add_entry (int ,int ,TYPE_1__*) ;
 int krb5_kt_close (int ,int ) ;
 int krb5_kt_end_seq_get (int ,int ,int *) ;
 int krb5_kt_free_entry (int ,TYPE_1__*) ;
 scalar_t__ krb5_kt_get_entry (int ,int ,int ,int,int ,TYPE_1__*) ;
 scalar_t__ krb5_kt_next_entry (int ,int ,TYPE_1__*,int *) ;
 scalar_t__ krb5_kt_resolve (int ,char const*,int *) ;
 scalar_t__ krb5_kt_start_seq_get (int ,int ,int *) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int krb5_warnx (int ,char*,char*,char*,int) ;
 int stderr ;
 scalar_t__ verbose_flag ;

int
kt_copy (void *opt, int argc, char **argv)
{
    krb5_error_code ret;
    krb5_keytab src_keytab, dst_keytab;
    krb5_kt_cursor cursor;
    krb5_keytab_entry entry, dummy;
    const char *from = argv[0];
    const char *to = argv[1];

    ret = krb5_kt_resolve (context, from, &src_keytab);
    if (ret) {
 krb5_warn (context, ret, "resolving src keytab `%s'", from);
 return 1;
    }

    ret = krb5_kt_resolve (context, to, &dst_keytab);
    if (ret) {
 krb5_kt_close (context, src_keytab);
 krb5_warn (context, ret, "resolving dst keytab `%s'", to);
 return 1;
    }

    ret = krb5_kt_start_seq_get (context, src_keytab, &cursor);
    if (ret) {
 krb5_warn (context, ret, "krb5_kt_start_seq_get %s", keytab_string);
 goto out;
    }

    if (verbose_flag)
 fprintf(stderr, "copying %s to %s\n", from, to);

    while((ret = krb5_kt_next_entry(context, src_keytab,
        &entry, &cursor)) == 0) {
 char *name_str;
 char *etype_str;
 ret = krb5_unparse_name (context, entry.principal, &name_str);
 if(ret) {
     krb5_warn(context, ret, "krb5_unparse_name");
     name_str = ((void*)0);
 }
 ret = krb5_enctype_to_string(context, entry.keyblock.keytype, &etype_str);
 if(ret) {
     krb5_warn(context, ret, "krb5_enctype_to_string");
     etype_str = ((void*)0);
 }
 ret = krb5_kt_get_entry(context, dst_keytab,
    entry.principal,
    entry.vno,
    entry.keyblock.keytype,
    &dummy);
 if(ret == 0) {



     if(!compare_keyblock(&entry.keyblock, &dummy.keyblock)) {
  krb5_warnx(context, "entry with different keyvalue "
      "already exists for %s, keytype %s, kvno %d",
      name_str, etype_str, entry.vno);
     }
     krb5_kt_free_entry(context, &dummy);
     krb5_kt_free_entry (context, &entry);
     free(name_str);
     free(etype_str);
     continue;
 } else if(ret != KRB5_KT_NOTFOUND) {
     krb5_warn (context, ret, "%s: fetching %s/%s/%u",
         to, name_str, etype_str, entry.vno);
     krb5_kt_free_entry (context, &entry);
     free(name_str);
     free(etype_str);
     break;
 }
 if (verbose_flag)
     fprintf (stderr, "copying %s, keytype %s, kvno %d\n", name_str,
       etype_str, entry.vno);
 ret = krb5_kt_add_entry (context, dst_keytab, &entry);
 krb5_kt_free_entry (context, &entry);
 if (ret) {
     krb5_warn (context, ret, "%s: adding %s/%s/%u",
         to, name_str, etype_str, entry.vno);
     free(name_str);
     free(etype_str);
     break;
 }
 free(name_str);
 free(etype_str);
    }
    krb5_kt_end_seq_get (context, src_keytab, &cursor);

  out:
    krb5_kt_close (context, src_keytab);
    krb5_kt_close (context, dst_keytab);
    return ret != 0;
}
