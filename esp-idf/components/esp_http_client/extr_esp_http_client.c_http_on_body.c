
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* data; } ;
typedef TYPE_3__ http_parser ;
struct TYPE_10__ {TYPE_2__* response; } ;
typedef TYPE_4__ esp_http_client_t ;
struct TYPE_8__ {size_t data_process; TYPE_1__* buffer; } ;
struct TYPE_7__ {char* raw_data; size_t raw_len; scalar_t__ output_ptr; } ;


 int ESP_LOGD (int ,char*,size_t) ;
 int HTTP_EVENT_ON_DATA ;
 int TAG ;
 int http_dispatch_event (TYPE_4__*,int ,void*,size_t) ;
 int memcpy (scalar_t__,char*,size_t) ;

__attribute__((used)) static int http_on_body(http_parser *parser, const char *at, size_t length)
{
    esp_http_client_t *client = parser->data;
    ESP_LOGD(TAG, "http_on_body %d", length);
    client->response->buffer->raw_data = (char *)at;
    if (client->response->buffer->output_ptr) {
        memcpy(client->response->buffer->output_ptr, (char *)at, length);
        client->response->buffer->output_ptr += length;
    }

    client->response->data_process += length;
    client->response->buffer->raw_len += length;
    http_dispatch_event(client, HTTP_EVENT_ON_DATA, (void *)at, length);
    return 0;
}
