; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_port_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_port_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@vio = common dso_local global %struct.vio_driver_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @vio_port_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vio_port_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.vio_driver_state*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %5 = ptrtoint %struct.vio_driver_state* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.vio_driver_state* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.vio_driver_state* %8, %struct.vio_driver_state** %3, align 8
  %9 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %10 = call i32 @vio_port_up(%struct.vio_driver_state* %9)
  ret void
}

declare dso_local %struct.vio_driver_state* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @vio_port_up(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
