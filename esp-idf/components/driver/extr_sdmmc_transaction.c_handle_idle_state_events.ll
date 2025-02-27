; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_transaction.c_handle_idle_state_events.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_transaction.c_handle_idle_state_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@ESP_OK = common dso_local global i64 0, align 8
@SDMMC_INTMASK_CD = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"card detect event\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"handle_idle_state_events unhandled: %08x %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @handle_idle_state_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handle_idle_state_events() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  br label %2

2:                                                ; preds = %35, %0
  %3 = call i64 @sdmmc_host_wait_for_event(i32 0, %struct.TYPE_3__* %1)
  %4 = load i64, i64* @ESP_OK, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SDMMC_INTMASK_CD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 @ESP_LOGV(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @SDMMC_INTMASK_CD, align 4
  %16 = xor i32 %15, -1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %16
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %12, %6
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @TAG, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %33)
  br label %35

35:                                               ; preds = %28, %24
  br label %2

36:                                               ; preds = %2
  %37 = load i64, i64* @ESP_OK, align 8
  ret i64 %37
}

declare dso_local i64 @sdmmc_host_wait_for_event(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ESP_LOGV(i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
