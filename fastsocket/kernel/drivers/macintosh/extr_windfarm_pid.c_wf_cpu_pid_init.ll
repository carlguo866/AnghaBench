; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pid.c_wf_cpu_pid_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_pid.c_wf_cpu_pid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_cpu_pid_state = type { i32, %struct.wf_cpu_pid_param }
%struct.wf_cpu_pid_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wf_cpu_pid_init(%struct.wf_cpu_pid_state* %0, %struct.wf_cpu_pid_param* %1) #0 {
  %3 = alloca %struct.wf_cpu_pid_state*, align 8
  %4 = alloca %struct.wf_cpu_pid_param*, align 8
  store %struct.wf_cpu_pid_state* %0, %struct.wf_cpu_pid_state** %3, align 8
  store %struct.wf_cpu_pid_param* %1, %struct.wf_cpu_pid_param** %4, align 8
  %5 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %3, align 8
  %6 = call i32 @memset(%struct.wf_cpu_pid_state* %5, i32 0, i32 8)
  %7 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %3, align 8
  %8 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %7, i32 0, i32 1
  %9 = load %struct.wf_cpu_pid_param*, %struct.wf_cpu_pid_param** %4, align 8
  %10 = bitcast %struct.wf_cpu_pid_param* %8 to i8*
  %11 = bitcast %struct.wf_cpu_pid_param* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load %struct.wf_cpu_pid_state*, %struct.wf_cpu_pid_state** %3, align 8
  %13 = getelementptr inbounds %struct.wf_cpu_pid_state, %struct.wf_cpu_pid_state* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  ret void
}

declare dso_local i32 @memset(%struct.wf_cpu_pid_state*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
