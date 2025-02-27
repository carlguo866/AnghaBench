; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_get_entropy.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_get_entropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @get_entropy(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @count_char(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %33

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = sitofp i32 %21 to float
  %23 = load i32, i32* %4, align 4
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %22, %24
  store float %25, float* %8, align 4
  %26 = load float, float* %8, align 4
  %27 = fneg float %26
  %28 = load float, float* %8, align 4
  %29 = call float @log2f(float %28) #3
  %30 = fmul float %27, %29
  %31 = load float, float* %5, align 4
  %32 = fadd float %31, %30
  store float %32, float* %5, align 4
  br label %33

33:                                               ; preds = %20, %19
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load float, float* %5, align 4
  ret float %37
}

declare dso_local i32 @count_char(i32*, i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @log2f(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
