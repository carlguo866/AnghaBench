; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_....packetizerhxxx_nal.h_hxxx_strip_AnnexB_startcode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_....packetizerhxxx_nal.h_hxxx_strip_AnnexB_startcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i64*)* @hxxx_strip_AnnexB_startcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hxxx_strip_AnnexB_startcode(i32** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %50, %2
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 1
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %51

23:                                               ; preds = %21
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 1
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = or i32 %25, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 6
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32**, i32*** %4, align 8
  store i32* %47, i32** %48, align 8
  store i32 1, i32* %3, align 4
  br label %52

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %52

50:                                               ; preds = %23
  br label %13

51:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %44
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
