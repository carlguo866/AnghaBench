; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recoverd.c_dlm_recoverd_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recoverd.c_dlm_recoverd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.task_struct* }
%struct.task_struct = type { i32 }

@dlm_recoverd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dlm_recoverd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_recoverd_start(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @dlm_recoverd, align 4
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %7 = call %struct.task_struct* @kthread_run(i32 %5, %struct.dlm_ls* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %7, %struct.task_struct** %3, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call i64 @IS_ERR(%struct.task_struct* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = call i32 @PTR_ERR(%struct.task_struct* %12)
  store i32 %13, i32* %4, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %17 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %16, i32 0, i32 0
  store %struct.task_struct* %15, %struct.task_struct** %17, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.dlm_ls*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
