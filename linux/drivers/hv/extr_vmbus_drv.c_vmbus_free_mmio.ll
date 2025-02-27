; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_free_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_free_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, %struct.resource* }

@hyperv_mmio_lock = common dso_local global i32 0, align 4
@hyperv_mmio = common dso_local global %struct.resource* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_free_mmio(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.resource*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 @down(i32* @hyperv_mmio_lock)
  %7 = load %struct.resource*, %struct.resource** @hyperv_mmio, align 8
  store %struct.resource* %7, %struct.resource** %5, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.resource*, %struct.resource** %5, align 8
  %10 = icmp ne %struct.resource* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.resource*, %struct.resource** %5, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %15, %16
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load %struct.resource*, %struct.resource** %5, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %11
  br label %31

26:                                               ; preds = %19
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @__release_region(%struct.resource* %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %25
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 2
  %34 = load %struct.resource*, %struct.resource** %33, align 8
  store %struct.resource* %34, %struct.resource** %5, align 8
  br label %8

35:                                               ; preds = %8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @release_mem_region(i64 %36, i64 %37)
  %39 = call i32 @up(i32* @hyperv_mmio_lock)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @__release_region(%struct.resource*, i64, i64) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
