; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timeconv.c_leaps_between.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timeconv.c_leaps_between.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @leaps_between to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @leaps_between(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub nsw i64 %7, 1
  %9 = call i64 @math_div(i64 %8, i32 4)
  %10 = load i64, i64* %3, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i64 @math_div(i64 %11, i32 100)
  %13 = sub nsw i64 %9, %12
  %14 = load i64, i64* %3, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i64 @math_div(i64 %15, i32 400)
  %17 = add nsw i64 %13, %16
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i64 @math_div(i64 %19, i32 4)
  %21 = load i64, i64* %4, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @math_div(i64 %22, i32 100)
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* %4, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i64 @math_div(i64 %26, i32 400)
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub nsw i64 %29, %30
  ret i64 %31
}

declare dso_local i64 @math_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
