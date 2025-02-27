; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_clear_lun_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_clear_lun_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.zfcp_scsi_dev = type { i32, i32 }

@ZFCP_STATUS_COMMON_ERP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_erp_clear_lun_status(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zfcp_scsi_dev*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = call %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device* %6)
  store %struct.zfcp_scsi_dev* %7, %struct.zfcp_scsi_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %10 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %9, i32 0, i32 1
  %11 = call i32 @atomic_andnot(i32 %8, i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ZFCP_STATUS_COMMON_ERP_FAILED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.zfcp_scsi_dev*, %struct.zfcp_scsi_dev** %5, align 8
  %18 = getelementptr inbounds %struct.zfcp_scsi_dev, %struct.zfcp_scsi_dev* %17, i32 0, i32 0
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.zfcp_scsi_dev* @sdev_to_zfcp(%struct.scsi_device*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
