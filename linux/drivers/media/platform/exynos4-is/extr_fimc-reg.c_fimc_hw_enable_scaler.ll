; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_enable_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-reg.c_fimc_hw_enable_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i64 }

@FIMC_REG_CISCCTRL = common dso_local global i64 0, align 8
@FIMC_REG_CISCCTRL_SCALERSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fimc_hw_enable_scaler(%struct.fimc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.fimc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @FIMC_REG_CISCCTRL_SCALERSTART, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @FIMC_REG_CISCCTRL_SCALERSTART, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.fimc_dev*, %struct.fimc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FIMC_REG_CISCCTRL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
