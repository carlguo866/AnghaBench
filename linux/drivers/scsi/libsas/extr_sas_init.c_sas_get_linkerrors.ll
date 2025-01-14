; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_get_linkerrors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_init.c_sas_get_linkerrors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_phy = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_8__, %struct.asd_sas_phy** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.asd_sas_phy = type { i32 }
%struct.sas_internal = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }

@PHY_FUNC_GET_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_phy*)* @sas_get_linkerrors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_get_linkerrors(%struct.sas_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_phy*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_phy*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.sas_phy* %0, %struct.sas_phy** %3, align 8
  %8 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %9 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %13 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.Scsi_Host* @dev_to_shost(i32 %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %4, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %17)
  store %struct.sas_ha_struct* %18, %struct.sas_ha_struct** %5, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 1
  %21 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %20, align 8
  %22 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %23 = getelementptr inbounds %struct.sas_phy, %struct.sas_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %21, i64 %24
  %26 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %25, align 8
  store %struct.asd_sas_phy* %26, %struct.asd_sas_phy** %6, align 8
  %27 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %28 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.sas_internal* @to_sas_internal(i32 %32)
  store %struct.sas_internal* %33, %struct.sas_internal** %7, align 8
  %34 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %35 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %37, align 8
  %39 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %6, align 8
  %40 = load i32, i32* @PHY_FUNC_GET_EVENTS, align 4
  %41 = call i32 %38(%struct.asd_sas_phy* %39, i32 %40, i32* null)
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.sas_phy*, %struct.sas_phy** %3, align 8
  %44 = call i32 @sas_smp_get_phy_events(%struct.sas_phy* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sas_smp_get_phy_events(%struct.sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
