; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorSnap.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_mathlib.c_VectorSnap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VectorSnap(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load i64*, i64** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = sitofp i64 %12 to double
  %14 = fadd double %13, 5.000000e-01
  %15 = fptosi double %14 to i64
  %16 = call i64 @floor(i64 %15)
  %17 = load i64*, i64** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 %16, i64* %20, align 8
  br label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i64 @floor(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
