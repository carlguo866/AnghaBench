; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_get_port_settings_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32 }

@rocker_cmd_get_port_settings_prep = common dso_local global i32 0, align 4
@rocker_cmd_get_port_settings_mode_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, i32*)* @rocker_cmd_get_port_settings_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_get_port_settings_mode(%struct.rocker_port* %0, i32* %1) #0 {
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca i32*, align 8
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %6 = load i32, i32* @rocker_cmd_get_port_settings_prep, align 4
  %7 = load i32, i32* @rocker_cmd_get_port_settings_mode_proc, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @rocker_cmd_exec(%struct.rocker_port* %5, i32 0, i32 %6, i32* null, i32 %7, i32* %8)
  ret i32 %9
}

declare dso_local i32 @rocker_cmd_exec(%struct.rocker_port*, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
