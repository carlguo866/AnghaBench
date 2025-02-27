; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sofirq_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sofirq_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sl811 = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SL11H_INTMASK_SOFINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sof irq on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sl811*)* @sofirq_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sofirq_on(%struct.sl811* %0) #0 {
  %2 = alloca %struct.sl811*, align 8
  store %struct.sl811* %0, %struct.sl811** %2, align 8
  %3 = load %struct.sl811*, %struct.sl811** %2, align 8
  %4 = getelementptr inbounds %struct.sl811, %struct.sl811* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SL11H_INTMASK_SOFINTR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.sl811*, %struct.sl811** %2, align 8
  %12 = call %struct.TYPE_4__* @sl811_to_hcd(%struct.sl811* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @SL11H_INTMASK_SOFINTR, align 4
  %18 = load %struct.sl811*, %struct.sl811** %2, align 8
  %19 = getelementptr inbounds %struct.sl811, %struct.sl811* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @sl811_to_hcd(%struct.sl811*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
