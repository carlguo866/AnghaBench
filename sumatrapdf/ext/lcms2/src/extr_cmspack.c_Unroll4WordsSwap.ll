; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_Unroll4WordsSwap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_Unroll4WordsSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32*, i32*, i32*)* @Unroll4WordsSwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Unroll4WordsSwap(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  ret i32* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
