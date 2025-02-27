; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c_owl_factor_helper_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c_owl_factor_helper_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_common = type { i32 }
%struct.owl_factor_hw = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_factor_helper_set_rate(%struct.owl_clk_common* %0, %struct.owl_factor_hw* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.owl_clk_common*, align 8
  %6 = alloca %struct.owl_factor_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.owl_clk_common* %0, %struct.owl_clk_common** %5, align 8
  store %struct.owl_factor_hw* %1, %struct.owl_factor_hw** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %12 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @_get_table_val(i32 %13, i64 %14, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %19 = call i32 @div_mask(%struct.owl_factor_hw* %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %23 = call i32 @div_mask(%struct.owl_factor_hw* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.owl_clk_common*, %struct.owl_clk_common** %5, align 8
  %26 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %29 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_read(i32 %27, i32 %30, i32* %10)
  %32 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %33 = call i32 @div_mask(%struct.owl_factor_hw* %32)
  %34 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %35 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %33, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %43 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %41, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load %struct.owl_clk_common*, %struct.owl_clk_common** %5, align 8
  %49 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %6, align 8
  %52 = getelementptr inbounds %struct.owl_factor_hw, %struct.owl_factor_hw* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @regmap_write(i32 %50, i32 %53, i32 %54)
  ret i32 0
}

declare dso_local i32 @_get_table_val(i32, i64, i64) #1

declare dso_local i32 @div_mask(%struct.owl_factor_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
