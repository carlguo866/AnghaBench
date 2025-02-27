
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint32_t ;
typedef int uchar_t ;
struct uuid {int dummy; } ;
struct dk_part {int dummy; } ;
struct dk_gpt {int efi_lbasize; int efi_nparts; int efi_first_u_lba; int efi_disk_uguid; void* efi_last_lba; void* efi_last_u_lba; void* efi_altern_lba; int efi_version; } ;
struct dk_cinfo {scalar_t__ dki_partition; scalar_t__ dki_ctype; } ;
typedef void* diskaddr_t ;


 scalar_t__ DKC_PCMCIA_MEM ;
 scalar_t__ DKC_UNKNOWN ;
 scalar_t__ DKC_VBD ;
 int EFI_MIN_ARRAY_SIZE ;
 int EFI_VERSION_CURRENT ;
 int MAX_PARTS ;
 int NBLOCKS (int,int) ;
 int UUID_LE_CONVERT (int ,struct uuid) ;
 struct dk_gpt* calloc (int,size_t) ;
 scalar_t__ efi_debug ;
 scalar_t__ efi_get_info (int,struct dk_cinfo*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ read_disk_info (int,void**,int*) ;
 int stderr ;
 int uuid_generate (int *) ;

int
efi_alloc_and_init(int fd, uint32_t nparts, struct dk_gpt **vtoc)
{
 diskaddr_t capacity = 0;
 uint_t lbsize = 0;
 uint_t nblocks;
 size_t length;
 struct dk_gpt *vptr;
 struct uuid uuid;
 struct dk_cinfo dki_info;

 if (read_disk_info(fd, &capacity, &lbsize) != 0)
  return (-1);

 if (efi_get_info(fd, &dki_info) != 0)
  return (-1);

 if (dki_info.dki_partition != 0)
  return (-1);

 if ((dki_info.dki_ctype == DKC_PCMCIA_MEM) ||
     (dki_info.dki_ctype == DKC_VBD) ||
     (dki_info.dki_ctype == DKC_UNKNOWN))
  return (-1);

 nblocks = NBLOCKS(nparts, lbsize);
 if ((nblocks * lbsize) < EFI_MIN_ARRAY_SIZE + lbsize) {

  nblocks = EFI_MIN_ARRAY_SIZE / lbsize + 1;
 }

 if (nparts > MAX_PARTS) {
  if (efi_debug) {
   (void) fprintf(stderr,
   "the maximum number of partitions supported is %lu\n",
       MAX_PARTS);
  }
  return (-1);
 }

 length = sizeof (struct dk_gpt) +
     sizeof (struct dk_part) * (nparts - 1);

 if ((*vtoc = calloc(1, length)) == ((void*)0))
  return (-1);

 vptr = *vtoc;

 vptr->efi_version = EFI_VERSION_CURRENT;
 vptr->efi_lbasize = lbsize;
 vptr->efi_nparts = nparts;





 vptr->efi_first_u_lba = nblocks + 1;
 vptr->efi_last_lba = capacity - 1;
 vptr->efi_altern_lba = capacity -1;
 vptr->efi_last_u_lba = vptr->efi_last_lba - nblocks;

 (void) uuid_generate((uchar_t *)&uuid);
 UUID_LE_CONVERT(vptr->efi_disk_uguid, uuid);
 return (0);
}
