
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsn_ie {int id; int size; int* body; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct iw_event {TYPE_2__ u; int cmd; } ;
typedef int rsn_leader ;


 int IWEVCUSTOM ;
 int RSN_IE_BODY_MAX ;
 char* iwe_stream_add_point (struct iw_request_info*,char*,char*,struct iw_event*,char*) ;
 int memcpy (char*,char const*,int) ;
 int memset (struct iw_event*,int ,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *ks_wlan_add_leader_event(const char *rsn_leader, char *end_buf,
          char *current_ev, struct rsn_ie *rsn,
          struct iw_event *iwe,
          struct iw_request_info *info)
{
 char buffer[RSN_IE_BODY_MAX * 2 + 30];
 char *pbuf;
 int i;

 pbuf = &buffer[0];
 memset(iwe, 0, sizeof(*iwe));
 iwe->cmd = IWEVCUSTOM;
 memcpy(buffer, rsn_leader, sizeof(rsn_leader) - 1);
 iwe->u.data.length += sizeof(rsn_leader) - 1;
 pbuf += sizeof(rsn_leader) - 1;
 pbuf += sprintf(pbuf, "%02x", rsn->id);
 pbuf += sprintf(pbuf, "%02x", rsn->size);
 iwe->u.data.length += 4;

 for (i = 0; i < rsn->size; i++)
  pbuf += sprintf(pbuf, "%02x", rsn->body[i]);

 iwe->u.data.length += rsn->size * 2;

 return iwe_stream_add_point(info, current_ev, end_buf, iwe, &buffer[0]);
}
