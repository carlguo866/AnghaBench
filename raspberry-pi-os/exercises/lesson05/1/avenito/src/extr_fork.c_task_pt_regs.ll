; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/1/avenito/src/extr_fork.c_task_pt_regs.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/1/avenito/src/extr_fork.c_task_pt_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.task_struct = type { i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = ptrtoint %struct.task_struct* %4 to i64
  %6 = load i64, i64* @THREAD_SIZE, align 8
  %7 = add i64 %5, %6
  %8 = sub i64 %7, 4
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to %struct.pt_regs*
  ret %struct.pt_regs* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
