; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_parse_bs_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_alsdec.c_parse_bs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32**, i32*)* @parse_bs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_bs_info(i32 %0, i32 %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ult i32 %11, 31
  br i1 %12, label %13, label %36

13:                                               ; preds = %5
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %14, %15
  %17 = and i32 %16, 1073741824
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = mul i32 %20, 2
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add i32 %25, 1
  %27 = load i32, i32* %8, align 4
  %28 = load i32**, i32*** %9, align 8
  %29 = load i32*, i32** %10, align 8
  call void @parse_bs_info(i32 %24, i32 %26, i32 %27, i32** %28, i32* %29)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 2
  %33 = load i32, i32* %8, align 4
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32*, i32** %10, align 8
  call void @parse_bs_info(i32 %30, i32 %32, i32 %33, i32** %34, i32* %35)
  br label %46

36:                                               ; preds = %13, %5
  %37 = load i32, i32* %8, align 4
  %38 = load i32**, i32*** %9, align 8
  %39 = load i32*, i32** %38, align 8
  store i32 %37, i32* %39, align 4
  %40 = load i32**, i32*** %9, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %40, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
