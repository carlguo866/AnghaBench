; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_svc_watchdog.c_gb_svc_watchdog_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_svc = type { %struct.gb_svc_watchdog* }
%struct.gb_svc_watchdog = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@SVC_WATCHDOG_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_svc_watchdog_enable(%struct.gb_svc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_svc*, align 8
  %4 = alloca %struct.gb_svc_watchdog*, align 8
  store %struct.gb_svc* %0, %struct.gb_svc** %3, align 8
  %5 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %6 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %5, i32 0, i32 0
  %7 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %6, align 8
  %8 = icmp ne %struct.gb_svc_watchdog* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.gb_svc*, %struct.gb_svc** %3, align 8
  %14 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %13, i32 0, i32 0
  %15 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %14, align 8
  store %struct.gb_svc_watchdog* %15, %struct.gb_svc_watchdog** %4, align 8
  %16 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %17 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %28

21:                                               ; preds = %12
  %22 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %23 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.gb_svc_watchdog*, %struct.gb_svc_watchdog** %4, align 8
  %25 = getelementptr inbounds %struct.gb_svc_watchdog, %struct.gb_svc_watchdog* %24, i32 0, i32 1
  %26 = load i32, i32* @SVC_WATCHDOG_PERIOD, align 4
  %27 = call i32 @schedule_delayed_work(i32* %25, i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %20, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
