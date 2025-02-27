; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_das.c_tegra20_das_connect_dap_to_dac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_das.c_tegra20_das_connect_dap_to_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@das = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_STRIDE = common dso_local global i32 0, align 4
@TEGRA20_DAS_DAP_CTRL_SEL_DAP_CTRL_SEL_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra20_das_connect_dap_to_dac(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @das, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_STRIDE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @TEGRA20_DAS_DAP_CTRL_SEL_DAP_CTRL_SEL_P, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @tegra20_das_write(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @tegra20_das_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
