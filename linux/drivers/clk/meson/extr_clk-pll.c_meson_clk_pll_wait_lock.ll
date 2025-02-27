; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_pll_wait_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_pll_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_pll_data = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @meson_clk_pll_wait_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_clk_pll_wait_lock(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_regmap*, align 8
  %5 = alloca %struct.meson_clk_pll_data*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %7)
  store %struct.clk_regmap* %8, %struct.clk_regmap** %4, align 8
  %9 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %10 = call %struct.meson_clk_pll_data* @meson_clk_pll_data(%struct.clk_regmap* %9)
  store %struct.meson_clk_pll_data* %10, %struct.meson_clk_pll_data** %5, align 8
  store i32 24000000, i32* %6, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %13 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %5, align 8
  %16 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %15, i32 0, i32 0
  %17 = call i64 @meson_parm_read(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %29

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %11, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_pll_data* @meson_clk_pll_data(%struct.clk_regmap*) #1

declare dso_local i64 @meson_parm_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
