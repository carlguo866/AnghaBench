; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_Pack4BytesSwap.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_Pack4BytesSwap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32*, i32*, i32*)* @Pack4BytesSwap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Pack4BytesSwap(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  %11 = load i32*, i32** %8, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @FROM_16_TO_8(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %9, align 8
  store i32 %15, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @FROM_16_TO_8(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @FROM_16_TO_8(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @FROM_16_TO_8(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  ret i32* %39
}

declare dso_local i8* @FROM_16_TO_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
