; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_createnullcursor.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_createnullcursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@GXclear = common dso_local global i32 0, align 4
@GCFunction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createnullcursor(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @XCreatePixmap(i32* %10, i32 %11, i32 1, i32 1, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @GXclear, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GCFunction, align 4
  %18 = call i32 @XCreateGC(i32* %15, i32 %16, i32 %17, %struct.TYPE_6__* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @XFillRectangle(i32* %19, i32 %20, i32 %21, i32 0, i32 0, i32 1, i32 1)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @XCreatePixmapCursor(i32* %26, i32 %27, i32 %28, %struct.TYPE_7__* %8, %struct.TYPE_7__* %8, i32 0, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @XFreePixmap(i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @XFreeGC(i32* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @XCreatePixmap(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XCreateGC(i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @XFillRectangle(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XCreatePixmapCursor(i32*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @XFreePixmap(i32*, i32) #1

declare dso_local i32 @XFreeGC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
