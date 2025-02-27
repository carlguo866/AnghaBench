; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_cursor_motion_relative.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_cursor_motion_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_pointer_motion = type { i32, i32, i32, i32, i32, i32 }

@motion = common dso_local global i32 0, align 4
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_cursor_motion_relative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cursor_motion_relative(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_pointer_motion*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %9 = ptrtoint %struct.sway_cursor* %8 to i32
  %10 = load i32, i32* @motion, align 4
  %11 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_cursor* %11, %struct.sway_cursor** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.wlr_event_pointer_motion*
  store %struct.wlr_event_pointer_motion* %13, %struct.wlr_event_pointer_motion** %6, align 8
  %14 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %15 = load %struct.wlr_event_pointer_motion*, %struct.wlr_event_pointer_motion** %6, align 8
  %16 = getelementptr inbounds %struct.wlr_event_pointer_motion, %struct.wlr_event_pointer_motion* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wlr_event_pointer_motion*, %struct.wlr_event_pointer_motion** %6, align 8
  %19 = getelementptr inbounds %struct.wlr_event_pointer_motion, %struct.wlr_event_pointer_motion* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wlr_event_pointer_motion*, %struct.wlr_event_pointer_motion** %6, align 8
  %22 = getelementptr inbounds %struct.wlr_event_pointer_motion, %struct.wlr_event_pointer_motion* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wlr_event_pointer_motion*, %struct.wlr_event_pointer_motion** %6, align 8
  %25 = getelementptr inbounds %struct.wlr_event_pointer_motion, %struct.wlr_event_pointer_motion* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wlr_event_pointer_motion*, %struct.wlr_event_pointer_motion** %6, align 8
  %28 = getelementptr inbounds %struct.wlr_event_pointer_motion, %struct.wlr_event_pointer_motion* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wlr_event_pointer_motion*, %struct.wlr_event_pointer_motion** %6, align 8
  %31 = getelementptr inbounds %struct.wlr_event_pointer_motion, %struct.wlr_event_pointer_motion* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cursor_motion(%struct.sway_cursor* %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = call i32 (...) @transaction_commit_dirty()
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @cursor_motion(%struct.sway_cursor*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
