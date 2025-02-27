; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_round_cvb_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_cvb.c_round_cvb_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rail_alignment = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.rail_alignment*)* @round_cvb_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round_cvb_voltage(i32 %0, i32 %1, %struct.rail_alignment* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rail_alignment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rail_alignment* %2, %struct.rail_alignment** %6, align 8
  %10 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %11 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %14
  %17 = phi i32 [ %12, %14 ], [ 1000, %15 ]
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %21 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @max(i32 %26, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @DIV_ROUND_UP(i32 %31, i32 %32)
  %34 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %35 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.rail_alignment*, %struct.rail_alignment** %6, align 8
  %39 = getelementptr inbounds %struct.rail_alignment, %struct.rail_alignment* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %42, 1000
  ret i32 %43
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
