
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct wsm_mib {size_t mib_id; void* buf; size_t buf_size; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {struct wsm_buf wsm_cmd_buf; } ;


 int ENOMEM ;
 int WSM_CMD_TIMEOUT ;
 int WSM_PUT (struct wsm_buf*,void*,size_t) ;
 int WSM_PUT16 (struct wsm_buf*,size_t) ;
 int WSM_WRITE_MIB_REQ_ID ;
 int wsm_cmd_lock (struct cw1200_common*) ;
 int wsm_cmd_send (struct cw1200_common*,struct wsm_buf*,struct wsm_mib*,int ,int ) ;
 int wsm_cmd_unlock (struct cw1200_common*) ;

int wsm_write_mib(struct cw1200_common *priv, u16 mib_id, void *_buf,
   size_t buf_size)
{
 int ret;
 struct wsm_buf *buf = &priv->wsm_cmd_buf;
 struct wsm_mib mib_buf = {
  .mib_id = mib_id,
  .buf = _buf,
  .buf_size = buf_size,
 };

 wsm_cmd_lock(priv);

 WSM_PUT16(buf, mib_id);
 WSM_PUT16(buf, buf_size);
 WSM_PUT(buf, _buf, buf_size);

 ret = wsm_cmd_send(priv, buf, &mib_buf,
      WSM_WRITE_MIB_REQ_ID, WSM_CMD_TIMEOUT);
 wsm_cmd_unlock(priv);
 return ret;

nomem:
 wsm_cmd_unlock(priv);
 return -ENOMEM;
}
