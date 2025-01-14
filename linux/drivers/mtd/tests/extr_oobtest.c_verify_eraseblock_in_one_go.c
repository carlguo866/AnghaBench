
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_oob_ops {size_t ooblen; size_t oobretlen; scalar_t__ oobbuf; int * datbuf; scalar_t__ ooboffs; scalar_t__ retlen; int len; int mode; } ;
typedef int loff_t ;
struct TYPE_3__ {int erasesize; int oobavail; int writesize; } ;


 int MTD_OPS_AUTO_OOB ;
 size_t bitflip_limit ;
 int errcnt ;
 size_t memcmpshow (int,scalar_t__,scalar_t__,size_t) ;
 TYPE_1__* mtd ;
 scalar_t__ mtd_is_bitflip (int) ;
 int mtd_read_oob (TYPE_1__*,int,struct mtd_oob_ops*) ;
 int pgcnt ;
 int pr_err (char*,...) ;
 int pr_info (char*) ;
 int prandom_bytes_state (int *,scalar_t__,size_t) ;
 scalar_t__ readbuf ;
 int rnd_state ;
 scalar_t__ writebuf ;

__attribute__((used)) static int verify_eraseblock_in_one_go(int ebnum)
{
 struct mtd_oob_ops ops;
 int err = 0;
 loff_t addr = (loff_t)ebnum * mtd->erasesize;
 size_t len = mtd->oobavail * pgcnt;
 size_t oobavail = mtd->oobavail;
 size_t bitflips;
 int i;

 prandom_bytes_state(&rnd_state, writebuf, len);
 ops.mode = MTD_OPS_AUTO_OOB;
 ops.len = 0;
 ops.retlen = 0;
 ops.ooblen = len;
 ops.oobretlen = 0;
 ops.ooboffs = 0;
 ops.datbuf = ((void*)0);
 ops.oobbuf = readbuf;


 err = mtd_read_oob(mtd, addr, &ops);
 if (mtd_is_bitflip(err))
  err = 0;

 if (err || ops.oobretlen != len) {
  pr_err("error: readoob failed at %#llx\n",
         (long long)addr);
  errcnt += 1;
  return err ? err : -1;
 }


 for (i = 0; i < pgcnt; ++i, addr += mtd->writesize) {
  bitflips = memcmpshow(addr, readbuf + (i * oobavail),
          writebuf + (i * oobavail), oobavail);
  if (bitflips > bitflip_limit) {
   pr_err("error: verify failed at %#llx\n",
          (long long)addr);
   errcnt += 1;
   if (errcnt > 1000) {
    pr_err("error: too many errors\n");
    return -1;
   }
  } else if (bitflips) {
   pr_info("ignoring error as within bitflip_limit\n");
  }
 }

 return err;
}
