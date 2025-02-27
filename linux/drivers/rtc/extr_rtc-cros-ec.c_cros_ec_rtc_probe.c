
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_8__ {int notifier_call; } ;
struct cros_ec_rtc {TYPE_6__ notifier; int rtc; struct cros_ec_device* cros_ec; } ;
struct cros_ec_device {int event_notifier; } ;
struct cros_ec_dev {struct cros_ec_device* ec_dev; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int blocking_notifier_chain_register (int *,TYPE_6__*) ;
 int cros_ec_rtc_event ;
 int cros_ec_rtc_ops ;
 int cros_ec_rtc_read_time (TYPE_1__*,struct rtc_time*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct cros_ec_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cros_ec_rtc*) ;

__attribute__((used)) static int cros_ec_rtc_probe(struct platform_device *pdev)
{
 struct cros_ec_dev *ec_dev = dev_get_drvdata(pdev->dev.parent);
 struct cros_ec_device *cros_ec = ec_dev->ec_dev;
 struct cros_ec_rtc *cros_ec_rtc;
 struct rtc_time tm;
 int ret;

 cros_ec_rtc = devm_kzalloc(&pdev->dev, sizeof(*cros_ec_rtc),
       GFP_KERNEL);
 if (!cros_ec_rtc)
  return -ENOMEM;

 platform_set_drvdata(pdev, cros_ec_rtc);
 cros_ec_rtc->cros_ec = cros_ec;


 ret = cros_ec_rtc_read_time(&pdev->dev, &tm);
 if (ret) {
  dev_err(&pdev->dev, "failed to read RTC time\n");
  return ret;
 }

 ret = device_init_wakeup(&pdev->dev, 1);
 if (ret) {
  dev_err(&pdev->dev, "failed to initialize wakeup\n");
  return ret;
 }

 cros_ec_rtc->rtc = devm_rtc_device_register(&pdev->dev, DRV_NAME,
          &cros_ec_rtc_ops,
          THIS_MODULE);
 if (IS_ERR(cros_ec_rtc->rtc)) {
  ret = PTR_ERR(cros_ec_rtc->rtc);
  dev_err(&pdev->dev, "failed to register rtc device\n");
  return ret;
 }


 cros_ec_rtc->notifier.notifier_call = cros_ec_rtc_event;
 ret = blocking_notifier_chain_register(&cros_ec->event_notifier,
            &cros_ec_rtc->notifier);
 if (ret) {
  dev_err(&pdev->dev, "failed to register notifier\n");
  return ret;
 }

 return 0;
}
