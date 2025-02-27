; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_acquire_bch_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_acquire_bch_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GPMI_NAND_BCH_INTERRUPT_RES_NAME = common dso_local global i8* null, align 8
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't get resource for %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error requesting BCH IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*, i32)* @acquire_bch_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_bch_irq(%struct.gpmi_nand_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpmi_nand_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %11 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %10, i32 0, i32 1
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %6, align 8
  %13 = load i8*, i8** @GPMI_NAND_BCH_INTERRUPT_RES_NAME, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = load i32, i32* @IORESOURCE_IRQ, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %14, i32 %15, i8* %16)
  store %struct.resource* %17, %struct.resource** %8, align 8
  %18 = load %struct.resource*, %struct.resource** %8, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %22 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %2
  %29 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %30 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %38 = call i32 @devm_request_irq(i32 %31, i32 %34, i32 %35, i32 0, i8* %36, %struct.gpmi_nand_data* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %43 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %28
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
