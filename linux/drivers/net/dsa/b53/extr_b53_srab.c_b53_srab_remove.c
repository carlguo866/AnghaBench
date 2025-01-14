
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct b53_srab_priv {int dummy; } ;
struct b53_device {struct b53_srab_priv* priv; } ;


 int b53_srab_intr_set (struct b53_srab_priv*,int) ;
 int b53_switch_remove (struct b53_device*) ;
 struct b53_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int b53_srab_remove(struct platform_device *pdev)
{
 struct b53_device *dev = platform_get_drvdata(pdev);
 struct b53_srab_priv *priv = dev->priv;

 b53_srab_intr_set(priv, 0);
 if (dev)
  b53_switch_remove(dev);

 return 0;
}
