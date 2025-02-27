
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int first; } ;
struct TYPE_9__ {TYPE_1__ buffer; } ;
struct TYPE_8__ {int file_fd; TYPE_4__ content_sender; int sock; scalar_t__ content_sender_initialized; } ;
typedef TYPE_2__ php_cli_server_client ;
typedef int php_cli_server ;


 int FAILURE ;
 int SOCK_EAGAIN ;
 int SUCCESS ;
 int close (int) ;
 int php_cli_server_close_connection (int *,TYPE_2__*) ;
 scalar_t__ php_cli_server_content_sender_pull (TYPE_4__*,int,size_t*) ;
 int php_cli_server_content_sender_send (TYPE_4__*,int ,size_t*) ;

__attribute__((used)) static int php_cli_server_send_event(php_cli_server *server, php_cli_server_client *client)
{
 if (client->content_sender_initialized) {
  if (client->file_fd >= 0 && !client->content_sender.buffer.first) {
   size_t nbytes_read;
   if (php_cli_server_content_sender_pull(&client->content_sender, client->file_fd, &nbytes_read)) {
    php_cli_server_close_connection(server, client);
    return FAILURE;
   }
   if (nbytes_read == 0) {
    close(client->file_fd);
    client->file_fd = -1;
   }
  }
  {
   size_t nbytes_sent;
   int err = php_cli_server_content_sender_send(&client->content_sender, client->sock, &nbytes_sent);
   if (err && err != SOCK_EAGAIN) {
    php_cli_server_close_connection(server, client);
    return FAILURE;
   }
  }
  if (!client->content_sender.buffer.first && client->file_fd < 0) {
   php_cli_server_close_connection(server, client);
  }
 }
 return SUCCESS;
}
