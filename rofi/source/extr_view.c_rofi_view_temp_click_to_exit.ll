; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_temp_click_to_exit.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_temp_click_to_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@CacheState = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MENU_NORMAL_WINDOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MENU_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_temp_click_to_exit(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CacheState, i32 0, i32 0), align 8
  %6 = load i32, i32* @MENU_NORMAL_WINDOW, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @CacheState, i32 0, i32 1), align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* @TRUE, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @MENU_CANCEL, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %13, %9
  br label %21

21:                                               ; preds = %20, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
