; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-pltfm.c_dw_mci_pltfm_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-pltfm.c_dw_mci_pltfm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dw_mci_drv_data = type { i32 }
%struct.dw_mci = type { i64, i32, i32, i32, i64, %struct.TYPE_3__*, %struct.dw_mci_drv_data* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dw_mci_pltfm_register(%struct.platform_device* %0, %struct.dw_mci_drv_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dw_mci_drv_data*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dw_mci_drv_data* %1, %struct.dw_mci_drv_data** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dw_mci* @devm_kzalloc(%struct.TYPE_3__* %9, i32 48, i32 %10)
  store %struct.dw_mci* %11, %struct.dw_mci** %6, align 8
  %12 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %13 = icmp ne %struct.dw_mci* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = call i64 @platform_get_irq(%struct.platform_device* %18, i32 0)
  %20 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %21 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %23 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %28 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %17
  %32 = load %struct.dw_mci_drv_data*, %struct.dw_mci_drv_data** %5, align 8
  %33 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %34 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %33, i32 0, i32 6
  store %struct.dw_mci_drv_data* %32, %struct.dw_mci_drv_data** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %38 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %37, i32 0, i32 5
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %38, align 8
  %39 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %40 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %46 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 0)
  store %struct.resource* %49, %struct.resource** %7, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = call i32 @devm_ioremap_resource(%struct.TYPE_3__* %51, %struct.resource* %52)
  %54 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %55 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %57 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %31
  %62 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %63 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %77

66:                                               ; preds = %31
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %71 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %73 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.dw_mci* %73)
  %75 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %76 = call i32 @dw_mci_probe(%struct.dw_mci* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %66, %61, %26, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.dw_mci* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_mci*) #1

declare dso_local i32 @dw_mci_probe(%struct.dw_mci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
