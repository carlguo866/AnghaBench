; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_getmouse.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_getmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16, i16 }

@gui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_getmouse(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @PhInputGroup(i32* null)
  %9 = call i32 @PhQueryCursor(i32 %8, %struct.TYPE_6__* %5)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gui, i32 0, i32 0), align 4
  %11 = call i32 @PtGetAbsPosition(i32 %10, i16* %6, i16* %7)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* %6, align 2
  %17 = sext i16 %16 to i32
  %18 = sub nsw i32 %15, %17
  %19 = load i32*, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* %7, align 2
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 %23, %25
  %27 = load i32*, i32** %4, align 8
  store i32 %26, i32* %27, align 4
  ret void
}

declare dso_local i32 @PhQueryCursor(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @PhInputGroup(i32*) #1

declare dso_local i32 @PtGetAbsPosition(i32, i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
