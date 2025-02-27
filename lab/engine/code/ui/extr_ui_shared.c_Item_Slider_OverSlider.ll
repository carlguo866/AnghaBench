; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Slider_OverSlider.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Slider_OverSlider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }

@SLIDER_THUMB_WIDTH = common dso_local global i32 0, align 4
@SLIDER_THUMB_HEIGHT = common dso_local global i32 0, align 4
@WINDOW_LB_THUMB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_Slider_OverSlider(%struct.TYPE_11__* %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = call i64 @Item_Slider_ThumbPosition(%struct.TYPE_11__* %9)
  %11 = load i32, i32* @SLIDER_THUMB_WIDTH, align 4
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = sub nsw i64 %10, %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i64 %14, i64* %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @SLIDER_THUMB_WIDTH, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @SLIDER_THUMB_HEIGHT, align 4
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load float, float* %6, align 4
  %28 = load float, float* %7, align 4
  %29 = call i64 @Rect_ContainsPoint(%struct.TYPE_10__* %8, float %27, float %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @WINDOW_LB_THUMB, align 4
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @Item_Slider_ThumbPosition(%struct.TYPE_11__*) #1

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_10__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
