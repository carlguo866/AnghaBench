
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ def; } ;
struct TYPE_11__ {char* colname; } ;
struct TYPE_10__ {scalar_t__ contype; scalar_t__ fk_del_action; scalar_t__ fk_upd_action; int pk_attrs; int * pktable; } ;
struct TYPE_9__ {int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int RangeVar ;
typedef int Oid ;
typedef TYPE_2__ Constraint ;
typedef TYPE_3__ ColumnDef ;
typedef TYPE_4__ AlterTableCmd ;


 scalar_t__ CONSTR_CHECK ;
 scalar_t__ CONSTR_FOREIGN ;
 scalar_t__ CONSTR_PRIMARY ;
 scalar_t__ CONSTR_UNIQUE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 scalar_t__ FKCONSTR_ACTION_CASCADE ;
 scalar_t__ FKCONSTR_ACTION_RESTRICT ;
 scalar_t__ FKCONSTR_ACTION_SETDEFAULT ;
 scalar_t__ FKCONSTR_ACTION_SETNULL ;
 int NoLock ;
 int RangeVarGetRelid (int *,int ,int) ;
 int appendStringInfo (TYPE_1__*,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errhint (char*,int ) ;
 int errmsg (char*,char*) ;
 int get_rel_name (int ) ;
 int lfirst (int ) ;
 int list_head (int ) ;
 TYPE_1__* makeStringInfo () ;
 char* strVal (int ) ;

void
ErrorUnsupportedAlterTableAddColumn(Oid relationId, AlterTableCmd *command,
         Constraint *constraint)
{
 ColumnDef *columnDefinition = (ColumnDef *) command->def;
 char *colName = columnDefinition->colname;
 char *errMsg =
  "cannot execute ADD COLUMN command with PRIMARY KEY, UNIQUE, FOREIGN and CHECK constraints";
 StringInfo errHint = makeStringInfo();
 appendStringInfo(errHint, "You can issue each command separately such as ");
 appendStringInfo(errHint,
      "ALTER TABLE %s ADD COLUMN %s data_type; ALTER TABLE %s ADD CONSTRAINT constraint_name ",
      get_rel_name(relationId),
      colName, get_rel_name(relationId));

 if (constraint->contype == CONSTR_UNIQUE)
 {
  appendStringInfo(errHint, "UNIQUE (%s)", colName);
 }
 else if (constraint->contype == CONSTR_PRIMARY)
 {
  appendStringInfo(errHint, "PRIMARY KEY (%s)", colName);
 }
 else if (constraint->contype == CONSTR_CHECK)
 {
  appendStringInfo(errHint, "CHECK (check_expression)");
 }
 else if (constraint->contype == CONSTR_FOREIGN)
 {
  RangeVar *referencedTable = constraint->pktable;
  char *referencedColumn = strVal(lfirst(list_head(constraint->pk_attrs)));
  Oid referencedRelationId = RangeVarGetRelid(referencedTable, NoLock, 0);

  appendStringInfo(errHint, "FOREIGN KEY (%s) REFERENCES %s(%s)", colName,
       get_rel_name(referencedRelationId), referencedColumn);

  if (constraint->fk_del_action == FKCONSTR_ACTION_SETNULL)
  {
   appendStringInfo(errHint, " %s", "ON DELETE SET NULL");
  }
  else if (constraint->fk_del_action == FKCONSTR_ACTION_CASCADE)
  {
   appendStringInfo(errHint, " %s", "ON DELETE CASCADE");
  }
  else if (constraint->fk_del_action == FKCONSTR_ACTION_SETDEFAULT)
  {
   appendStringInfo(errHint, " %s", "ON DELETE SET DEFAULT");
  }
  else if (constraint->fk_del_action == FKCONSTR_ACTION_RESTRICT)
  {
   appendStringInfo(errHint, " %s", "ON DELETE RESTRICT");
  }

  if (constraint->fk_upd_action == FKCONSTR_ACTION_SETNULL)
  {
   appendStringInfo(errHint, " %s", "ON UPDATE SET NULL");
  }
  else if (constraint->fk_upd_action == FKCONSTR_ACTION_CASCADE)
  {
   appendStringInfo(errHint, " %s", "ON UPDATE CASCADE");
  }
  else if (constraint->fk_upd_action == FKCONSTR_ACTION_SETDEFAULT)
  {
   appendStringInfo(errHint, " %s", "ON UPDATE SET DEFAULT");
  }
  else if (constraint->fk_upd_action == FKCONSTR_ACTION_RESTRICT)
  {
   appendStringInfo(errHint, " %s", "ON UPDATE RESTRICT");
  }
 }

 appendStringInfo(errHint, "%s", ";");

 ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("%s", errMsg),
     errhint("%s", errHint->data),
     errdetail("Adding a column with a constraint in "
         "one command is not supported because "
         "all constraints in Citus must have "
         "explicit names")));
}
