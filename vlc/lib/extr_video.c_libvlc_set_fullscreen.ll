; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_set_fullscreen.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_set_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_set_fullscreen(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @var_SetBool(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32** @GetVouts(i32* %11, i64* %5)
  store i32** %12, i32*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32**, i32*** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @var_SetBool(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32**, i32*** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32*, i32** %24, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @vout_Release(i32* %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load i32**, i32*** %6, align 8
  %34 = call i32 @free(i32** %33)
  ret void
}

declare dso_local i32 @var_SetBool(i32*, i8*, i32) #1

declare dso_local i32** @GetVouts(i32*, i64*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
