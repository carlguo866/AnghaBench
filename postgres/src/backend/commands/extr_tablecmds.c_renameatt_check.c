
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char relkind; int relname; scalar_t__ reloftype; } ;
typedef int Oid ;
typedef TYPE_1__* Form_pg_class ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetUserId () ;
 scalar_t__ IsSystemClass (int ,TYPE_1__*) ;
 int NameStr (int ) ;
 char RELKIND_COMPOSITE_TYPE ;
 char RELKIND_FOREIGN_TABLE ;
 char RELKIND_INDEX ;
 char RELKIND_MATVIEW ;
 char RELKIND_PARTITIONED_INDEX ;
 char RELKIND_PARTITIONED_TABLE ;
 char RELKIND_RELATION ;
 char RELKIND_VIEW ;
 int aclcheck_error (int ,int ,int ) ;
 int allowSystemTableMods ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_rel_relkind (int ) ;
 int get_relkind_objtype (int ) ;
 int pg_class_ownercheck (int ,int ) ;

__attribute__((used)) static void
renameatt_check(Oid myrelid, Form_pg_class classform, bool recursing)
{
 char relkind = classform->relkind;

 if (classform->reloftype && !recursing)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot rename column of typed table")));
 if (relkind != RELKIND_RELATION &&
  relkind != RELKIND_VIEW &&
  relkind != RELKIND_MATVIEW &&
  relkind != RELKIND_COMPOSITE_TYPE &&
  relkind != RELKIND_INDEX &&
  relkind != RELKIND_PARTITIONED_INDEX &&
  relkind != RELKIND_FOREIGN_TABLE &&
  relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table, view, materialized view, composite type, index, or foreign table",
      NameStr(classform->relname))));




 if (!pg_class_ownercheck(myrelid, GetUserId()))
  aclcheck_error(ACLCHECK_NOT_OWNER, get_relkind_objtype(get_rel_relkind(myrelid)),
        NameStr(classform->relname));
 if (!allowSystemTableMods && IsSystemClass(myrelid, classform))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      NameStr(classform->relname))));
}
