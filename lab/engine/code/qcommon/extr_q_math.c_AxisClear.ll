; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_AxisClear.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_math.c_AxisClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AxisClear(i32** %0) #0 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %3 = load i32**, i32*** %2, align 8
  %4 = getelementptr inbounds i32*, i32** %3, i64 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 1, i32* %6, align 4
  %7 = load i32**, i32*** %2, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %10, align 4
  %11 = load i32**, i32*** %2, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 0, i32* %14, align 4
  %15 = load i32**, i32*** %2, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load i32**, i32*** %2, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 1, i32* %22, align 4
  %23 = load i32**, i32*** %2, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 0, i32* %26, align 4
  %27 = load i32**, i32*** %2, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  %31 = load i32**, i32*** %2, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 0, i32* %34, align 4
  %35 = load i32**, i32*** %2, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 1, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
