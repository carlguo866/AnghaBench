; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_del_mc_from_global_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_del_mc_from_global_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32 }

@edac_handlers = common dso_local global i32 0, align 4
@complete_mc_list_del = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @del_mc_from_global_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_mc_from_global_list(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %3 = call i32 @atomic_dec(i32* @edac_handlers)
  %4 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %5 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %4, i32 0, i32 1
  %6 = call i32 @list_del_rcu(i32* %5)
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load i32, i32* @complete_mc_list_del, align 4
  %10 = call i32 @call_rcu(i32* %8, i32 %9)
  %11 = call i32 (...) @rcu_barrier()
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @rcu_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
