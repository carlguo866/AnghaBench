
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {scalar_t__ relkind; int relation; } ;
typedef int Oid ;
typedef int const ObjectAddress ;
typedef TYPE_1__ AlterTableStmt ;


 int Assert (int) ;
 int InvalidOid ;
 int LookupTypeNameOid (int *,int *,int) ;
 int * MakeTypeNameFromRangeVar (int ) ;
 scalar_t__ OBJECT_TYPE ;
 int ObjectAddressSet (int const,int ,int ) ;
 int TypeRelationId ;
 int const* palloc0 (int) ;

const ObjectAddress *
AlterTypeStmtObjectAddress(AlterTableStmt *stmt, bool missing_ok)
{
 TypeName *typeName = ((void*)0);
 Oid typeOid = InvalidOid;
 ObjectAddress *address = ((void*)0);

 Assert(stmt->relkind == OBJECT_TYPE);

 typeName = MakeTypeNameFromRangeVar(stmt->relation);
 typeOid = LookupTypeNameOid(((void*)0), typeName, missing_ok);
 address = palloc0(sizeof(ObjectAddress));
 ObjectAddressSet(*address, TypeRelationId, typeOid);

 return address;
}
