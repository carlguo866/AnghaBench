
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void usage(const char *error)
{
 if (error)
  printf("invalid option: %s\n", error);
 printf("timestamping interface option*\n\n"
        "Options:\n"
        "  IP_MULTICAST_LOOP - looping outgoing multicasts\n"
        "  SO_TIMESTAMP - normal software time stamping, ms resolution\n"
        "  SO_TIMESTAMPNS - more accurate software time stamping\n"
        "  SOF_TIMESTAMPING_TX_HARDWARE - hardware time stamping of outgoing packets\n"
        "  SOF_TIMESTAMPING_TX_SOFTWARE - software fallback for outgoing packets\n"
        "  SOF_TIMESTAMPING_RX_HARDWARE - hardware time stamping of incoming packets\n"
        "  SOF_TIMESTAMPING_RX_SOFTWARE - software fallback for incoming packets\n"
        "  SOF_TIMESTAMPING_SOFTWARE - request reporting of software time stamps\n"
        "  SOF_TIMESTAMPING_SYS_HARDWARE - request reporting of transformed HW time stamps\n"
        "  SOF_TIMESTAMPING_RAW_HARDWARE - request reporting of raw HW time stamps\n"
        "  SIOCGSTAMP - check last socket time stamp\n"
        "  SIOCGSTAMPNS - more accurate socket time stamp\n");
 exit(1);
}
