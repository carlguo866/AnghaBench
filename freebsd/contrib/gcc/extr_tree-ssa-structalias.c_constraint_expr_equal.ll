; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_constraint_expr_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_constraint_expr_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constraint_expr = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.constraint_expr*, %struct.constraint_expr*)* @constraint_expr_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constraint_expr_equal(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %0, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %0, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %1, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br label %20

20:                                               ; preds = %14, %8, %2
  %21 = phi i1 [ false, %8 ], [ false, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
