; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_code-patching.c_branch_target.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_code-patching.c_branch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @branch_target(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @instr_is_branch_iform(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @branch_iform_target(i32* %9)
  store i64 %10, i64* %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @instr_is_branch_bform(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @branch_bform_target(i32* %17)
  store i64 %18, i64* %2, align 8
  br label %21

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %21

21:                                               ; preds = %20, %16, %8
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @instr_is_branch_iform(i32) #1

declare dso_local i64 @branch_iform_target(i32*) #1

declare dso_local i64 @instr_is_branch_bform(i32) #1

declare dso_local i64 @branch_bform_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
