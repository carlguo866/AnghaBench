
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; int host; void* tos; void* count; void* data_size; void* interval; void* timeout; } ;


 int ESP_ERROR_CHECK (int ) ;
 void* arg_dbl0 (char*,char*,char*,char*) ;
 int arg_end (int) ;
 void* arg_int0 (char*,char*,char*,char*) ;
 int arg_str1 (int *,int *,char*,char*) ;
 int do_ping_cmd ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ ping_args ;

void register_ping(void)
{
    ping_args.timeout = arg_dbl0("W", "timeout", "<t>", "Time to wait for a response, in seconds");
    ping_args.interval = arg_dbl0("i", "interval", "<t>", "Wait interval seconds between sending each packet");
    ping_args.data_size = arg_int0("s", "size", "<n>", "Specify the number of data bytes to be sent");
    ping_args.count = arg_int0("c", "count", "<n>", "Stop after sending count packets");
    ping_args.tos = arg_int0("Q", "tos", "<n>", "Set Type of Service related bits in IP datagrams");
    ping_args.host = arg_str1(((void*)0), ((void*)0), "<host>", "Host address");
    ping_args.end = arg_end(1);
    const esp_console_cmd_t ping_cmd = {
        .command = "ping",
        .help = "send ICMP ECHO_REQUEST to network hosts",
        .hint = ((void*)0),
        .func = &do_ping_cmd,
        .argtable = &ping_args
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&ping_cmd));
}
