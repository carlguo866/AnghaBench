
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ad7879 {struct input_dev* input; } ;


 int ABS_PRESSURE ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void ad7879_ts_event_release(struct ad7879 *ts)
{
 struct input_dev *input_dev = ts->input;

 input_report_abs(input_dev, ABS_PRESSURE, 0);
 input_sync(input_dev);
}
