; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-branch.c_clk_branch_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-branch.c_clk_branch_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_branch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32, i32 (%struct.clk_branch*, i32)*)* @clk_branch_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_branch_toggle(%struct.clk_hw* %0, i32 %1, i32 (%struct.clk_branch*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.clk_branch*, i32)*, align 8
  %8 = alloca %struct.clk_branch*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.clk_branch*, i32)* %2, i32 (%struct.clk_branch*, i32)** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_branch* @to_clk_branch(%struct.clk_hw* %10)
  store %struct.clk_branch* %11, %struct.clk_branch** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call i32 @clk_enable_regmap(%struct.clk_hw* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %14
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %24 = call i32 @clk_disable_regmap(%struct.clk_hw* %23)
  br label %25

25:                                               ; preds = %22, %21
  %26 = load %struct.clk_branch*, %struct.clk_branch** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32 (%struct.clk_branch*, i32)*, i32 (%struct.clk_branch*, i32)** %7, align 8
  %29 = call i32 @clk_branch_wait(%struct.clk_branch* %26, i32 %27, i32 (%struct.clk_branch*, i32)* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.clk_branch* @to_clk_branch(%struct.clk_hw*) #1

declare dso_local i32 @clk_enable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @clk_disable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @clk_branch_wait(%struct.clk_branch*, i32, i32 (%struct.clk_branch*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
