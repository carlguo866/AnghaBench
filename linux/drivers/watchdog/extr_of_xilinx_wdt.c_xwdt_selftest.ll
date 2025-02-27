; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xwdt_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_of_xilinx_wdt.c_xwdt_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xwdt_device = type { i32, i64 }

@XWT_TBR_OFFSET = common dso_local global i64 0, align 8
@XWT_MAX_SELFTEST_LOOP_COUNT = common dso_local global i32 0, align 4
@XWT_TIMER_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xwdt_device*)* @xwdt_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xwdt_selftest(%struct.xwdt_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xwdt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xwdt_device* %0, %struct.xwdt_device** %3, align 8
  %7 = load %struct.xwdt_device*, %struct.xwdt_device** %3, align 8
  %8 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.xwdt_device*, %struct.xwdt_device** %3, align 8
  %11 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XWT_TBR_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @ioread32(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.xwdt_device*, %struct.xwdt_device** %3, align 8
  %17 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XWT_TBR_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @ioread32(i64 %20)
  store i64 %21, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %39, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XWT_MAX_SELFTEST_LOOP_COUNT, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %42

32:                                               ; preds = %30
  %33 = load %struct.xwdt_device*, %struct.xwdt_device** %3, align 8
  %34 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XWT_TBR_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @ioread32(i64 %37)
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %22

42:                                               ; preds = %30
  %43 = load %struct.xwdt_device*, %struct.xwdt_device** %3, align 8
  %44 = getelementptr inbounds %struct.xwdt_device, %struct.xwdt_device* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i64, i64* @XWT_TIMER_FAILED, align 8
  %51 = xor i64 %50, -1
  store i64 %51, i64* %2, align 8
  br label %54

52:                                               ; preds = %42
  %53 = load i64, i64* @XWT_TIMER_FAILED, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
