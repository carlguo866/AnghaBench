
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t hash_size; struct TYPE_11__* data; } ;
typedef TYPE_1__ hash_data ;
typedef TYPE_1__ UINT8 ;
struct TYPE_13__ {int SignatureData; } ;
struct TYPE_12__ {size_t SignatureListSize; int SignatureHeaderSize; int SignatureSize; int SignatureType; } ;
typedef scalar_t__ EFI_STATUS ;
typedef TYPE_3__ EFI_SIGNATURE_LIST ;
typedef TYPE_4__ EFI_SIGNATURE_DATA ;
typedef int EFI_GUID ;


 scalar_t__ EFI_BUFFER_TOO_SMALL ;
 scalar_t__ EFI_SUCCESS ;
 int ImageSecurityDatabaseGUID ;
 size_t br_sha256_SIZE ;
 size_t br_sha384_SIZE ;
 size_t br_sha512_SIZE ;
 int efiCertX509Sha256GUID ;
 int efiCertX509Sha384GUID ;
 int efiCertX509Sha5122UID ;
 scalar_t__ efi_getenv (int *,char*,TYPE_1__*,size_t*) ;
 void* malloc (size_t) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (TYPE_1__*,int ,size_t) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int xfree (TYPE_1__*) ;

hash_data*
efi_get_forbidden_digests(size_t *count)
{
 UINT8 *database;
 hash_data *digests;
 EFI_SIGNATURE_LIST *list;
 EFI_SIGNATURE_DATA *entry;
 size_t db_size, header_size, hash_size;
 int digest_count, entry_count;
 EFI_STATUS status;

 db_size = 0;
 digest_count = 0;
 database = ((void*)0);
 digests = ((void*)0);

 status = efi_getenv(&ImageSecurityDatabaseGUID, "dbx", database, &db_size);
 if (status != EFI_BUFFER_TOO_SMALL)
  return (((void*)0));

 database = malloc(db_size);
 if (database == ((void*)0))
  return (((void*)0));

 status = efi_getenv(&ImageSecurityDatabaseGUID, "dbx", database, &db_size);
 if (status != EFI_SUCCESS)
  goto fail;


 for (list = (EFI_SIGNATURE_LIST*) database;
     db_size >= list->SignatureListSize && db_size > 0;
     db_size -= list->SignatureListSize,
     list = (EFI_SIGNATURE_LIST*)
     ((UINT8*)list + list->SignatureListSize)) {


  if (memcmp(&efiCertX509Sha256GUID, &list->SignatureType,
      sizeof(EFI_GUID)) == 0) {
   hash_size = br_sha256_SIZE;
  } else if (memcmp(&efiCertX509Sha384GUID, &list->SignatureType,
      sizeof(EFI_GUID)) == 0) {
   hash_size = br_sha384_SIZE;
  } else if (memcmp(&efiCertX509Sha5122UID, &list->SignatureType,
      sizeof(EFI_GUID)) == 0) {
   hash_size = br_sha512_SIZE;
  } else {
   continue;
  }





  header_size = sizeof(EFI_SIGNATURE_LIST) + list->SignatureHeaderSize;


  entry_count = list->SignatureListSize - header_size;
  entry_count /= list->SignatureSize;
  entry = (EFI_SIGNATURE_DATA*)((UINT8*)list + header_size);
  while (entry_count-- > 0) {
   digests = realloc(digests,
       (digest_count + 1) * sizeof(hash_data));
   if (digests == ((void*)0)) {
    digest_count = 0;
    goto fail;
   }

   digests[digest_count].data = malloc(hash_size);
   if (digests[digest_count].data == ((void*)0))
    goto fail;

   memcpy(digests[digest_count].data,
       entry->SignatureData,
       hash_size);
   digests[digest_count].hash_size = hash_size;

   entry = (EFI_SIGNATURE_DATA*)(entry + list->SignatureSize);
   digest_count++;
  }
 }
 xfree(database);
 if (count != ((void*)0))
  *count = digest_count;

 return (digests);

fail:
 while (digest_count--)
  xfree(digests[digest_count].data);

 xfree(database);
 xfree(digests);
 return (((void*)0));
}
