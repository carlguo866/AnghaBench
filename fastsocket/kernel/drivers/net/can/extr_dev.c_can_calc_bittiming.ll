; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_calc_bittiming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_calc_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_bittiming = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"bit-timing calculation not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_bittiming*)* @can_calc_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_calc_bittiming(%struct.net_device* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_err(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  ret i32 %11
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
