; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_make_constraint_from_escaped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_make_constraint_from_escaped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.constraint_expr = type { i8*, i64, i32 }

@SCALAR = common dso_local global i8* null, align 8
@escaped_vars_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @make_constraint_from_escaped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_constraint_from_escaped(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca %struct.constraint_expr, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** @SCALAR, align 8
  %11 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %3, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* @escaped_vars_id, align 4
  %13 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** @SCALAR, align 8
  %16 = getelementptr inbounds %struct.constraint_expr, %struct.constraint_expr* %4, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = call i32 @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8 %3, %struct.constraint_expr* byval(%struct.constraint_expr) align 8 %4)
  %18 = call i32 @process_constraint(i32 %17)
  ret void
}

declare dso_local i32 @process_constraint(i32) #1

declare dso_local i32 @new_constraint(%struct.constraint_expr* byval(%struct.constraint_expr) align 8, %struct.constraint_expr* byval(%struct.constraint_expr) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
