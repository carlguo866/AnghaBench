; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_prog_fill_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_bpf.c_tcf_bpf_prog_fill_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_bpf = type { i32, i32, i32 }
%struct.tcf_bpf_cfg = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_bpf*, %struct.tcf_bpf_cfg*)* @tcf_bpf_prog_fill_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_bpf_prog_fill_cfg(%struct.tcf_bpf* %0, %struct.tcf_bpf_cfg* %1) #0 {
  %3 = alloca %struct.tcf_bpf*, align 8
  %4 = alloca %struct.tcf_bpf_cfg*, align 8
  store %struct.tcf_bpf* %0, %struct.tcf_bpf** %3, align 8
  store %struct.tcf_bpf_cfg* %1, %struct.tcf_bpf_cfg** %4, align 8
  %5 = load %struct.tcf_bpf*, %struct.tcf_bpf** %3, align 8
  %6 = call i32 @tcf_bpf_is_ebpf(%struct.tcf_bpf* %5)
  %7 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load %struct.tcf_bpf*, %struct.tcf_bpf** %3, align 8
  %10 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rcu_dereference_protected(i32 %11, i32 1)
  %13 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tcf_bpf*, %struct.tcf_bpf** %3, align 8
  %16 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tcf_bpf*, %struct.tcf_bpf** %3, align 8
  %21 = getelementptr inbounds %struct.tcf_bpf, %struct.tcf_bpf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tcf_bpf_cfg*, %struct.tcf_bpf_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.tcf_bpf_cfg, %struct.tcf_bpf_cfg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @tcf_bpf_is_ebpf(%struct.tcf_bpf*) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
