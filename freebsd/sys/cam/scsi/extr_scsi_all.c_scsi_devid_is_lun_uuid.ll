; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_devid_is_lun_uuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_devid_is_lun_uuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_vpd_id_descriptor = type { i32 }

@SVPD_ID_ASSOC_MASK = common dso_local global i32 0, align 4
@SVPD_ID_ASSOC_LUN = common dso_local global i32 0, align 4
@SVPD_ID_TYPE_MASK = common dso_local global i32 0, align 4
@SVPD_ID_TYPE_UUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_devid_is_lun_uuid(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = bitcast i32* %5 to %struct.scsi_vpd_id_descriptor*
  store %struct.scsi_vpd_id_descriptor* %6, %struct.scsi_vpd_id_descriptor** %4, align 8
  %7 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SVPD_ID_ASSOC_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @SVPD_ID_ASSOC_LUN, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SVPD_ID_TYPE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SVPD_ID_TYPE_UUID, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
