; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decode_gain_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decode_gain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @decode_gain_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_gain_info(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @get_bits_left(i32* %10)
  %12 = call i32 @get_unary(i32* %9, i32 0, i32 %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @get_bits(i32* %18, i32 3)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @get_bits1(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @get_bits(i32* %24, i32 4)
  %26 = sub nsw i32 %25, 7
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ -1, %27 ]
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %34, %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  br label %30

41:                                               ; preds = %30
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %44, 8
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 0, i32* %51, align 4
  br label %43

52:                                               ; preds = %43
  ret void
}

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
