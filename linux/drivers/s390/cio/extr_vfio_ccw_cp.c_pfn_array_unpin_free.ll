; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_pfn_array_unpin_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_pfn_array_unpin_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfn_array = type { i32, i64 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfn_array*, %struct.device*)* @pfn_array_unpin_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfn_array_unpin_free(%struct.pfn_array* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.pfn_array*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.pfn_array* %0, %struct.pfn_array** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %5 = load %struct.pfn_array*, %struct.pfn_array** %3, align 8
  %6 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load %struct.pfn_array*, %struct.pfn_array** %3, align 8
  %12 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pfn_array*, %struct.pfn_array** %3, align 8
  %15 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @vfio_unpin_pages(%struct.device* %10, i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.pfn_array*, %struct.pfn_array** %3, align 8
  %20 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.pfn_array*, %struct.pfn_array** %3, align 8
  %22 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @kfree(i32 %23)
  ret void
}

declare dso_local i32 @vfio_unpin_pages(%struct.device*, i32, i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
