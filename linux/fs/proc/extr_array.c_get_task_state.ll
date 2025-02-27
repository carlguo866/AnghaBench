; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_get_task_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_get_task_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@TASK_REPORT_MAX = common dso_local global i32 0, align 4
@task_state_array = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.task_struct*)* @get_task_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_task_state(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %3 = load i32, i32* @TASK_REPORT_MAX, align 4
  %4 = call i64 @ilog2(i32 %3)
  %5 = add nsw i64 1, %4
  %6 = load i8**, i8*** @task_state_array, align 8
  %7 = call i64 @ARRAY_SIZE(i8** %6)
  %8 = icmp ne i64 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load i8**, i8*** @task_state_array, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = call i64 @task_state_index(%struct.task_struct* %12)
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  ret i8* %15
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @task_state_index(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
