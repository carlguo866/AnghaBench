; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_style.c_ShadowDrop.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_css_style.c_ShadowDrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@TYPE_PIXELS = common dso_local global i64 0, align 8
@STYLE_SHADOW = common dso_local global i32 0, align 4
@STYLE_HAS_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_6__*)* @ShadowDrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShadowDrop(i64 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = bitcast %struct.TYPE_5__* %4 to { i64, i32 }*
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %1, i32* %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TYPE_PIXELS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @STYLE_SHADOW, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @STYLE_HAS_FLAGS, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %13, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
