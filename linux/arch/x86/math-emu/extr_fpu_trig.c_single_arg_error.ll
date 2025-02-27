; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_trig.c_single_arg_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_trig.c_single_arg_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_Empty = common dso_local global i64 0, align 8
@TW_NaN = common dso_local global i64 0, align 8
@EX_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @single_arg_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_arg_error(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TAG_Empty, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @FPU_stack_underflow()
  br label %18

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @TW_NaN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @real_1op_NaN(i32* %15)
  br label %17

17:                                               ; preds = %14, %10
  br label %18

18:                                               ; preds = %17, %8
  ret void
}

declare dso_local i32 @FPU_stack_underflow(...) #1

declare dso_local i32 @real_1op_NaN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
