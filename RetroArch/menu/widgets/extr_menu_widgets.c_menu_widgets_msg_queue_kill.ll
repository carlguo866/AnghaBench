; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_msg_queue_kill.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_msg_queue_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, float*, float, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, float, float }

@current_msgs = common dso_local global i32 0, align 4
@widgets_moving = common dso_local global i32 0, align 4
@msg_queue_kill = common dso_local global i32 0, align 4
@MSG_QUEUE_ANIMATION_DURATION = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@msg_queue_height = common dso_local global i32 0, align 4
@menu_widgets_msg_queue_kill_end = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @menu_widgets_msg_queue_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_msg_queue_kill(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @current_msgs, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @file_list_get_userdata_at_offset(i32 %5, i32 %6)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  store i32 1, i32* @widgets_moving, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @msg_queue_kill, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @MSG_QUEUE_ANIMATION_DURATION, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @EASING_OUT_QUAD, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = ptrtoint %struct.TYPE_4__* %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store float* %26, float** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  %31 = load i32, i32* @msg_queue_height, align 4
  %32 = sdiv i32 %31, 4
  %33 = sitofp i32 %32 to float
  %34 = fsub float %30, %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store float %34, float* %35, align 8
  %36 = call i32 @menu_animation_push(%struct.TYPE_5__* %3)
  %37 = load i32*, i32** @menu_widgets_msg_queue_kill_end, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32* %37, i32** %38, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store float* %40, float** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store float 0.000000e+00, float* %42, align 8
  %43 = call i32 @menu_animation_push(%struct.TYPE_5__* %3)
  %44 = call i32 (...) @menu_widgets_msg_queue_move()
  br label %45

45:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @file_list_get_userdata_at_offset(i32, i32) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_5__*) #1

declare dso_local i32 @menu_widgets_msg_queue_move(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
