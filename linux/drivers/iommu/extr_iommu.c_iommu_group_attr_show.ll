; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.iommu_group_attribute = type { i32 (%struct.iommu_group*, i8*)* }
%struct.iommu_group = type opaque
%struct.iommu_group.0 = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @iommu_group_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_group_attr_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iommu_group_attribute*, align 8
  %8 = alloca %struct.iommu_group.0*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.attribute*, %struct.attribute** %5, align 8
  %11 = call %struct.iommu_group_attribute* @to_iommu_group_attr(%struct.attribute* %10)
  store %struct.iommu_group_attribute* %11, %struct.iommu_group_attribute** %7, align 8
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = call %struct.iommu_group.0* @to_iommu_group(%struct.kobject* %12)
  store %struct.iommu_group.0* %13, %struct.iommu_group.0** %8, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.iommu_group_attribute*, %struct.iommu_group_attribute** %7, align 8
  %17 = getelementptr inbounds %struct.iommu_group_attribute, %struct.iommu_group_attribute* %16, i32 0, i32 0
  %18 = load i32 (%struct.iommu_group*, i8*)*, i32 (%struct.iommu_group*, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.iommu_group*, i8*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.iommu_group_attribute*, %struct.iommu_group_attribute** %7, align 8
  %22 = getelementptr inbounds %struct.iommu_group_attribute, %struct.iommu_group_attribute* %21, i32 0, i32 0
  %23 = load i32 (%struct.iommu_group*, i8*)*, i32 (%struct.iommu_group*, i8*)** %22, align 8
  %24 = load %struct.iommu_group.0*, %struct.iommu_group.0** %8, align 8
  %25 = bitcast %struct.iommu_group.0* %24 to %struct.iommu_group*
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 %23(%struct.iommu_group* %25, i8* %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %20, %3
  %29 = load i32, i32* %9, align 4
  ret i32 %29
}

declare dso_local %struct.iommu_group_attribute* @to_iommu_group_attr(%struct.attribute*) #1

declare dso_local %struct.iommu_group.0* @to_iommu_group(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
