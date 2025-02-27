; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DEV_EVENT_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctcm_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ctcm_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load %struct.ctcm_priv*, %struct.ctcm_priv** %5, align 8
  store %struct.ctcm_priv* %6, %struct.ctcm_priv** %3, align 8
  %7 = load i32, i32* @SETUP, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @CTCMY_DBF_DEV_NAME(i32 %7, %struct.net_device* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %11 = call i32 @IS_MPC(%struct.ctcm_priv* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DEV_EVENT_START, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @fsm_event(i32 %16, i32 %17, %struct.net_device* %18)
  br label %20

20:                                               ; preds = %13, %1
  ret i32 0
}

declare dso_local i32 @CTCMY_DBF_DEV_NAME(i32, %struct.net_device*, i8*) #1

declare dso_local i32 @IS_MPC(%struct.ctcm_priv*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
