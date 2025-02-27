; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_wq_per_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_wq_per_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_workqueue_struct = type { i32 }
%struct.workqueue_struct = type { i32 }

@singlethread_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpu_workqueue_struct* (%struct.workqueue_struct*, i32)* @wq_per_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpu_workqueue_struct* @wq_per_cpu(%struct.workqueue_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %6 = call i32 @is_wq_single_threaded(%struct.workqueue_struct* %5)
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @singlethread_cpu, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %13 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.cpu_workqueue_struct* @per_cpu_ptr(i32 %14, i32 %15)
  ret %struct.cpu_workqueue_struct* %16
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_wq_single_threaded(%struct.workqueue_struct*) #1

declare dso_local %struct.cpu_workqueue_struct* @per_cpu_ptr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
