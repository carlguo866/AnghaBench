; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_create_sysfs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_create_sysfs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.hidma_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hidma_show_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_attribute* (%struct.hidma_dev*, i8*, i32)* @hidma_create_sysfs_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_attribute* @hidma_create_sysfs_entry(%struct.hidma_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca %struct.hidma_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca i8*, align 8
  store %struct.hidma_dev* %0, %struct.hidma_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hidma_dev*, %struct.hidma_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.device_attribute* @devm_kmalloc(i32 %13, i32 24, i32 %14)
  store %struct.device_attribute* %15, %struct.device_attribute** %8, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %17 = icmp ne %struct.device_attribute* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.device_attribute* null, %struct.device_attribute** %4, align 8
  br label %46

19:                                               ; preds = %3
  %20 = load %struct.hidma_dev*, %struct.hidma_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kstrdup(i32 %23, i8* %24, i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store %struct.device_attribute* null, %struct.device_attribute** %4, align 8
  br label %46

30:                                               ; preds = %19
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %33 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %37 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @hidma_show_values, align 4
  %40 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %41 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %43 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %42, i32 0, i32 0
  %44 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %43)
  %45 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  store %struct.device_attribute* %45, %struct.device_attribute** %4, align 8
  br label %46

46:                                               ; preds = %30, %29, %18
  %47 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  ret %struct.device_attribute* %47
}

declare dso_local %struct.device_attribute* @devm_kmalloc(i32, i32, i32) #1

declare dso_local i8* @devm_kstrdup(i32, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
