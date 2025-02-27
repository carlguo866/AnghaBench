; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap.c_clk_enable_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap.c_clk_enable_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_enable_regmap(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %5)
  store %struct.clk_regmap* %6, %struct.clk_regmap** %3, align 8
  %7 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %8 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %14 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %18 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %21 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %24 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @regmap_update_bits(i32 %19, i32 %22, i32 %25, i32 %26)
  ret i32 %27
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
