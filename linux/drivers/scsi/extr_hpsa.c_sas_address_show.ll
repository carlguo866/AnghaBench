; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_sas_address_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_sas_address_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ctlr_info = type { i32 }
%struct.scsi_device = type { %struct.hpsa_scsi_dev_t* }
%struct.hpsa_scsi_dev_t = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sas_address_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_address_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ctlr_info*, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.scsi_device* @to_scsi_device(%struct.device* %13)
  store %struct.scsi_device* %14, %struct.scsi_device** %9, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %16 = call %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device* %15)
  store %struct.ctlr_info* %16, %struct.ctlr_info** %8, align 8
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %18 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %17, i32 0, i32 0
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %22, align 8
  store %struct.hpsa_scsi_dev_t* %23, %struct.hpsa_scsi_dev_t** %10, align 8
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %25 = icmp ne %struct.hpsa_scsi_dev_t* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %28 = call i64 @is_logical_device(%struct.hpsa_scsi_dev_t* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %32 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30, %26, %3
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %37 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %54

42:                                               ; preds = %30
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %44 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %42, %35
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.ctlr_info* @sdev_to_hba(%struct.scsi_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @is_logical_device(%struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
