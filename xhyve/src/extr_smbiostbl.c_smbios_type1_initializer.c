
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
struct smbios_table_type1 {int uuid; } ;
struct smbios_structure {int dummy; } ;
typedef int hostname ;
typedef int digest ;
typedef int CC_SHA256_CTX ;


 int CC_SHA256_DIGEST_LENGTH ;
 int CC_SHA256_Final (int*,int *) ;
 int CC_SHA256_Init (int *) ;
 int CC_SHA256_Update (int *,char*,unsigned int) ;
 int MAXHOSTNAMELEN ;
 scalar_t__ gethostname (char*,int) ;
 int * guest_uuid_str ;
 int memcpy (int *,int*,int) ;
 int smbios_generic_initializer (struct smbios_structure*,char const**,char*,char**,int *,int *) ;
 scalar_t__ strlen (char*) ;
 int uuid_enc_le (int *,int *) ;
 int uuid_from_string (int *,int *,scalar_t__*) ;
 scalar_t__ uuid_s_ok ;
 char* vmname ;

__attribute__((used)) static int
smbios_type1_initializer(struct smbios_structure *template_entry,
    const char **template_strings, char *curaddr, char **endaddr,
    uint16_t *n, uint16_t *size)
{
 struct smbios_table_type1 *type1;

 smbios_generic_initializer(template_entry, template_strings,
     curaddr, endaddr, n, size);
 type1 = (struct smbios_table_type1 *)curaddr;

 if (guest_uuid_str != ((void*)0)) {
  uuid_t uuid;
  uint32_t status;

  uuid_from_string(guest_uuid_str, &uuid, &status);
  if (status != uuid_s_ok)
   return (-1);

  uuid_enc_le(&type1->uuid, &uuid);
 } else {
  CC_SHA256_CTX mdctx;
  u_char digest[CC_SHA256_DIGEST_LENGTH];
  char hostname[MAXHOSTNAMELEN];






  if (gethostname(hostname, sizeof(hostname)))
   return (-1);

  CC_SHA256_Init(&mdctx);
  CC_SHA256_Update(&mdctx, vmname, ((unsigned) strlen(vmname)));
  CC_SHA256_Update(&mdctx, hostname, ((unsigned) sizeof(hostname)));
  CC_SHA256_Final(digest, &mdctx);




  digest[6] &= 0x0F;
  digest[6] |= 0x30;
  digest[8] &= 0x3F;
  digest[8] |= 0x80;

  memcpy(&type1->uuid, digest, sizeof (digest));
 }

 return (0);
}
