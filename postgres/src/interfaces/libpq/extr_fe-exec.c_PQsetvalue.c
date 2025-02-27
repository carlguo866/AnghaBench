
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int len; char* value; } ;
struct TYPE_8__ {int ntups; int numAttributes; char* null_field; int noticeHooks; TYPE_2__** tuples; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGresAttValue ;


 int NULL_LEN ;
 int check_field_number (TYPE_1__*,int) ;
 char* libpq_gettext (char*) ;
 int memcpy (char*,char*,int) ;
 int pqAddTuple (TYPE_1__*,TYPE_2__*,char const**) ;
 int pqInternalNotice (int *,char*,...) ;
 scalar_t__ pqResultAlloc (TYPE_1__*,int,int) ;

int
PQsetvalue(PGresult *res, int tup_num, int field_num, char *value, int len)
{
 PGresAttValue *attval;
 const char *errmsg = ((void*)0);


 if (!check_field_number(res, field_num))
  return 0;


 if (tup_num < 0 || tup_num > res->ntups)
 {
  pqInternalNotice(&res->noticeHooks,
       "row number %d is out of range 0..%d",
       tup_num, res->ntups);
  return 0;
 }


 if (tup_num == res->ntups)
 {
  PGresAttValue *tup;
  int i;

  tup = (PGresAttValue *)
   pqResultAlloc(res, res->numAttributes * sizeof(PGresAttValue),
        1);

  if (!tup)
   goto fail;


  for (i = 0; i < res->numAttributes; i++)
  {
   tup[i].len = NULL_LEN;
   tup[i].value = res->null_field;
  }


  if (!pqAddTuple(res, tup, &errmsg))
   goto fail;
 }

 attval = &res->tuples[tup_num][field_num];


 if (len == NULL_LEN || value == ((void*)0))
 {
  attval->len = NULL_LEN;
  attval->value = res->null_field;
 }
 else if (len <= 0)
 {
  attval->len = 0;
  attval->value = res->null_field;
 }
 else
 {
  attval->value = (char *) pqResultAlloc(res, len + 1, 1);
  if (!attval->value)
   goto fail;
  attval->len = len;
  memcpy(attval->value, value, len);
  attval->value[len] = '\0';
 }

 return 1;





fail:
 if (!errmsg)
  errmsg = libpq_gettext("out of memory");
 pqInternalNotice(&res->noticeHooks, "%s", errmsg);

 return 0;
}
