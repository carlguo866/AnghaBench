
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int req ;
typedef int reply ;
struct TYPE_6__ {int MsgFlags; int TotalImageSize; int ImageType; int Function; } ;
typedef TYPE_1__ MPI2_FW_DOWNLOAD_REQUEST ;
typedef TYPE_1__ MPI2_FW_DOWNLOAD_REPLY ;


 int MPI2_FUNCTION_FW_DOWNLOAD ;
 int MPI2_FW_DOWNLOAD_ITYPE_BIOS ;
 int MPI2_FW_DOWNLOAD_ITYPE_FW ;
 int MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT ;
 int bzero (TYPE_1__*,int) ;
 scalar_t__ mps_user_command (int,TYPE_1__*,int,TYPE_1__*,int,unsigned char*,int ,int ) ;

int
mps_firmware_send(int fd, unsigned char *fw, uint32_t len, bool bios)
{
 MPI2_FW_DOWNLOAD_REQUEST req;
 MPI2_FW_DOWNLOAD_REPLY reply;

 bzero(&req, sizeof(req));
 bzero(&reply, sizeof(reply));
 req.Function = MPI2_FUNCTION_FW_DOWNLOAD;
 req.ImageType = bios ? MPI2_FW_DOWNLOAD_ITYPE_BIOS : MPI2_FW_DOWNLOAD_ITYPE_FW;
 req.TotalImageSize = len;
 req.MsgFlags = MPI2_FW_DOWNLOAD_MSGFLGS_LAST_SEGMENT;

 if (mps_user_command(fd, &req, sizeof(req), &reply, sizeof(reply),
     fw, len, 0)) {
  return (-1);
 }
 return (0);
}
