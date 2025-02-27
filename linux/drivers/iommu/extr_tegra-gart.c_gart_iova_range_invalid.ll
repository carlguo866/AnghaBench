; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iova_range_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-gart.c_gart_iova_range_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gart_device = type { i64, i64 }

@GART_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gart_device*, i64, i64)* @gart_iova_range_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gart_iova_range_invalid(%struct.gart_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gart_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gart_device* %0, %struct.gart_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.gart_device*, %struct.gart_device** %4, align 8
  %9 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @GART_PAGE_SIZE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %17, %18
  %20 = load %struct.gart_device*, %struct.gart_device** %4, align 8
  %21 = getelementptr inbounds %struct.gart_device, %struct.gart_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %19, %22
  br label %24

24:                                               ; preds = %16, %12, %3
  %25 = phi i1 [ true, %12 ], [ true, %3 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @unlikely(i32 %26)
  ret i32 %27
}

declare dso_local i32 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
