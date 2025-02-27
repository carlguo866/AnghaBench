
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int (* init ) (struct hwrng*) ;scalar_t__ quality; int cleanup_done; int ref; } ;


 int add_early_randomness (struct hwrng*) ;
 int current_quality ;
 int default_quality ;
 scalar_t__ hwrng_fill ;
 scalar_t__ kref_get_unless_zero (int *) ;
 int kref_init (int *) ;
 int kthread_stop (scalar_t__) ;
 int reinit_completion (int *) ;
 int start_khwrngd () ;
 int stub1 (struct hwrng*) ;

__attribute__((used)) static int hwrng_init(struct hwrng *rng)
{
 if (kref_get_unless_zero(&rng->ref))
  goto skip_init;

 if (rng->init) {
  int ret;

  ret = rng->init(rng);
  if (ret)
   return ret;
 }

 kref_init(&rng->ref);
 reinit_completion(&rng->cleanup_done);

skip_init:
 add_early_randomness(rng);

 current_quality = rng->quality ? : default_quality;
 if (current_quality > 1024)
  current_quality = 1024;

 if (current_quality == 0 && hwrng_fill)
  kthread_stop(hwrng_fill);
 if (current_quality > 0 && !hwrng_fill)
  start_khwrngd();

 return 0;
}
