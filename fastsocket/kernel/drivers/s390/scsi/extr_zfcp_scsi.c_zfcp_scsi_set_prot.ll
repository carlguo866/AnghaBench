; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_set_prot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_set_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, %struct.TYPE_2__*, i32, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32, i32 }

@ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED = common dso_local global i32 0, align 4
@enable_dif = common dso_local global i64 0, align 8
@FSF_FEATURE_DIF_PROT_TYPE1 = common dso_local global i32 0, align 4
@SHOST_DIF_TYPE1_PROTECTION = common dso_local global i32 0, align 4
@FSF_FEATURE_DIX_PROT_TCPIP = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_IP = common dso_local global i32 0, align 4
@SHOST_DIX_TYPE1_PROTECTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_scsi_set_prot(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %6, i32 0, i32 3
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  store %struct.Scsi_Host* %8, %struct.Scsi_Host** %5, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 2
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @ZFCP_STATUS_ADAPTER_DATA_DIV_ENABLED, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @enable_dif, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FSF_FEATURE_DIF_PROT_TYPE1, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @SHOST_DIF_TYPE1_PROTECTION, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %16, %1
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @scsi_host_set_prot(%struct.Scsi_Host* %28, i32 %29)
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @scsi_host_set_prot(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
