
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct test_mb_ahash_data {int dummy; } ;
typedef scalar_t__ cycles_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int do_mult_ahash_op (struct test_mb_ahash_data*,int,int*) ;
 scalar_t__ get_cycles () ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int pr_cont (char*,unsigned long,int) ;

__attribute__((used)) static int test_mb_ahash_cycles(struct test_mb_ahash_data *data, int blen,
    u32 num_mb)
{
 unsigned long cycles = 0;
 int ret = 0;
 int i;
 int *rc;

 rc = kcalloc(num_mb, sizeof(*rc), GFP_KERNEL);
 if (!rc)
  return -ENOMEM;


 for (i = 0; i < 4; i++) {
  ret = do_mult_ahash_op(data, num_mb, rc);
  if (ret)
   goto out;
 }


 for (i = 0; i < 8; i++) {
  cycles_t start, end;

  start = get_cycles();
  ret = do_mult_ahash_op(data, num_mb, rc);
  end = get_cycles();

  if (ret)
   goto out;

  cycles += end - start;
 }

 pr_cont("1 operation in %lu cycles (%d bytes)\n",
  (cycles + 4) / (8 * num_mb), blen);

out:
 kfree(rc);
 return ret;
}
