; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_screenshot.c_take_screenshot_choice.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_screenshot.c_take_screenshot_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @take_screenshot_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_screenshot_choice(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  %29 = load i32, i32* %21, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %11
  %32 = call i32 @video_driver_set_texture_enable(i32 0, i32 0)
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 (...) @video_driver_cached_frame()
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i8*, i8** %13, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %23, align 4
  %46 = call i32 @take_screenshot_viewport(i8* %38, i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %91

47:                                               ; preds = %11
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* %23, align 4
  %59 = call i32 @take_screenshot_raw(i8* %51, i8* %52, i8* null, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %91

60:                                               ; preds = %47
  %61 = load i32, i32* %22, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %91

64:                                               ; preds = %60
  %65 = call i32 @video_driver_cached_frame_get(i8** %28, i32* %25, i32* %26, i64* %24)
  %66 = call i8* @video_driver_read_frame_raw(i32* %25, i32* %26, i64* %24)
  store i8* %66, i8** %27, align 8
  %67 = load i8*, i8** %28, align 8
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* %26, align 4
  %70 = load i64, i64* %24, align 8
  %71 = call i32 @video_driver_cached_frame_set(i8* %67, i32 %68, i32 %69, i64 %70)
  %72 = load i8*, i8** %27, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %64
  %75 = load i8*, i8** %27, align 8
  %76 = call i32 @video_driver_set_cached_frame_ptr(i8* %75)
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i8*, i8** %27, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %23, align 4
  %86 = call i32 @take_screenshot_raw(i8* %77, i8* %78, i8* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  store i32 1, i32* %12, align 4
  br label %91

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %64
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %88, %63, %50, %37
  %92 = load i32, i32* %12, align 4
  ret i32 %92
}

declare dso_local i32 @video_driver_set_texture_enable(i32, i32) #1

declare dso_local i32 @video_driver_cached_frame(...) #1

declare dso_local i32 @take_screenshot_viewport(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @take_screenshot_raw(i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @video_driver_cached_frame_get(i8**, i32*, i32*, i64*) #1

declare dso_local i8* @video_driver_read_frame_raw(i32*, i32*, i64*) #1

declare dso_local i32 @video_driver_cached_frame_set(i8*, i32, i32, i64) #1

declare dso_local i32 @video_driver_set_cached_frame_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
