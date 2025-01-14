
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char file_type; char* formatted_ext_name; void* mtime; void* crc32; void* file_size; void* alloc_size; } ;
typedef TYPE_1__ FDFSTrunkHeader ;


 int FDFS_FILE_EXT_NAME_MAX_LEN ;
 int FDFS_TRUNK_FILE_ALLOC_SIZE_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_CRC32_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_EXT_NAME_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_MTIME_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_SIZE_OFFSET ;
 int FDFS_TRUNK_FILE_FILE_TYPE_OFFSET ;
 void* buff2int (char const*) ;
 int memcpy (char*,char const*,int) ;

void trunk_unpack_header(const char *buff, FDFSTrunkHeader *pTrunkHeader)
{
 pTrunkHeader->file_type = *(buff + FDFS_TRUNK_FILE_FILE_TYPE_OFFSET);
 pTrunkHeader->alloc_size = buff2int(
   buff + FDFS_TRUNK_FILE_ALLOC_SIZE_OFFSET);
 pTrunkHeader->file_size = buff2int(
   buff + FDFS_TRUNK_FILE_FILE_SIZE_OFFSET);
 pTrunkHeader->crc32 = buff2int(
   buff + FDFS_TRUNK_FILE_FILE_CRC32_OFFSET);
 pTrunkHeader->mtime = buff2int(
   buff + FDFS_TRUNK_FILE_FILE_MTIME_OFFSET);
 memcpy(pTrunkHeader->formatted_ext_name, buff + FDFS_TRUNK_FILE_FILE_EXT_NAME_OFFSET, FDFS_FILE_EXT_NAME_MAX_LEN + 1);


 *(pTrunkHeader->formatted_ext_name+FDFS_FILE_EXT_NAME_MAX_LEN+1)='\0';
}
