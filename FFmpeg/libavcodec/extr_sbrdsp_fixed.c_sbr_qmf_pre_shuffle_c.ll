; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp_fixed.c_sbr_qmf_pre_shuffle_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp_fixed.c_sbr_qmf_pre_shuffle_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @sbr_qmf_pre_shuffle_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_qmf_pre_shuffle_c(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 64
  store i32 %6, i32* %8, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 65
  store i32 %11, i32* %13, align 4
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %44, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 64, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 0, %23
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 64, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 64, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %17
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %14

47:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
