
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mmc_pwrseq_simple {int pwrseq; } ;


 int mmc_pwrseq_unregister (int *) ;
 struct mmc_pwrseq_simple* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mmc_pwrseq_simple_remove(struct platform_device *pdev)
{
 struct mmc_pwrseq_simple *pwrseq = platform_get_drvdata(pdev);

 mmc_pwrseq_unregister(&pwrseq->pwrseq);

 return 0;
}
