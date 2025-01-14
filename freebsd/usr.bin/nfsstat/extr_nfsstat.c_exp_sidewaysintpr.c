
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint64_t ;
typedef int u_int ;
struct timespec {long double tv_sec; scalar_t__ tv_nsec; } ;
struct nfsstatsv1 {void* vers; } ;
typedef int lasttotal ;
typedef int lastst ;


 int CLOCK_MONOTONIC ;
 scalar_t__ DELTA (int ) ;
 size_t NFSPROC_ACCESS ;
 size_t NFSPROC_GETATTR ;
 size_t NFSPROC_LOOKUP ;
 size_t NFSPROC_READ ;
 size_t NFSPROC_READDIR ;
 size_t NFSPROC_READDIRPLUS ;
 size_t NFSPROC_READLINK ;
 size_t NFSPROC_RENAME ;
 size_t NFSPROC_WRITE ;
 void* NFSSTATS_V1 ;
 int NFSSVC_GETSTATS ;
 int NFSSVC_NEWSTRUCT ;
 size_t NFSV4OP_ACCESS ;
 size_t NFSV4OP_GETATTR ;
 size_t NFSV4OP_LOOKUP ;
 size_t NFSV4OP_READ ;
 size_t NFSV4OP_READDIR ;
 size_t NFSV4OP_READDIRPLUS ;
 size_t NFSV4OP_READLINK ;
 size_t NFSV4OP_RENAME ;
 size_t NFSV4OP_WRITE ;
 int NUM_STAT_TYPES ;
 int STAT_TYPE_COMMIT ;
 int STAT_TYPE_TO_NFS (int) ;
 int accesscache_hits ;
 int accesscache_misses ;
 int attrcache_hits ;
 int attrcache_misses ;
 int bcopy (struct nfsstatsv1*,struct nfsstatsv1*,int) ;
 int biocache_readdirs ;
 int biocache_reads ;
 int biocache_writes ;
 int clock_gettime (int ,struct timespec*) ;
 int compute_new_stats (struct nfsstatsv1*,struct nfsstatsv1*,int ,long double,long double*,long double*,long double*,long double*,int *,long double*) ;
 int compute_totals (struct nfsstatsv1*,struct nfsstatsv1*) ;
 int err (int,char*) ;
 int fflush (int ) ;
 int lookupcache_hits ;
 int lookupcache_misses ;
 scalar_t__ nfssvc (int,struct nfsstatsv1*) ;
 int printf (char*,...) ;
 int printhdr (int,int,int) ;
 int read_bios ;
 int readdir_bios ;
 int * rpccnt ;
 int sleep (int ) ;
 char* sperc1 (scalar_t__,scalar_t__) ;
 char* sperc2 (scalar_t__,scalar_t__) ;
 int * srvrpccnt ;
 int stdout ;
 scalar_t__ widemode ;
 int write_bios ;

