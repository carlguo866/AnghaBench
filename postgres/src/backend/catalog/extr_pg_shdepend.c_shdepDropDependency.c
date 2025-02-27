
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {scalar_t__ refclassid; scalar_t__ refobjid; scalar_t__ deptype; } ;
struct TYPE_6__ {int t_self; } ;
typedef int SysScanDesc ;
typedef scalar_t__ SharedDependencyType ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_shdepend ;


 int Anum_pg_shdepend_classid ;
 int Anum_pg_shdepend_dbid ;
 int Anum_pg_shdepend_objid ;
 int Anum_pg_shdepend_objsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (TYPE_1__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int Int32GetDatum (int ) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ SHARED_DEPENDENCY_INVALID ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SharedDependDependerIndexId ;
 scalar_t__ classIdGetDbId (scalar_t__) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;

__attribute__((used)) static void
shdepDropDependency(Relation sdepRel,
     Oid classId, Oid objectId, int32 objsubId,
     bool drop_subobjects,
     Oid refclassId, Oid refobjId,
     SharedDependencyType deptype)
{
 ScanKeyData key[4];
 int nkeys;
 SysScanDesc scan;
 HeapTuple tup;


 ScanKeyInit(&key[0],
    Anum_pg_shdepend_dbid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classIdGetDbId(classId)));
 ScanKeyInit(&key[1],
    Anum_pg_shdepend_classid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classId));
 ScanKeyInit(&key[2],
    Anum_pg_shdepend_objid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(objectId));
 if (drop_subobjects)
  nkeys = 3;
 else
 {
  ScanKeyInit(&key[3],
     Anum_pg_shdepend_objsubid,
     BTEqualStrategyNumber, F_INT4EQ,
     Int32GetDatum(objsubId));
  nkeys = 4;
 }

 scan = systable_beginscan(sdepRel, SharedDependDependerIndexId, 1,
         ((void*)0), nkeys, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_shdepend shdepForm = (Form_pg_shdepend) GETSTRUCT(tup);


  if (OidIsValid(refclassId) && shdepForm->refclassid != refclassId)
   continue;
  if (OidIsValid(refobjId) && shdepForm->refobjid != refobjId)
   continue;
  if (deptype != SHARED_DEPENDENCY_INVALID &&
   shdepForm->deptype != deptype)
   continue;


  CatalogTupleDelete(sdepRel, &tup->t_self);
 }

 systable_endscan(scan);
}
