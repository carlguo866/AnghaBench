; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_scale.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32, i32, i32 }
%struct.wl_listener = type { i32 }

@scale = common dso_local global i32 0, align 4
@update_textures = common dso_local global i32 0, align 4
@output = common dso_local global %struct.sway_output* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_scale(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_output*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %7 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %8 = ptrtoint %struct.sway_output* %7 to i32
  %9 = load i32, i32* @scale, align 4
  %10 = call %struct.sway_output* @wl_container_of(%struct.wl_listener* %6, i32 %8, i32 %9)
  store %struct.sway_output* %10, %struct.sway_output** %5, align 8
  %11 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %12 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %17 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %34

21:                                               ; preds = %15
  %22 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %23 = call i32 @arrange_layers(%struct.sway_output* %22)
  %24 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %25 = load i32, i32* @update_textures, align 4
  %26 = call i32 @output_for_each_container(%struct.sway_output* %24, i32 %25, i32* null)
  %27 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %28 = call i32 @arrange_output(%struct.sway_output* %27)
  %29 = call i32 (...) @transaction_commit_dirty()
  %30 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %31 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @update_output_manager_config(i32 %32)
  br label %34

34:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.sway_output* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @arrange_layers(%struct.sway_output*) #1

declare dso_local i32 @output_for_each_container(%struct.sway_output*, i32, i32*) #1

declare dso_local i32 @arrange_output(%struct.sway_output*) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @update_output_manager_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
