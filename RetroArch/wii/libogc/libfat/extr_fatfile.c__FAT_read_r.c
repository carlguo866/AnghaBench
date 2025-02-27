
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct _reent {void* _errno; } ;
typedef int ssize_t ;
struct TYPE_9__ {unsigned int byte; scalar_t__ cluster; size_t sector; } ;
struct TYPE_8__ {scalar_t__ currentPosition; scalar_t__ filesize; scalar_t__ startCluster; TYPE_3__ rwPosition; TYPE_1__* partition; int read; int inUse; } ;
struct TYPE_7__ {unsigned int bytesPerSector; size_t sectorsPerCluster; size_t bytesPerCluster; int lock; int * cache; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ FILE_STRUCT ;
typedef TYPE_3__ FILE_POSITION ;
typedef int CACHE ;


 scalar_t__ CLUSTER_EOF ;
 scalar_t__ CLUSTER_FREE ;
 void* EBADF ;
 void* EIO ;
 void* EOVERFLOW ;
 size_t LIMIT_SECTORS ;
 int _FAT_cache_readPartialSector (int *,char*,size_t,unsigned int,size_t) ;
 int _FAT_cache_readSectors (int *,size_t,unsigned int,char*) ;
 size_t _FAT_fat_clusterToSector (TYPE_1__*,scalar_t__) ;
 int _FAT_fat_isValidCluster (TYPE_1__*,scalar_t__) ;
 scalar_t__ _FAT_fat_nextCluster (TYPE_1__*,scalar_t__) ;
 int _FAT_lock (int *) ;
 int _FAT_unlock (int *) ;

ssize_t _FAT_read_r (struct _reent *r, void *fd, char *ptr, size_t len) {
 FILE_STRUCT* file = (FILE_STRUCT*) fd;
 PARTITION* partition;
 CACHE* cache;
 FILE_POSITION position;
 uint32_t tempNextCluster;
 unsigned int tempVar;
 size_t remain;
 bool flagNoError = 1;


 if (len <= 0) {
  return 0;
 }


 if ((file == ((void*)0)) || !file->inUse || !file->read) {
  r->_errno = EBADF;
  return -1;
 }

 partition = file->partition;
 _FAT_lock(&partition->lock);


 if (file->currentPosition >= file->filesize || file->startCluster == CLUSTER_FREE) {
  r->_errno = EOVERFLOW;
  _FAT_unlock(&partition->lock);
  return 0;
 }


 if (len + file->currentPosition > file->filesize) {
  r->_errno = EOVERFLOW;
  len = file->filesize - file->currentPosition;
 }

 remain = len;
 position = file->rwPosition;
 cache = file->partition->cache;


 tempVar = partition->bytesPerSector - position.byte;
 if (tempVar > remain) {
  tempVar = remain;
 }

 if ((tempVar < partition->bytesPerSector) && flagNoError)
 {
  _FAT_cache_readPartialSector ( cache, ptr, _FAT_fat_clusterToSector (partition, position.cluster) + position.sector,
   position.byte, tempVar);

  remain -= tempVar;
  ptr += tempVar;

  position.byte += tempVar;
  if (position.byte >= partition->bytesPerSector) {
   position.byte = 0;
   position.sector++;
  }
 }



 if (remain > (partition->sectorsPerCluster - position.sector) * partition->bytesPerSector) {
  tempVar = partition->sectorsPerCluster - position.sector;
 } else {
  tempVar = remain / partition->bytesPerSector;
 }

 if ((tempVar > 0) && flagNoError) {
  if (! _FAT_cache_readSectors (cache, _FAT_fat_clusterToSector (partition, position.cluster) + position.sector,
   tempVar, ptr))
  {
   flagNoError = 0;
   r->_errno = EIO;
  } else {
   ptr += tempVar * partition->bytesPerSector;
   remain -= tempVar * partition->bytesPerSector;
   position.sector += tempVar;
  }
 }



 if ((position.sector >= partition->sectorsPerCluster) && flagNoError) {
  tempNextCluster = _FAT_fat_nextCluster(partition, position.cluster);
  if ((remain == 0) && (tempNextCluster == CLUSTER_EOF)) {
   position.sector = partition->sectorsPerCluster;
  } else if (!_FAT_fat_isValidCluster(partition, tempNextCluster)) {
   r->_errno = EIO;
   flagNoError = 0;
  } else {
   position.sector = 0;
   position.cluster = tempNextCluster;
  }
 }


 while ((remain >= partition->bytesPerCluster) && flagNoError) {
  uint32_t chunkEnd;
  uint32_t nextChunkStart = position.cluster;
  size_t chunkSize = 0;

  do {
   chunkEnd = nextChunkStart;
   nextChunkStart = _FAT_fat_nextCluster (partition, chunkEnd);
   chunkSize += partition->bytesPerCluster;
  } while ((nextChunkStart == chunkEnd + 1) &&



   (chunkSize + partition->bytesPerCluster <= remain));

  if (!_FAT_cache_readSectors (cache, _FAT_fat_clusterToSector (partition, position.cluster),
    chunkSize / partition->bytesPerSector, ptr))
  {
   flagNoError = 0;
   r->_errno = EIO;
   break;
  }
  ptr += chunkSize;
  remain -= chunkSize;


  if ((remain == 0) && (nextChunkStart == CLUSTER_EOF)) {
   position.sector = partition->sectorsPerCluster;
   position.cluster = chunkEnd;
  } else if (!_FAT_fat_isValidCluster(partition, nextChunkStart)) {
   r->_errno = EIO;
   flagNoError = 0;
  } else {
   position.sector = 0;
   position.cluster = nextChunkStart;
  }
 }


 tempVar = remain / partition->bytesPerSector;
 if ((tempVar > 0) && flagNoError) {
  if (!_FAT_cache_readSectors (cache, _FAT_fat_clusterToSector (partition, position.cluster),
   tempVar, ptr))
  {
   flagNoError = 0;
   r->_errno = EIO;
  } else {
   ptr += tempVar * partition->bytesPerSector;
   remain -= tempVar * partition->bytesPerSector;
   position.sector += tempVar;
  }
 }



 if ((remain > 0) && flagNoError) {
  _FAT_cache_readPartialSector ( cache, ptr,
   _FAT_fat_clusterToSector (partition, position.cluster) + position.sector, 0, remain);
  position.byte += remain;
  remain = 0;
 }


 len = len - remain;


 file->rwPosition = position;
 file->currentPosition += len;

 _FAT_unlock(&partition->lock);
 return len;
}
