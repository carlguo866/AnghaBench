
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct afs_vldb_entry {int nr_servers; int flags; int error; void** vid; int * fs_server; int * fs_mask; void** name; int name_len; } ;
struct afs_uvldbentry__xdr {int * volumeId; struct afs_uuid__xdr* serverNumber; int * serverFlags; int flags; int * name; int nServers; } ;
struct afs_uuid__xdr {int * node; int clock_seq_low; int clock_seq_hi_and_reserved; int time_hi_and_version; int time_mid; int time_low; } ;
struct afs_uuid {void** node; void* clock_seq_low; void* clock_seq_hi_and_reserved; void* time_hi_and_version; void* time_mid; int time_low; } ;
struct afs_call {struct afs_vldb_entry* ret_vldb; struct afs_uvldbentry__xdr* buffer; } ;


 int AFS_MAXTYPES ;
 int AFS_NMAXNSERVERS ;
 int AFS_VLDB_HAS_BAK ;
 int AFS_VLDB_HAS_RO ;
 int AFS_VLDB_HAS_RW ;
 int AFS_VLDB_QUERY_ERROR ;
 int AFS_VLDB_QUERY_VALID ;
 int AFS_VLF_BACKEXISTS ;
 int AFS_VLF_ROEXISTS ;
 int AFS_VLF_RWEXISTS ;
 int AFS_VLSF_DONTUSE ;
 int AFS_VLSF_NEWREPSITE ;
 int AFS_VLSF_ROVOL ;
 int AFS_VLSF_RWVOL ;
 int AFS_VOL_VTM_BAK ;
 int AFS_VOL_VTM_RO ;
 int AFS_VOL_VTM_RW ;
 int ARRAY_SIZE (int *) ;
 int ENOMEDIUM ;
 int __set_bit (int ,int *) ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*) ;
 void* htons (void*) ;
 void* ntohl (int ) ;
 int strlen (void**) ;

__attribute__((used)) static int afs_deliver_vl_get_entry_by_name_u(struct afs_call *call)
{
 struct afs_uvldbentry__xdr *uvldb;
 struct afs_vldb_entry *entry;
 bool new_only = 0;
 u32 tmp, nr_servers, vlflags;
 int i, ret;

 _enter("");

 ret = afs_transfer_reply(call);
 if (ret < 0)
  return ret;


 uvldb = call->buffer;
 entry = call->ret_vldb;

 nr_servers = ntohl(uvldb->nServers);
 if (nr_servers > AFS_NMAXNSERVERS)
  nr_servers = AFS_NMAXNSERVERS;

 for (i = 0; i < ARRAY_SIZE(uvldb->name) - 1; i++)
  entry->name[i] = (u8)ntohl(uvldb->name[i]);
 entry->name[i] = 0;
 entry->name_len = strlen(entry->name);




 for (i = 0; i < nr_servers; i++) {
  tmp = ntohl(uvldb->serverFlags[i]);
  if (!(tmp & AFS_VLSF_DONTUSE) &&
      (tmp & AFS_VLSF_NEWREPSITE))
   new_only = 1;
 }

 vlflags = ntohl(uvldb->flags);
 for (i = 0; i < nr_servers; i++) {
  struct afs_uuid__xdr *xdr;
  struct afs_uuid *uuid;
  int j;
  int n = entry->nr_servers;

  tmp = ntohl(uvldb->serverFlags[i]);
  if (tmp & AFS_VLSF_DONTUSE ||
      (new_only && !(tmp & AFS_VLSF_NEWREPSITE)))
   continue;
  if (tmp & AFS_VLSF_RWVOL) {
   entry->fs_mask[n] |= AFS_VOL_VTM_RW;
   if (vlflags & AFS_VLF_BACKEXISTS)
    entry->fs_mask[n] |= AFS_VOL_VTM_BAK;
  }
  if (tmp & AFS_VLSF_ROVOL)
   entry->fs_mask[n] |= AFS_VOL_VTM_RO;
  if (!entry->fs_mask[n])
   continue;

  xdr = &uvldb->serverNumber[i];
  uuid = (struct afs_uuid *)&entry->fs_server[n];
  uuid->time_low = xdr->time_low;
  uuid->time_mid = htons(ntohl(xdr->time_mid));
  uuid->time_hi_and_version = htons(ntohl(xdr->time_hi_and_version));
  uuid->clock_seq_hi_and_reserved = (u8)ntohl(xdr->clock_seq_hi_and_reserved);
  uuid->clock_seq_low = (u8)ntohl(xdr->clock_seq_low);
  for (j = 0; j < 6; j++)
   uuid->node[j] = (u8)ntohl(xdr->node[j]);

  entry->nr_servers++;
 }

 for (i = 0; i < AFS_MAXTYPES; i++)
  entry->vid[i] = ntohl(uvldb->volumeId[i]);

 if (vlflags & AFS_VLF_RWEXISTS)
  __set_bit(AFS_VLDB_HAS_RW, &entry->flags);
 if (vlflags & AFS_VLF_ROEXISTS)
  __set_bit(AFS_VLDB_HAS_RO, &entry->flags);
 if (vlflags & AFS_VLF_BACKEXISTS)
  __set_bit(AFS_VLDB_HAS_BAK, &entry->flags);

 if (!(vlflags & (AFS_VLF_RWEXISTS | AFS_VLF_ROEXISTS | AFS_VLF_BACKEXISTS))) {
  entry->error = -ENOMEDIUM;
  __set_bit(AFS_VLDB_QUERY_ERROR, &entry->flags);
 }

 __set_bit(AFS_VLDB_QUERY_VALID, &entry->flags);
 _leave(" = 0 [done]");
 return 0;
}
