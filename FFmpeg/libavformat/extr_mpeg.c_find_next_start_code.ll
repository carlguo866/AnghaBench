; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpeg.c_find_next_start_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpeg.c_find_next_start_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @find_next_start_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_start_code(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %37, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @avio_feof(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %43

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @avio_r8(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %34, 16777215
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %9, align 4
  br label %44

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %41, 16777215
  store i32 %42, i32* %7, align 4
  br label %15

43:                                               ; preds = %22, %15
  store i32 -1, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
