
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_8__ {TYPE_1__* ropt; } ;
struct TYPE_9__ {scalar_t__ version; int WriteDataPtr; TYPE_2__ public; } ;
struct TYPE_7__ {scalar_t__ dropSchema; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ ArchiveHandle ;


 int DropBlobIfExists (TYPE_3__*,scalar_t__) ;
 int INV_WRITE ;
 scalar_t__ K_VERS_1_12 ;
 int _WriteBlobData ;
 int ahprintf (TYPE_3__*,char*,scalar_t__,int ) ;
 int fatal (char*) ;

__attribute__((used)) static void
_StartBlob(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
 bool old_blob_style = (AH->version < K_VERS_1_12);

 if (oid == 0)
  fatal("invalid OID for large object");


 if (old_blob_style && AH->public.ropt->dropSchema)
  DropBlobIfExists(AH, oid);

 if (old_blob_style)
  ahprintf(AH, "SELECT pg_catalog.lo_open(pg_catalog.lo_create('%u'), %d);\n",
     oid, INV_WRITE);
 else
  ahprintf(AH, "SELECT pg_catalog.lo_open('%u', %d);\n",
     oid, INV_WRITE);

 AH->WriteDataPtr = _WriteBlobData;
}
