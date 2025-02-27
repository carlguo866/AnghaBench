
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbd_response {int dummy; } ;
struct smbd_connection {int response_mempool; } ;


 struct smbd_response* get_empty_queue_buffer (struct smbd_connection*) ;
 struct smbd_response* get_receive_buffer (struct smbd_connection*) ;
 int mempool_free (struct smbd_response*,int ) ;

__attribute__((used)) static void destroy_receive_buffers(struct smbd_connection *info)
{
 struct smbd_response *response;

 while ((response = get_receive_buffer(info)))
  mempool_free(response, info->response_mempool);

 while ((response = get_empty_queue_buffer(info)))
  mempool_free(response, info->response_mempool);
}
