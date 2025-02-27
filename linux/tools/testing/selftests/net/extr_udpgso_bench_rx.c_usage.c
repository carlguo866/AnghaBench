
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (int,int ,char*,char const*) ;

__attribute__((used)) static void usage(const char *filepath)
{
 error(1, 0, "Usage: %s [-C connect_timeout] [-Grtv] [-b addr] [-p port]"
       " [-l pktlen] [-n packetnr] [-R rcv_timeout] [-S gsosize]",
       filepath);
}
