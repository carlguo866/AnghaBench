; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_queue_redraw.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_queue_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@current_active_menu = common dso_local global i64 0, align 8
@CacheState = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"redraw %llu\00", align 1
@G_PRIORITY_HIGH_IDLE = common dso_local global i32 0, align 4
@rofi_view_repaint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_queue_redraw() #0 {
  %1 = load i64, i64* @current_active_menu, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 1), align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 1), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 1), align 8
  %10 = call i32 @g_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @G_PRIORITY_HIGH_IDLE, align 4
  %12 = load i32, i32* @rofi_view_repaint, align 4
  %13 = call i64 @g_idle_add_full(i32 %11, i32 %12, i32* null, i32* null)
  store i64 %13, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @CacheState, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %6, %3, %0
  ret void
}

declare dso_local i32 @g_debug(i8*, i32) #1

declare dso_local i64 @g_idle_add_full(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
