; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_ast.c_new_expr_compound.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_ast.c_new_expr_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32* }

@EXPR_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @new_expr_compound(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @EXPR_COMPOUND, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_6__* @new_expr(i32 %10, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32* %13, i32** %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @AST_DUP(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %26
}

declare dso_local %struct.TYPE_6__* @new_expr(i32, i32) #1

declare dso_local i32 @AST_DUP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
