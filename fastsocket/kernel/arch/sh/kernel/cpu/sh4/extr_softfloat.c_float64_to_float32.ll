; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_to_float32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_to_float32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_to_float32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @extractFloat64Frac(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @extractFloat64Exp(i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @extractFloat64Sign(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @shift64RightJamming(i32 %13, i32 22, i32* %5)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 1073741824
  store i32 %23, i32* %6, align 4
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %24, 897
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @roundAndPackFloat32(i32 %27, i64 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i64 @extractFloat64Exp(i32) #1

declare dso_local i32 @extractFloat64Sign(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

declare dso_local i32 @roundAndPackFloat32(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