__attribute__((used)) static void
exp_sidewaysintpr(u_int interval, int clientOnly, int serverOnly,
    int newStats)
{
 struct nfsstatsv1 nfsstats, lastst, *ext_nfsstatsp;
 struct nfsstatsv1 curtotal, lasttotal;
 struct timespec ts, lastts;
 int hdrcnt = 1;

 ext_nfsstatsp = &lastst;
 ext_nfsstatsp->vers = NFSSTATS_V1;
 if (nfssvc(NFSSVC_GETSTATS | NFSSVC_NEWSTRUCT, ext_nfsstatsp) < 0)
  err(1, "Can't get stats");
 clock_gettime(CLOCK_MONOTONIC, &lastts);
 compute_totals(&lasttotal, ext_nfsstatsp);
 sleep(interval);

 for (;;) {
  ext_nfsstatsp = &nfsstats;
  ext_nfsstatsp->vers = NFSSTATS_V1;
  if (nfssvc(NFSSVC_GETSTATS | NFSSVC_NEWSTRUCT, ext_nfsstatsp)
      < 0)
   err(1, "Can't get stats");
  clock_gettime(CLOCK_MONOTONIC, &ts);

  if (--hdrcnt == 0) {
   printhdr(clientOnly, serverOnly, newStats);
   if (newStats)
    hdrcnt = 20;
   else if (clientOnly && serverOnly)
    hdrcnt = 10;
   else
    hdrcnt = 20;
  }
  if (clientOnly && newStats == 0) {
      printf("%s %6ju %6ju %6ju %6ju %6ju %6ju %6ju %6ju",
   ((clientOnly && serverOnly) ? "Client:" : ""),
   (uintmax_t)DELTA(rpccnt[NFSPROC_GETATTR]),
   (uintmax_t)DELTA(rpccnt[NFSPROC_LOOKUP]),
   (uintmax_t)DELTA(rpccnt[NFSPROC_READLINK]),
   (uintmax_t)DELTA(rpccnt[NFSPROC_READ]),
   (uintmax_t)DELTA(rpccnt[NFSPROC_WRITE]),
   (uintmax_t)DELTA(rpccnt[NFSPROC_RENAME]),
   (uintmax_t)DELTA(rpccnt[NFSPROC_ACCESS]),
   (uintmax_t)(DELTA(rpccnt[NFSPROC_READDIR]) +
   DELTA(rpccnt[NFSPROC_READDIRPLUS]))
      );
      if (widemode) {
       printf(" %s %s %s %s %s %s",
    sperc1(DELTA(attrcache_hits),
        DELTA(attrcache_misses)),
    sperc1(DELTA(lookupcache_hits),
        DELTA(lookupcache_misses)),
    sperc2(DELTA(biocache_reads),
        DELTA(read_bios)),
    sperc2(DELTA(biocache_writes),
        DELTA(write_bios)),
    sperc1(DELTA(accesscache_hits),
        DELTA(accesscache_misses)),
    sperc2(DELTA(biocache_readdirs),
        DELTA(readdir_bios))
       );
      }
      printf("\n");
  }

  if (serverOnly && newStats) {
   long double cur_secs, last_secs, etime;
   long double mbsec;
   long double kb_per_transfer;
   long double transfers_per_second;
   long double ms_per_transfer;
   uint64_t queue_len;
   long double busy_pct;
   int i;

   cur_secs = ts.tv_sec +
       ((long double)ts.tv_nsec / 1000000000);
   last_secs = lastts.tv_sec +
       ((long double)lastts.tv_nsec / 1000000000);
   etime = cur_secs - last_secs;

   compute_totals(&curtotal, &nfsstats);

   for (i = 0; i < NUM_STAT_TYPES; i++) {
    compute_new_stats(&nfsstats, &lastst,
        STAT_TYPE_TO_NFS(i), etime, &mbsec,
        &kb_per_transfer,
        &transfers_per_second,
        &ms_per_transfer, &queue_len,
        &busy_pct);

    if (i == STAT_TYPE_COMMIT) {
     if (widemode == 0)
      continue;

     printf("%2.0Lf %7.2Lf ",
         transfers_per_second,
         ms_per_transfer);
    } else {
     printf("%5.2Lf %5.0Lf %7.2Lf ",
         kb_per_transfer,
         transfers_per_second, mbsec);
     if (widemode)
      printf("%5.2Lf ",
          ms_per_transfer);
    }
   }

   compute_new_stats(&curtotal, &lasttotal, 0, etime,
       &mbsec, &kb_per_transfer, &transfers_per_second,
       &ms_per_transfer, &queue_len, &busy_pct);

   printf("%5.2Lf %5.0Lf %7.2Lf %5.2Lf %3ju %3.0Lf\n",
       kb_per_transfer, transfers_per_second, mbsec,
       ms_per_transfer, queue_len, busy_pct);
  } else if (serverOnly) {
      printf("%s %6ju %6ju %6ju %6ju %6ju %6ju %6ju %6ju",
   ((clientOnly && serverOnly) ? "Server:" : ""),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_GETATTR]),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_LOOKUP]),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_READLINK]),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_READ]),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_WRITE]),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_RENAME]),
   (uintmax_t)DELTA(srvrpccnt[NFSV4OP_ACCESS]),
   (uintmax_t)(DELTA(srvrpccnt[NFSV4OP_READDIR]) +
   DELTA(srvrpccnt[NFSV4OP_READDIRPLUS])));
      printf("\n");
  }
  bcopy(&nfsstats, &lastst, sizeof(lastst));
  bcopy(&curtotal, &lasttotal, sizeof(lasttotal));
  lastts = ts;
  fflush(stdout);
  sleep(interval);
 }

}
