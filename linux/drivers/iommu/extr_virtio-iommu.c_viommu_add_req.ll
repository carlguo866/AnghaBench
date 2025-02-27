; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_add_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"could not add request: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*, i8*, i64)* @viommu_add_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viommu_add_req(%struct.viommu_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.viommu_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %10 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @__viommu_add_req(%struct.viommu_dev* %13, i8* %14, i64 %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %21 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.viommu_dev*, %struct.viommu_dev** %4, align 8
  %27 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__viommu_add_req(%struct.viommu_dev*, i8*, i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
