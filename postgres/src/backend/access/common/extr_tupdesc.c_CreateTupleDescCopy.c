
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_11__ {int attnotnull; int atthasdef; int atthasmissing; char attidentity; char attgenerated; } ;
struct TYPE_10__ {int natts; int tdtypmod; int tdtypeid; } ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int FormData_pg_attribute ;


 TYPE_1__* CreateTemplateTupleDesc (int) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

TupleDesc
CreateTupleDescCopy(TupleDesc tupdesc)
{
 TupleDesc desc;
 int i;

 desc = CreateTemplateTupleDesc(tupdesc->natts);


 memcpy(TupleDescAttr(desc, 0),
     TupleDescAttr(tupdesc, 0),
     desc->natts * sizeof(FormData_pg_attribute));





 for (i = 0; i < desc->natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(desc, i);

  att->attnotnull = 0;
  att->atthasdef = 0;
  att->atthasmissing = 0;
  att->attidentity = '\0';
  att->attgenerated = '\0';
 }


 desc->tdtypeid = tupdesc->tdtypeid;
 desc->tdtypmod = tupdesc->tdtypmod;

 return desc;
}
