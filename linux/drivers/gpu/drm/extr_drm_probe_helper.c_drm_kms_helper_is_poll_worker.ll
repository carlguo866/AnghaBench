; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_probe_helper.c_drm_kms_helper_is_poll_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_probe_helper.c_drm_kms_helper_is_poll_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i64 }

@output_poll_execute = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_kms_helper_is_poll_worker() #0 {
  %1 = alloca %struct.work_struct*, align 8
  %2 = call %struct.work_struct* (...) @current_work()
  store %struct.work_struct* %2, %struct.work_struct** %1, align 8
  %3 = load %struct.work_struct*, %struct.work_struct** %1, align 8
  %4 = icmp ne %struct.work_struct* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load %struct.work_struct*, %struct.work_struct** %1, align 8
  %7 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @output_poll_execute, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %5, %0
  %12 = phi i1 [ false, %0 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local %struct.work_struct* @current_work(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
