
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iqs5xx_private {int client; } ;
struct input_dev {int dummy; } ;


 int IQS5XX_SUSPEND ;
 struct iqs5xx_private* input_get_drvdata (struct input_dev*) ;
 int iqs5xx_set_state (int ,int ) ;

__attribute__((used)) static void iqs5xx_close(struct input_dev *input)
{
 struct iqs5xx_private *iqs5xx = input_get_drvdata(input);

 iqs5xx_set_state(iqs5xx->client, IQS5XX_SUSPEND);
}
