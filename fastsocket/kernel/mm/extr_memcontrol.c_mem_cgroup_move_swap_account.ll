; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_move_swap_account.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_move_swap_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mem_cgroup*, %struct.mem_cgroup*, i32)* @mem_cgroup_move_swap_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_move_swap_account(i32 %0, %struct.mem_cgroup* %1, %struct.mem_cgroup* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %6, align 8
  store %struct.mem_cgroup* %2, %struct.mem_cgroup** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
