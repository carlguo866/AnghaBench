; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_enum_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_enum_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pinmux_range*)* @enum_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_in_range(i64 %0, %struct.pinmux_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pinmux_range*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pinmux_range* %1, %struct.pinmux_range** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.pinmux_range*, %struct.pinmux_range** %5, align 8
  %8 = getelementptr inbounds %struct.pinmux_range, %struct.pinmux_range* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.pinmux_range*, %struct.pinmux_range** %5, align 8
  %15 = getelementptr inbounds %struct.pinmux_range, %struct.pinmux_range* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
