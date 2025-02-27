; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_isr_uh_routine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_isr_uh_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Can't handle UH interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @isr_uh_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isr_uh_routine(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.wilc_vif*, align 8
  %8 = alloca %struct.wilc*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %11)
  store %struct.wilc_vif* %12, %struct.wilc_vif** %7, align 8
  %13 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %14 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %13, i32 0, i32 0
  %15 = load %struct.wilc*, %struct.wilc** %14, align 8
  store %struct.wilc* %15, %struct.wilc** %8, align 8
  %16 = load %struct.wilc*, %struct.wilc** %8, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i32 @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
