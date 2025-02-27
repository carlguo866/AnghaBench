; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_process_thread_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_process_thread_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pmc_process = type { i32 }

@PMC_FLAG_NONE = common dso_local global i32 0, align 4
@PMC_FLAG_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @pmc_process_thread_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_process_thread_delete(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pmc_process*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PMC_FLAG_NONE, align 4
  %8 = call %struct.pmc_process* @pmc_find_process_descriptor(i32 %6, i32 %7)
  store %struct.pmc_process* %8, %struct.pmc_process** %3, align 8
  %9 = load %struct.pmc_process*, %struct.pmc_process** %3, align 8
  %10 = icmp ne %struct.pmc_process* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.pmc_process*, %struct.pmc_process** %3, align 8
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = load i32, i32* @PMC_FLAG_REMOVE, align 4
  %15 = call i32 @pmc_find_thread_descriptor(%struct.pmc_process* %12, %struct.thread* %13, i32 %14)
  %16 = call i32 @pmc_thread_descriptor_pool_free(i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.pmc_process* @pmc_find_process_descriptor(i32, i32) #1

declare dso_local i32 @pmc_thread_descriptor_pool_free(i32) #1

declare dso_local i32 @pmc_find_thread_descriptor(%struct.pmc_process*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
