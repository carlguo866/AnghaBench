; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_evaluate_subexp_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_evaluate_subexp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.value* (i32, %struct.expression*, i32*, i32)* }

@NULL_TYPE = common dso_local global i32 0, align 4
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.expression*, i32*)* @evaluate_subexp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @evaluate_subexp_type(%struct.expression* %0, i32* %1) #0 {
  %3 = alloca %struct.expression*, align 8
  %4 = alloca i32*, align 8
  store %struct.expression* %0, %struct.expression** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.expression*, %struct.expression** %3, align 8
  %6 = getelementptr inbounds %struct.expression, %struct.expression* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.value* (i32, %struct.expression*, i32*, i32)*, %struct.value* (i32, %struct.expression*, i32*, i32)** %8, align 8
  %10 = load i32, i32* @NULL_TYPE, align 4
  %11 = load %struct.expression*, %struct.expression** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %14 = call %struct.value* %9(i32 %10, %struct.expression* %11, i32* %12, i32 %13)
  ret %struct.value* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
