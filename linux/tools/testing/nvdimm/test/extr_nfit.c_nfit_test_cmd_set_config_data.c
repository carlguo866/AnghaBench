
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nd_cmd_set_config_hdr {unsigned int in_offset; int in_length; int in_buf; } ;


 int EINVAL ;
 unsigned int LABEL_SIZE ;
 int memcpy (void*,int ,unsigned int) ;
 unsigned int min (int,unsigned int) ;

__attribute__((used)) static int nfit_test_cmd_set_config_data(struct nd_cmd_set_config_hdr *nd_cmd,
  unsigned int buf_len, void *label)
{
 unsigned int len, offset = nd_cmd->in_offset;
 u32 *status;
 int rc;

 if (buf_len < sizeof(*nd_cmd))
  return -EINVAL;
 if (offset >= LABEL_SIZE)
  return -EINVAL;
 if (nd_cmd->in_length + sizeof(*nd_cmd) + 4 > buf_len)
  return -EINVAL;

 status = (void *)nd_cmd + nd_cmd->in_length + sizeof(*nd_cmd);
 *status = 0;
 len = min(nd_cmd->in_length, LABEL_SIZE - offset);
 memcpy(label + offset, nd_cmd->in_buf, len);
 rc = buf_len - sizeof(*nd_cmd) - (len + 4);

 return rc;
}
