; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_free_waiters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_free_waiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_event_waiter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.kfd_event_waiter*)* @free_waiters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_waiters(i64 %0, %struct.kfd_event_waiter* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kfd_event_waiter*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.kfd_event_waiter* %1, %struct.kfd_event_waiter** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %11, i64 %12
  %14 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %18, i64 %19
  %21 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %24, i64 %25
  %27 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %26, i32 0, i32 0
  %28 = call i32 @remove_wait_queue(i32* %23, i32* %27)
  br label %29

29:                                               ; preds = %17, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %6

33:                                               ; preds = %6
  %34 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %4, align 8
  %35 = call i32 @kfree(%struct.kfd_event_waiter* %34)
  ret void
}

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.kfd_event_waiter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
