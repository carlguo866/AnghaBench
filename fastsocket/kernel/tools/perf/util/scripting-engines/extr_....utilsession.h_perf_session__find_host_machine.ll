; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_....utilsession.h_perf_session__find_host_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/scripting-engines/extr_....utilsession.h_perf_session__find_host_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.perf_session = type { %struct.machine }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.machine* (%struct.perf_session*)* @perf_session__find_host_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.machine* @perf_session__find_host_machine(%struct.perf_session* %0) #0 {
  %2 = alloca %struct.perf_session*, align 8
  store %struct.perf_session* %0, %struct.perf_session** %2, align 8
  %3 = load %struct.perf_session*, %struct.perf_session** %2, align 8
  %4 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %3, i32 0, i32 0
  ret %struct.machine* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
