
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_23__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_15__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_34__ {int oid; } ;
struct TYPE_37__ {int dump; TYPE_4__* namespace; TYPE_2__ catId; int name; } ;
struct TYPE_41__ {scalar_t__ relkind; int numIndexes; TYPE_12__* indexes; TYPE_5__ dobj; int hastriggers; } ;
typedef TYPE_9__ TableInfo ;
struct TYPE_40__ {TYPE_10__* head; } ;
struct TYPE_38__ {scalar_t__ oid; } ;
struct TYPE_39__ {TYPE_6__ catId; } ;
struct TYPE_32__ {int name; } ;
struct TYPE_36__ {TYPE_1__ dobj; } ;
struct TYPE_35__ {void* oid; void* tableoid; } ;
struct TYPE_33__ {TYPE_4__* namespace; void* name; TYPE_3__ catId; int objType; } ;
struct TYPE_31__ {int remoteVersion; } ;
struct TYPE_30__ {float contype; int condeferrable; int condeferred; int conislocal; int separate; TYPE_23__ dobj; void* confrelid; scalar_t__ conindex; void* condef; int * condomain; TYPE_9__* contable; } ;
struct TYPE_29__ {int dumpId; } ;
struct TYPE_28__ {TYPE_8__ partattaches; TYPE_7__ dobj; } ;
struct TYPE_27__ {int data; } ;
struct TYPE_26__ {scalar_t__ ptr; struct TYPE_26__* next; } ;
typedef TYPE_10__ SimplePtrListCell ;
typedef TYPE_11__* PQExpBuffer ;
typedef int PGresult ;
typedef scalar_t__ Oid ;
typedef TYPE_12__ IndxInfo ;
typedef TYPE_13__ DumpableObject ;
typedef TYPE_14__ ConstraintInfo ;
typedef TYPE_15__ Archive ;


 int AssignDumpId (TYPE_23__*) ;
 int DO_FK_CONSTRAINT ;
 int DUMP_COMPONENT_DEFINITION ;
 int * ExecuteSqlQuery (TYPE_15__*,int ,int ) ;
 scalar_t__ InvalidOid ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 int PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 int addObjectDependency (TYPE_23__*,int ) ;
 int appendPQExpBuffer (TYPE_11__*,char*,int ) ;
 void* atooid (int ) ;
 TYPE_11__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_11__*) ;
 TYPE_9__* findTableByOid (void*) ;
 int pg_log_info (char*,int ,int ) ;
 scalar_t__ pg_malloc (int) ;
 void* pg_strdup (int ) ;
 int resetPQExpBuffer (TYPE_11__*) ;

void
getConstraints(Archive *fout, TableInfo tblinfo[], int numTables)
{
 int i,
    j;
 ConstraintInfo *constrinfo;
 PQExpBuffer query;
 PGresult *res;
 int i_contableoid,
    i_conoid,
    i_conname,
    i_confrelid,
    i_conindid,
    i_condef;
 int ntups;

 query = createPQExpBuffer();

 for (i = 0; i < numTables; i++)
 {
  TableInfo *tbinfo = &tblinfo[i];





  if ((!tbinfo->hastriggers &&
    tbinfo->relkind != RELKIND_PARTITIONED_TABLE) ||
   !(tbinfo->dobj.dump & DUMP_COMPONENT_DEFINITION))
   continue;

  pg_log_info("reading foreign key constraints for table \"%s.%s\"",
     tbinfo->dobj.namespace->dobj.name,
     tbinfo->dobj.name);

  resetPQExpBuffer(query);
  if (fout->remoteVersion >= 110000)
   appendPQExpBuffer(query,
         "SELECT tableoid, oid, conname, confrelid, conindid, "
         "pg_catalog.pg_get_constraintdef(oid) AS condef "
         "FROM pg_catalog.pg_constraint "
         "WHERE conrelid = '%u'::pg_catalog.oid "
         "AND conparentid = 0 "
         "AND contype = 'f'",
         tbinfo->dobj.catId.oid);
  else
   appendPQExpBuffer(query,
         "SELECT tableoid, oid, conname, confrelid, 0 as conindid, "
         "pg_catalog.pg_get_constraintdef(oid) AS condef "
         "FROM pg_catalog.pg_constraint "
         "WHERE conrelid = '%u'::pg_catalog.oid "
         "AND contype = 'f'",
         tbinfo->dobj.catId.oid);
  res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

  ntups = PQntuples(res);

  i_contableoid = PQfnumber(res, "tableoid");
  i_conoid = PQfnumber(res, "oid");
  i_conname = PQfnumber(res, "conname");
  i_confrelid = PQfnumber(res, "confrelid");
  i_conindid = PQfnumber(res, "conindid");
  i_condef = PQfnumber(res, "condef");

  constrinfo = (ConstraintInfo *) pg_malloc(ntups * sizeof(ConstraintInfo));

  for (j = 0; j < ntups; j++)
  {
   TableInfo *reftable;

   constrinfo[j].dobj.objType = DO_FK_CONSTRAINT;
   constrinfo[j].dobj.catId.tableoid = atooid(PQgetvalue(res, j, i_contableoid));
   constrinfo[j].dobj.catId.oid = atooid(PQgetvalue(res, j, i_conoid));
   AssignDumpId(&constrinfo[j].dobj);
   constrinfo[j].dobj.name = pg_strdup(PQgetvalue(res, j, i_conname));
   constrinfo[j].dobj.namespace = tbinfo->dobj.namespace;
   constrinfo[j].contable = tbinfo;
   constrinfo[j].condomain = ((void*)0);
   constrinfo[j].contype = 'f';
   constrinfo[j].condef = pg_strdup(PQgetvalue(res, j, i_condef));
   constrinfo[j].confrelid = atooid(PQgetvalue(res, j, i_confrelid));
   constrinfo[j].conindex = 0;
   constrinfo[j].condeferrable = 0;
   constrinfo[j].condeferred = 0;
   constrinfo[j].conislocal = 1;
   constrinfo[j].separate = 1;







   reftable = findTableByOid(constrinfo[j].confrelid);
   if (reftable && reftable->relkind == RELKIND_PARTITIONED_TABLE)
   {
    IndxInfo *refidx;
    Oid indexOid = atooid(PQgetvalue(res, j, i_conindid));

    if (indexOid != InvalidOid)
    {
     for (int k = 0; k < reftable->numIndexes; k++)
     {
      SimplePtrListCell *cell;


      if (reftable->indexes[k].dobj.catId.oid != indexOid)
       continue;

      refidx = &reftable->indexes[k];
      for (cell = refidx->partattaches.head; cell;
        cell = cell->next)
       addObjectDependency(&constrinfo[j].dobj,
            ((DumpableObject *)
             cell->ptr)->dumpId);
      break;
     }
    }
   }
  }

  PQclear(res);
 }

 destroyPQExpBuffer(query);
}
