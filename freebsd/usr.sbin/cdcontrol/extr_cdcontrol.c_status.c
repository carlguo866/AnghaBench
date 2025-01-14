
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct ioc_read_subchannel {int data_len; struct cd_sub_channel_info* data; int data_format; int address_format; } ;
struct TYPE_10__ {int audio_status; } ;
struct TYPE_6__ {int minute; int second; int frame; } ;
struct TYPE_7__ {int lba; TYPE_1__ msf; } ;
struct TYPE_8__ {int track_number; TYPE_2__ reladdr; } ;
struct TYPE_9__ {TYPE_3__ position; } ;
struct cd_sub_channel_info {TYPE_5__ header; TYPE_4__ what; } ;
typedef int s ;
typedef int data ;


 int CDIOCREADSUBCHANNEL ;
 int CD_CURRENT_POSITION ;
 int CD_LBA_FORMAT ;
 int CD_MSF_FORMAT ;
 int bzero (struct ioc_read_subchannel*,int) ;
 int fd ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int lba2msf (int ,int*,int*,int*) ;
 scalar_t__ msf ;
 int ntohl (int ) ;

__attribute__((used)) static int
status(int *trk, int *min, int *sec, int *frame)
{
 struct ioc_read_subchannel s;
 struct cd_sub_channel_info data;
 u_char mm, ss, ff;

 bzero (&s, sizeof (s));
 s.data = &data;
 s.data_len = sizeof (data);
 s.address_format = msf ? CD_MSF_FORMAT : CD_LBA_FORMAT;
 s.data_format = CD_CURRENT_POSITION;

 if (ioctl (fd, CDIOCREADSUBCHANNEL, (char *) &s) < 0)
  return -1;

 *trk = s.data->what.position.track_number;
 if (msf) {
  *min = s.data->what.position.reladdr.msf.minute;
  *sec = s.data->what.position.reladdr.msf.second;
  *frame = s.data->what.position.reladdr.msf.frame;
 } else {
  lba2msf(ntohl(s.data->what.position.reladdr.lba),
   &mm, &ss, &ff);
  *min = mm;
  *sec = ss;
  *frame = ff;
 }

 return s.data->header.audio_status;
}
