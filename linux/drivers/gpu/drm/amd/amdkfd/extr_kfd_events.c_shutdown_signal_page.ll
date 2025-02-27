; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_shutdown_signal_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_shutdown_signal_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { %struct.kfd_signal_page* }
%struct.kfd_signal_page = type { i64, i64 }

@KFD_SIGNAL_EVENT_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_process*)* @shutdown_signal_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_signal_page(%struct.kfd_process* %0) #0 {
  %2 = alloca %struct.kfd_process*, align 8
  %3 = alloca %struct.kfd_signal_page*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %2, align 8
  %4 = load %struct.kfd_process*, %struct.kfd_process** %2, align 8
  %5 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %4, i32 0, i32 0
  %6 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %5, align 8
  store %struct.kfd_signal_page* %6, %struct.kfd_signal_page** %3, align 8
  %7 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %3, align 8
  %8 = icmp ne %struct.kfd_signal_page* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %3, align 8
  %11 = getelementptr inbounds %struct.kfd_signal_page, %struct.kfd_signal_page* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %3, align 8
  %16 = getelementptr inbounds %struct.kfd_signal_page, %struct.kfd_signal_page* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @KFD_SIGNAL_EVENT_LIMIT, align 4
  %19 = mul nsw i32 %18, 8
  %20 = call i32 @get_order(i32 %19)
  %21 = call i32 @free_pages(i64 %17, i32 %20)
  br label %22

22:                                               ; preds = %14, %9
  %23 = load %struct.kfd_signal_page*, %struct.kfd_signal_page** %3, align 8
  %24 = call i32 @kfree(%struct.kfd_signal_page* %23)
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(%struct.kfd_signal_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
