; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_drawPixelRGB24.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_drawPixelRGB24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32)* @drawPixelRGB24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawPixelRGB24(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call i32 @VLC_UNUSED(i32 %19)
  %21 = load i32, i32* %16, align 4
  %22 = call i32 @VLC_UNUSED(i32 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %28, i64 %37
  %39 = load i32, i32* %15, align 4
  %40 = mul nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32* %42, i32** %17, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32*, i32** %17, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %17, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %17, align 8
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %17, align 8
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
