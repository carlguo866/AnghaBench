
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void usage(const char *cmd, int exit_status)
{
    printf("Usage: %s [options] <upstream-host> <upstream-port>\n"
           "\n"
           "Options:\n"
           "  -b <buffersize> size of the buffer for packets upstream (default: 16)\n"
           "  -B <buffersize> size of the buffer for packets downstream (default: 16)\n"
           "  -i <interval>   delay (in microseconds) to insert after sending one packet\n"
           "                  upstream (default: 10)\n"
           "  -I <interval>   delay (in microseconds) to insert after sending one packet\n"
           "                  downstream (default: 10)\n"
           "  -p <interval>   propagation delay (in microseconds) upstream (default: 0)\n"
           "  -P <interval>   propagation delay (in microseconds) downstream (default: 0)\n"
           "  -l <port>       port number to which the command binds\n"
           "  -d <packetnum>  packet number in connection to drop upstream\n"
           "  -D <packetnum>  packet number in connection to drop downstream\n"
           "  -h              prints this help\n"
           "\n",
           cmd);
    exit(exit_status);
}
