; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_channel_switch_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_channel_switch_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i64 }
%struct.wsm_buf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_buf*)* @wsm_channel_switch_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_channel_switch_indication(%struct.cw1200_common* %0, %struct.wsm_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_buf* %1, %struct.wsm_buf** %5, align 8
  %6 = load %struct.wsm_buf*, %struct.wsm_buf** %5, align 8
  %7 = call i32 @WSM_GET32(%struct.wsm_buf* %6)
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 0
  %13 = call i32 @wake_up(i32* %12)
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %15 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %14)
  store i32 0, i32* %3, align 4
  br label %19

16:                                               ; No predecessors!
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
