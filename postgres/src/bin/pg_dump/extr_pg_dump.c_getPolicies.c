
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


struct TYPE_21__ {void* oid; } ;
struct TYPE_24__ {int dump; char* name; TYPE_4__* namespace; TYPE_2__ catId; } ;
struct TYPE_25__ {TYPE_5__ dobj; scalar_t__ rowsec; } ;
typedef TYPE_6__ TableInfo ;
struct TYPE_28__ {int remoteVersion; } ;
struct TYPE_27__ {int data; } ;
struct TYPE_22__ {void* oid; void* tableoid; } ;
struct TYPE_19__ {void* name; TYPE_4__* namespace; TYPE_3__ catId; void* objType; } ;
struct TYPE_26__ {char* polname; char polcmd; int polpermissive; int * polwithcheck; int * polqual; int * polroles; TYPE_18__ dobj; TYPE_6__* poltable; } ;
struct TYPE_20__ {int name; } ;
struct TYPE_23__ {TYPE_1__ dobj; } ;
typedef TYPE_7__ PolicyInfo ;
typedef TYPE_8__* PQExpBuffer ;
typedef int PGresult ;
typedef TYPE_9__ Archive ;


 int AssignDumpId (TYPE_18__*) ;
 void* DO_POLICY ;
 int DUMP_COMPONENT_POLICY ;
 int * ExecuteSqlQuery (TYPE_9__*,int ,int ) ;
 int PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQfnumber (int *,char*) ;
 scalar_t__ PQgetisnull (int *,int,int) ;
 char* PQgetvalue (int *,int,int) ;
 int PQntuples (int *) ;
 int appendPQExpBuffer (TYPE_8__*,char*,void*) ;
 void* atooid (char*) ;
 TYPE_8__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_8__*) ;
 int pg_log_info (char*,int ,char*) ;
 TYPE_7__* pg_malloc (int) ;
 void* pg_strdup (char*) ;
 int resetPQExpBuffer (TYPE_8__*) ;

