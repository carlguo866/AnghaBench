; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_wdt_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp805_wdt.c_wdt_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.sp805_wdt = type { i32, i32, i64, i64 }

@WDTVALUE = common dso_local global i64 0, align 8
@WDTRIS = common dso_local global i64 0, align 8
@INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wdt_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.sp805_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.sp805_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.sp805_wdt* %6, %struct.sp805_wdt** %3, align 8
  %7 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %8 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WDTVALUE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl_relaxed(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %17 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WDTRIS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  %22 = load i32, i32* @INT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %27 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %36 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.sp805_wdt*, %struct.sp805_wdt** %3, align 8
  %40 = getelementptr inbounds %struct.sp805_wdt, %struct.sp805_wdt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @div_u64(i32 %38, i32 %41)
  ret i32 %42
}

declare dso_local %struct.sp805_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
