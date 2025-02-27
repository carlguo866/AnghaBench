; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_work_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_workqueue.c_work_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@WORK_BUSY_PENDING = common dso_local global i32 0, align 4
@WORK_BUSY_RUNNING = common dso_local global i32 0, align 4
@gcwq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_busy(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %5 = call i64 @work_pending(%struct.work_struct* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @WORK_BUSY_PENDING, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i64 @work_pending(%struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
