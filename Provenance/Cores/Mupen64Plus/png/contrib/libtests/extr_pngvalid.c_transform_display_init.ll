; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_transform_display_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_transform_display_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@do_read_interlace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i32, i32*)* @transform_display_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_display_init(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_6__* %9, i32 0, i32 48)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @do_read_interlace, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @standard_display_init(i32* %12, i32* %14, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 16, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 255, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32 255, i32* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @standard_display_init(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
