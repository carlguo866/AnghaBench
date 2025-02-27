; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32 }

@pwrap_is_fsm_idle = common dso_local global i32 0, align 4
@PWRAP_WACS2_CMD = common dso_local global i32 0, align 4
@pwrap_is_fsm_vldclr = common dso_local global i32 0, align 4
@PWRAP_WACS2_RDATA = common dso_local global i32 0, align 4
@PWRAP_WACS2_VLDCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*, i32, i32*)* @pwrap_read32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_read32(%struct.pmic_wrapper* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmic_wrapper*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %54, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %57

14:                                               ; preds = %11
  %15 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %16 = load i32, i32* @pwrap_is_fsm_idle, align 4
  %17 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %22 = call i32 @pwrap_leave_fsm_vldclr(%struct.pmic_wrapper* %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %14
  %25 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %26, 30
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 16
  %30 = or i32 %27, %29
  %31 = load i32, i32* @PWRAP_WACS2_CMD, align 4
  %32 = call i32 @pwrap_writel(%struct.pmic_wrapper* %25, i32 %30, i32 %31)
  %33 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %34 = load i32, i32* @pwrap_is_fsm_vldclr, align 4
  %35 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %24
  %41 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %42 = load i32, i32* @PWRAP_WACS2_RDATA, align 4
  %43 = call i32 @pwrap_readl(%struct.pmic_wrapper* %41, i32 %42)
  %44 = call i32 @PWRAP_GET_WACS_RDATA(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 16, %45
  %47 = shl i32 %44, %46
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %47
  store i32 %50, i32* %48, align 4
  %51 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %52 = load i32, i32* @PWRAP_WACS2_VLDCLR, align 4
  %53 = call i32 @pwrap_writel(%struct.pmic_wrapper* %51, i32 1, i32 %52)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %11

57:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %38, %20
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @pwrap_wait_for_state(%struct.pmic_wrapper*, i32) #1

declare dso_local i32 @pwrap_leave_fsm_vldclr(%struct.pmic_wrapper*) #1

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @PWRAP_GET_WACS_RDATA(i32) #1

declare dso_local i32 @pwrap_readl(%struct.pmic_wrapper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
