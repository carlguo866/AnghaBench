; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c__get_table_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c__get_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pll_table = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_pll_table*, i32)* @_get_table_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_get_table_rate(%struct.clk_pll_table* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_pll_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_pll_table*, align 8
  store %struct.clk_pll_table* %0, %struct.clk_pll_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.clk_pll_table*, %struct.clk_pll_table** %4, align 8
  store %struct.clk_pll_table* %7, %struct.clk_pll_table** %6, align 8
  br label %8

8:                                                ; preds = %24, %2
  %9 = load %struct.clk_pll_table*, %struct.clk_pll_table** %6, align 8
  %10 = getelementptr inbounds %struct.clk_pll_table, %struct.clk_pll_table* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.clk_pll_table*, %struct.clk_pll_table** %6, align 8
  %15 = getelementptr inbounds %struct.clk_pll_table, %struct.clk_pll_table* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.clk_pll_table*, %struct.clk_pll_table** %6, align 8
  %21 = getelementptr inbounds %struct.clk_pll_table, %struct.clk_pll_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  br label %28

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.clk_pll_table*, %struct.clk_pll_table** %6, align 8
  %26 = getelementptr inbounds %struct.clk_pll_table, %struct.clk_pll_table* %25, i32 1
  store %struct.clk_pll_table* %26, %struct.clk_pll_table** %6, align 8
  br label %8

27:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
