; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop.c_tree_complete_unroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop.c_tree_complete_unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_loops = common dso_local global i32 0, align 4
@flag_unroll_loops = common dso_local global i64 0, align 8
@flag_peel_loops = common dso_local global i64 0, align 8
@optimize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tree_complete_unroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_complete_unroll() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @current_loops, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @current_loops, align 4
  %7 = load i64, i64* @flag_unroll_loops, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = load i64, i64* @flag_peel_loops, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @optimize, align 4
  %14 = icmp sge i32 %13, 3
  br label %15

15:                                               ; preds = %12, %9, %5
  %16 = phi i1 [ true, %9 ], [ true, %5 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @tree_unroll_loops_completely(i32 %6, i32 %17)
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @tree_unroll_loops_completely(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