void
getPolicies(Archive *fout, TableInfo tblinfo[], int numTables)
{
 PQExpBuffer query;
 PGresult *res;
 PolicyInfo *polinfo;
 int i_oid;
 int i_tableoid;
 int i_polname;
 int i_polcmd;
 int i_polpermissive;
 int i_polroles;
 int i_polqual;
 int i_polwithcheck;
 int i,
    j,
    ntups;

 if (fout->remoteVersion < 90500)
  return;

 query = createPQExpBuffer();

 for (i = 0; i < numTables; i++)
 {
  TableInfo *tbinfo = &tblinfo[i];


  if (!(tbinfo->dobj.dump & DUMP_COMPONENT_POLICY))
   continue;

  pg_log_info("reading row security enabled for table \"%s.%s\"",
     tbinfo->dobj.namespace->dobj.name,
     tbinfo->dobj.name);






  if (tbinfo->rowsec)
  {




   polinfo = pg_malloc(sizeof(PolicyInfo));
   polinfo->dobj.objType = DO_POLICY;
   polinfo->dobj.catId.tableoid = 0;
   polinfo->dobj.catId.oid = tbinfo->dobj.catId.oid;
   AssignDumpId(&polinfo->dobj);
   polinfo->dobj.namespace = tbinfo->dobj.namespace;
   polinfo->dobj.name = pg_strdup(tbinfo->dobj.name);
   polinfo->poltable = tbinfo;
   polinfo->polname = ((void*)0);
   polinfo->polcmd = '\0';
   polinfo->polpermissive = 0;
   polinfo->polroles = ((void*)0);
   polinfo->polqual = ((void*)0);
   polinfo->polwithcheck = ((void*)0);
  }

  pg_log_info("reading policies for table \"%s.%s\"",
     tbinfo->dobj.namespace->dobj.name,
     tbinfo->dobj.name);

  resetPQExpBuffer(query);


  if (fout->remoteVersion >= 100000)
   appendPQExpBuffer(query,
         "SELECT oid, tableoid, pol.polname, pol.polcmd, pol.polpermissive, "
         "CASE WHEN pol.polroles = '{0}' THEN NULL ELSE "
         "   pg_catalog.array_to_string(ARRAY(SELECT pg_catalog.quote_ident(rolname) from pg_catalog.pg_roles WHERE oid = ANY(pol.polroles)), ', ') END AS polroles, "
         "pg_catalog.pg_get_expr(pol.polqual, pol.polrelid) AS polqual, "
         "pg_catalog.pg_get_expr(pol.polwithcheck, pol.polrelid) AS polwithcheck "
         "FROM pg_catalog.pg_policy pol "
         "WHERE polrelid = '%u'",
         tbinfo->dobj.catId.oid);
  else
   appendPQExpBuffer(query,
         "SELECT oid, tableoid, pol.polname, pol.polcmd, 't' as polpermissive, "
         "CASE WHEN pol.polroles = '{0}' THEN NULL ELSE "
         "   pg_catalog.array_to_string(ARRAY(SELECT pg_catalog.quote_ident(rolname) from pg_catalog.pg_roles WHERE oid = ANY(pol.polroles)), ', ') END AS polroles, "
         "pg_catalog.pg_get_expr(pol.polqual, pol.polrelid) AS polqual, "
         "pg_catalog.pg_get_expr(pol.polwithcheck, pol.polrelid) AS polwithcheck "
         "FROM pg_catalog.pg_policy pol "
         "WHERE polrelid = '%u'",
         tbinfo->dobj.catId.oid);
  res = ExecuteSqlQuery(fout, query->data, PGRES_TUPLES_OK);

  ntups = PQntuples(res);

  if (ntups == 0)
  {





   PQclear(res);
   continue;
  }

  i_oid = PQfnumber(res, "oid");
  i_tableoid = PQfnumber(res, "tableoid");
  i_polname = PQfnumber(res, "polname");
  i_polcmd = PQfnumber(res, "polcmd");
  i_polpermissive = PQfnumber(res, "polpermissive");
  i_polroles = PQfnumber(res, "polroles");
  i_polqual = PQfnumber(res, "polqual");
  i_polwithcheck = PQfnumber(res, "polwithcheck");

  polinfo = pg_malloc(ntups * sizeof(PolicyInfo));

  for (j = 0; j < ntups; j++)
  {
   polinfo[j].dobj.objType = DO_POLICY;
   polinfo[j].dobj.catId.tableoid =
    atooid(PQgetvalue(res, j, i_tableoid));
   polinfo[j].dobj.catId.oid = atooid(PQgetvalue(res, j, i_oid));
   AssignDumpId(&polinfo[j].dobj);
   polinfo[j].dobj.namespace = tbinfo->dobj.namespace;
   polinfo[j].poltable = tbinfo;
   polinfo[j].polname = pg_strdup(PQgetvalue(res, j, i_polname));
   polinfo[j].dobj.name = pg_strdup(polinfo[j].polname);

   polinfo[j].polcmd = *(PQgetvalue(res, j, i_polcmd));
   polinfo[j].polpermissive = *(PQgetvalue(res, j, i_polpermissive)) == 't';

   if (PQgetisnull(res, j, i_polroles))
    polinfo[j].polroles = ((void*)0);
   else
    polinfo[j].polroles = pg_strdup(PQgetvalue(res, j, i_polroles));

   if (PQgetisnull(res, j, i_polqual))
    polinfo[j].polqual = ((void*)0);
   else
    polinfo[j].polqual = pg_strdup(PQgetvalue(res, j, i_polqual));

   if (PQgetisnull(res, j, i_polwithcheck))
    polinfo[j].polwithcheck = ((void*)0);
   else
    polinfo[j].polwithcheck
     = pg_strdup(PQgetvalue(res, j, i_polwithcheck));
  }
  PQclear(res);
 }
 destroyPQExpBuffer(query);
}
