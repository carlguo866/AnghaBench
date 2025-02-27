
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_user {TYPE_2__* intf; } ;
struct TYPE_4__ {TYPE_1__* addrinfo; } ;
struct TYPE_3__ {unsigned char lun; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int IPMI_MAX_CHANNELS ;
 struct ipmi_user* acquire_ipmi_user (struct ipmi_user*,int*) ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;
 int release_ipmi_user (struct ipmi_user*,int) ;

int ipmi_get_my_LUN(struct ipmi_user *user,
      unsigned int channel,
      unsigned char *address)
{
 int index, rv = 0;

 user = acquire_ipmi_user(user, &index);
 if (!user)
  return -ENODEV;

 if (channel >= IPMI_MAX_CHANNELS) {
  rv = -EINVAL;
 } else {
  channel = array_index_nospec(channel, IPMI_MAX_CHANNELS);
  *address = user->intf->addrinfo[channel].lun;
 }
 release_ipmi_user(user, index);

 return rv;
}
