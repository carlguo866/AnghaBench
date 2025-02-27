; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__div_round_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__div_round_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i64, i64, i64)* @_div_round_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_div_round_up(%struct.clk_div_table* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.clk_div_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk_div_table* %0, %struct.clk_div_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @DIV_ROUND_UP_ULL(i32 %11, i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @CLK_DIVIDER_POWER_OF_TWO, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @__roundup_pow_of_two(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %23 = icmp ne %struct.clk_div_table* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @_round_up_table(%struct.clk_div_table* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i64) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @_round_up_table(%struct.clk_div_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
