
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_dbinfo {char const* label; } ;
typedef int krb5_context ;



const char *
hdb_dbinfo_get_label(krb5_context context, struct hdb_dbinfo *dbp)
{
    return dbp->label;
}
