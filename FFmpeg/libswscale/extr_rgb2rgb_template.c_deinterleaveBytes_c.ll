; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_deinterleaveBytes_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_deinterleaveBytes_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32)* @deinterleaveBytes_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deinterleaveBytes_c(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %67, %8
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %18, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 0
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %18, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %18, align 4
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %24

54:                                               ; preds = %24
  %55 = load i32, i32* %14, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %10, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %11, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %19

70:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
