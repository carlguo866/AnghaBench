; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_handle_swaybg_client_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_handle_swaybg_client_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_config = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wl_listener = type { i32 }

@swaybg_client_destroy = common dso_local global i32 0, align 4
@sway_config = common dso_local global %struct.sway_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_swaybg_client_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_swaybg_client_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_config*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %7 = load %struct.sway_config*, %struct.sway_config** %5, align 8
  %8 = ptrtoint %struct.sway_config* %7 to i32
  %9 = load i32, i32* @swaybg_client_destroy, align 4
  %10 = call %struct.sway_config* @wl_container_of(%struct.wl_listener* %6, i32 %8, i32 %9)
  store %struct.sway_config* %10, %struct.sway_config** %5, align 8
  %11 = load %struct.sway_config*, %struct.sway_config** %5, align 8
  %12 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @wl_list_remove(i32* %13)
  %15 = load %struct.sway_config*, %struct.sway_config** %5, align 8
  %16 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @wl_list_init(i32* %17)
  %19 = load %struct.sway_config*, %struct.sway_config** %5, align 8
  %20 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local %struct.sway_config* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
