; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_transpose_block_16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_transpose_block_16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @transpose_block_16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transpose_block_16_c(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %41, %6
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %20

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %49, i32** %7, align 8
  br label %15

50:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
