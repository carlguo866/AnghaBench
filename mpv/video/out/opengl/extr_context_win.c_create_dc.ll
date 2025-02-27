; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_create_dc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_win.c_create_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to select a valid pixel format!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @create_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dc(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 1
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @vo_w32_hwnd(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.priv*, %struct.priv** %4, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @GetDC(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %61

27:                                               ; preds = %21
  %28 = call i32 @memset(%struct.TYPE_5__* %7, i32 0, i32 24)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 24, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %32 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @PFD_TYPE_RGBA, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 24, i32* %39, align 4
  %40 = load i32, i32* @PFD_MAIN_PLANE, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @ChoosePixelFormat(i64 %42, %struct.TYPE_5__* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %27
  %47 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @MP_ERR(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %5, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @ReleaseDC(i32 %51, i64 %52)
  store i32 0, i32* %2, align 4
  br label %61

54:                                               ; preds = %27
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @SetPixelFormat(i64 %55, i32 %56, %struct.TYPE_5__* %7)
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.priv*, %struct.priv** %4, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %54, %46, %26, %20
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @vo_w32_hwnd(i32) #1

declare dso_local i64 @GetDC(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ChoosePixelFormat(i64, %struct.TYPE_5__*) #1

declare dso_local i32 @MP_ERR(i32, i8*) #1

declare dso_local i32 @ReleaseDC(i32, i64) #1

declare dso_local i32 @SetPixelFormat(i64, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
