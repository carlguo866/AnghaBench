; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_output_layout_change.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_output_layout_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_server = type { i32 }
%struct.wl_listener = type { i32 }

@output_layout_change = common dso_local global i32 0, align 4
@server = common dso_local global %struct.sway_server* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_output_layout_change(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_server*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %7 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %8 = ptrtoint %struct.sway_server* %7 to i32
  %9 = load i32, i32* @output_layout_change, align 4
  %10 = call %struct.sway_server* @wl_container_of(%struct.wl_listener* %6, i32 %8, i32 %9)
  store %struct.sway_server* %10, %struct.sway_server** %5, align 8
  %11 = load %struct.sway_server*, %struct.sway_server** %5, align 8
  %12 = call i32 @update_output_manager_config(%struct.sway_server* %11)
  ret void
}

declare dso_local %struct.sway_server* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @update_output_manager_config(%struct.sway_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
