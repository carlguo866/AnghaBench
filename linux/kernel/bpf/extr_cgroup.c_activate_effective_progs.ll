; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_activate_effective_progs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c_activate_effective_progs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bpf_prog_array = type { i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, i32, %struct.bpf_prog_array*)* @activate_effective_progs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_effective_progs(%struct.cgroup* %0, i32 %1, %struct.bpf_prog_array* %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_prog_array*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bpf_prog_array* %2, %struct.bpf_prog_array** %6, align 8
  %7 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %8 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %16 = call i32 @lockdep_is_held(i32* @cgroup_mutex)
  %17 = call i32 @rcu_swap_protected(i32 %14, %struct.bpf_prog_array* %15, i32 %16)
  %18 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %19 = call i32 @bpf_prog_array_free(%struct.bpf_prog_array* %18)
  ret void
}

declare dso_local i32 @rcu_swap_protected(i32, %struct.bpf_prog_array*, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @bpf_prog_array_free(%struct.bpf_prog_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
