; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_twsi_ctrl_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_twsi_ctrl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i32 }

@TWSI_ENABLE_OPTION1 = common dso_local global i32 0, align 4
@TWSI_ENABLE_OPTION2 = common dso_local global i32 0, align 4
@TWSI_ENABLE_OPTION3 = common dso_local global i32 0, align 4
@gconfmap = common dso_local global i32 0, align 4
@GLOBAL_CONFIG_1 = common dso_local global i32 0, align 4
@GLOBAL_CONFIG_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32, i64)* @dove_twsi_ctrl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_twsi_ctrl_set(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %6, align 8
  switch i64 %9, label %16 [
    i64 1, label %10
    i64 2, label %12
    i64 3, label %14
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @TWSI_ENABLE_OPTION1, align 4
  store i32 %11, i32* %7, align 4
  br label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @TWSI_ENABLE_OPTION2, align 4
  store i32 %13, i32* %8, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @TWSI_ENABLE_OPTION3, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %3, %14, %12, %10
  %17 = load i32, i32* @gconfmap, align 4
  %18 = load i32, i32* @GLOBAL_CONFIG_1, align 4
  %19 = load i32, i32* @TWSI_ENABLE_OPTION1, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @gconfmap, align 4
  %23 = load i32, i32* @GLOBAL_CONFIG_2, align 4
  %24 = load i32, i32* @TWSI_ENABLE_OPTION2, align 4
  %25 = load i32, i32* @TWSI_ENABLE_OPTION3, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
