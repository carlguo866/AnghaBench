; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_alloc_slow_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_alloc_slow_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.sas_task_slow* }
%struct.sas_task_slow = type { i32, i32, %struct.sas_task* }

@sas_task_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sas_task* @sas_alloc_slow_task(i32 %0) #0 {
  %2 = alloca %struct.sas_task*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca %struct.sas_task_slow*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.sas_task* @sas_alloc_task(i32 %6)
  store %struct.sas_task* %7, %struct.sas_task** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.sas_task_slow* @kmalloc(i32 16, i32 %8)
  store %struct.sas_task_slow* %9, %struct.sas_task_slow** %5, align 8
  %10 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %11 = icmp ne %struct.sas_task* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.sas_task_slow*, %struct.sas_task_slow** %5, align 8
  %14 = icmp ne %struct.sas_task_slow* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %17 = icmp ne %struct.sas_task* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @sas_task_cache, align 4
  %20 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %21 = call i32 @kmem_cache_free(i32 %19, %struct.sas_task* %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.sas_task_slow*, %struct.sas_task_slow** %5, align 8
  %24 = call i32 @kfree(%struct.sas_task_slow* %23)
  store %struct.sas_task* null, %struct.sas_task** %2, align 8
  br label %39

25:                                               ; preds = %12
  %26 = load %struct.sas_task_slow*, %struct.sas_task_slow** %5, align 8
  %27 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %28 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %27, i32 0, i32 0
  store %struct.sas_task_slow* %26, %struct.sas_task_slow** %28, align 8
  %29 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %30 = load %struct.sas_task_slow*, %struct.sas_task_slow** %5, align 8
  %31 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %30, i32 0, i32 2
  store %struct.sas_task* %29, %struct.sas_task** %31, align 8
  %32 = load %struct.sas_task_slow*, %struct.sas_task_slow** %5, align 8
  %33 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %32, i32 0, i32 1
  %34 = call i32 @timer_setup(i32* %33, i32* null, i32 0)
  %35 = load %struct.sas_task_slow*, %struct.sas_task_slow** %5, align 8
  %36 = getelementptr inbounds %struct.sas_task_slow, %struct.sas_task_slow* %35, i32 0, i32 0
  %37 = call i32 @init_completion(i32* %36)
  %38 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  store %struct.sas_task* %38, %struct.sas_task** %2, align 8
  br label %39

39:                                               ; preds = %25, %22
  %40 = load %struct.sas_task*, %struct.sas_task** %2, align 8
  ret %struct.sas_task* %40
}

declare dso_local %struct.sas_task* @sas_alloc_task(i32) #1

declare dso_local %struct.sas_task_slow* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sas_task*) #1

declare dso_local i32 @kfree(%struct.sas_task_slow*) #1

declare dso_local i32 @timer_setup(i32*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
