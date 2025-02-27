; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-dmt.c_dmt_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pic32-dmt.c_dmt_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_dmt = type { i64 }

@DMT_STEP1_KEY = common dso_local global i32 0, align 4
@DMTPRECLR_REG = common dso_local global i64 0, align 8
@DMTSTAT_REG = common dso_local global i64 0, align 8
@DMTSTAT_WINOPN = common dso_local global i32 0, align 4
@DMT_STEP2_KEY = common dso_local global i32 0, align 4
@DMTCLR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pic32_dmt*)* @dmt_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmt_keepalive(%struct.pic32_dmt* %0) #0 {
  %2 = alloca %struct.pic32_dmt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pic32_dmt* %0, %struct.pic32_dmt** %2, align 8
  store i32 500, i32* %4, align 4
  %5 = load i32, i32* @DMT_STEP1_KEY, align 4
  %6 = shl i32 %5, 8
  %7 = load %struct.pic32_dmt*, %struct.pic32_dmt** %2, align 8
  %8 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DMTPRECLR_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.pic32_dmt*, %struct.pic32_dmt** %2, align 8
  %19 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMTSTAT_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* @DMTSTAT_WINOPN, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DMTSTAT_WINOPN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %31

30:                                               ; preds = %17
  br label %13

31:                                               ; preds = %29, %13
  %32 = load i32, i32* @DMT_STEP2_KEY, align 4
  %33 = load %struct.pic32_dmt*, %struct.pic32_dmt** %2, align 8
  %34 = getelementptr inbounds %struct.pic32_dmt, %struct.pic32_dmt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DMTCLR_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.pic32_dmt*, %struct.pic32_dmt** %2, align 8
  %40 = call i32 @dmt_bad_status(%struct.pic32_dmt* %39)
  ret i32 %40
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dmt_bad_status(%struct.pic32_dmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
