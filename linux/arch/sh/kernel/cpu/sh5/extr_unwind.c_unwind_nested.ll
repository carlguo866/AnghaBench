; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh5/extr_unwind.c_unwind_nested.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh5/extr_unwind.c_unwind_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stacktrace_ops = type { i32 }
%struct.pt_regs = type { i32 }

@__MEMORY_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stacktrace_ops*, i8*, i64, i64)* @unwind_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_nested(%struct.stacktrace_ops* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.stacktrace_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.stacktrace_ops* %0, %struct.stacktrace_ops** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @__MEMORY_START, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = and i64 %13, 7
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to %struct.pt_regs*
  %21 = call i32 @sh64_unwind_inner(%struct.stacktrace_ops* %17, i8* %18, %struct.pt_regs* %20)
  br label %22

22:                                               ; preds = %16, %12, %4
  ret void
}

declare dso_local i32 @sh64_unwind_inner(%struct.stacktrace_ops*, i8*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
