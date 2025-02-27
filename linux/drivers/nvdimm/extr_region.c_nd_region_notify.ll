; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region.c_nd_region_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region.c_nd_region_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i64, i32, i64, i64, i32 }
%struct.resource = type { i64, i64 }

@NVDIMM_REVALIDATE_POISON = common dso_local global i32 0, align 4
@child_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @nd_region_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd_region_notify(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_region*, align 8
  %6 = alloca %struct.resource, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NVDIMM_REVALIDATE_POISON, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.nd_region* @to_nd_region(%struct.device* %11)
  store %struct.nd_region* %12, %struct.nd_region** %5, align 8
  %13 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %14 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %13, i32 0, i32 4
  %15 = call i64 @is_memory(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %10
  %18 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %19 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  %22 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %23 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %26 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = sub nsw i64 %28, 1
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %32 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %33 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %32, i32 0, i32 1
  %34 = call i32 @nvdimm_badblocks_populate(%struct.nd_region* %31, i32* %33, %struct.resource* %6)
  %35 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %36 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load %struct.nd_region*, %struct.nd_region** %5, align 8
  %41 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @sysfs_notify_dirent(i64 %42)
  br label %44

44:                                               ; preds = %39, %17
  br label %45

45:                                               ; preds = %44, %10
  br label %46

46:                                               ; preds = %45, %2
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load i32, i32* @child_notify, align 4
  %49 = call i32 @device_for_each_child(%struct.device* %47, i32* %4, i32 %48)
  ret void
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i64 @is_memory(i32*) #1

declare dso_local i32 @nvdimm_badblocks_populate(%struct.nd_region*, i32*, %struct.resource*) #1

declare dso_local i32 @sysfs_notify_dirent(i64) #1

declare dso_local i32 @device_for_each_child(%struct.device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
