; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_randomize_et_dyn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_randomize_et_dyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @randomize_et_dyn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 (...) @brk_rnd()
  %7 = add i64 %5, %6
  %8 = call i64 @PAGE_ALIGN(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %2, align 8
  br label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @brk_rnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
