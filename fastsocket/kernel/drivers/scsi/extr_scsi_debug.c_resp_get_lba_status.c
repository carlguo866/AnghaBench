
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int * cmnd; } ;


 int SDEBUG_GET_LBA_STATUS_LEN ;
 int check_device_access_params (struct sdebug_dev_info*,unsigned long long,int) ;
 int check_readiness (struct scsi_cmnd*,int,struct sdebug_dev_info*) ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 unsigned int get_unaligned_be32 (int *) ;
 unsigned long long get_unaligned_be64 (int *) ;
 unsigned int map_state (unsigned long long,unsigned int*) ;
 int memset (unsigned char*,int ,int) ;
 int put_unaligned_be32 (unsigned int,unsigned char*) ;
 int put_unaligned_be64 (unsigned long long,unsigned char*) ;

__attribute__((used)) static int resp_get_lba_status(struct scsi_cmnd * scmd,
          struct sdebug_dev_info * devip)
{
 unsigned long long lba;
 unsigned int alloc_len, mapped, num;
 unsigned char arr[SDEBUG_GET_LBA_STATUS_LEN];
 int ret;

 ret = check_readiness(scmd, 1, devip);
 if (ret)
  return ret;

 lba = get_unaligned_be64(&scmd->cmnd[2]);
 alloc_len = get_unaligned_be32(&scmd->cmnd[10]);

 if (alloc_len < 24)
  return 0;

 ret = check_device_access_params(devip, lba, 1);
 if (ret)
  return ret;

 mapped = map_state(lba, &num);

 memset(arr, 0, SDEBUG_GET_LBA_STATUS_LEN);
 put_unaligned_be32(16, &arr[0]);
 put_unaligned_be64(lba, &arr[8]);
 put_unaligned_be32(num, &arr[16]);
 arr[20] = !mapped;

 return fill_from_dev_buffer(scmd, arr, SDEBUG_GET_LBA_STATUS_LEN);
}
