; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_scsi_is_fc_vport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_scsi_is_fc_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }

@fc_vport_dev_release = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_is_fc_vport(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @fc_vport_dev_release, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
