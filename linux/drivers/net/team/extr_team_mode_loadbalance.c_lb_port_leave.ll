; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_port_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team_mode_loadbalance.c_lb_port_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.team = type { i32 }
%struct.team_port = type { i32 }
%struct.lb_port_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.team*, %struct.team_port*)* @lb_port_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lb_port_leave(%struct.team* %0, %struct.team_port* %1) #0 {
  %3 = alloca %struct.team*, align 8
  %4 = alloca %struct.team_port*, align 8
  %5 = alloca %struct.lb_port_priv*, align 8
  store %struct.team* %0, %struct.team** %3, align 8
  store %struct.team_port* %1, %struct.team_port** %4, align 8
  %6 = load %struct.team_port*, %struct.team_port** %4, align 8
  %7 = call %struct.lb_port_priv* @get_lb_port_priv(%struct.team_port* %6)
  store %struct.lb_port_priv* %7, %struct.lb_port_priv** %5, align 8
  %8 = load %struct.lb_port_priv*, %struct.lb_port_priv** %5, align 8
  %9 = getelementptr inbounds %struct.lb_port_priv, %struct.lb_port_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @free_percpu(i32 %10)
  ret void
}

declare dso_local %struct.lb_port_priv* @get_lb_port_priv(%struct.team_port*) #1

declare dso_local i32 @free_percpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
