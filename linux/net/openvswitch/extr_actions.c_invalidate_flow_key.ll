; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_invalidate_flow_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_invalidate_flow_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i32 }

@SW_FLOW_KEY_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw_flow_key*)* @invalidate_flow_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_flow_key(%struct.sw_flow_key* %0) #0 {
  %2 = alloca %struct.sw_flow_key*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %2, align 8
  %3 = load i32, i32* @SW_FLOW_KEY_INVALID, align 4
  %4 = load %struct.sw_flow_key*, %struct.sw_flow_key** %2, align 8
  %5 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
