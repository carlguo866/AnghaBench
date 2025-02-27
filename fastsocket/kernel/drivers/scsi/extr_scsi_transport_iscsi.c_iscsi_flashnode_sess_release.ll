; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_flashnode_sess_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_flashnode_sess_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iscsi_bus_flash_session = type { %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @iscsi_flashnode_sess_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_flashnode_sess_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iscsi_bus_flash_session*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.iscsi_bus_flash_session* @iscsi_dev_to_flash_session(%struct.device* %4)
  store %struct.iscsi_bus_flash_session* %5, %struct.iscsi_bus_flash_session** %3, align 8
  %6 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %6, i32 0, i32 2
  %8 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %7, align 8
  %9 = call i32 @kfree(%struct.iscsi_bus_flash_session* %8)
  %10 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %3, align 8
  %11 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %10, i32 0, i32 1
  %12 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %11, align 8
  %13 = call i32 @kfree(%struct.iscsi_bus_flash_session* %12)
  %14 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_bus_flash_session, %struct.iscsi_bus_flash_session* %14, i32 0, i32 0
  %16 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %15, align 8
  %17 = call i32 @kfree(%struct.iscsi_bus_flash_session* %16)
  %18 = load %struct.iscsi_bus_flash_session*, %struct.iscsi_bus_flash_session** %3, align 8
  %19 = call i32 @kfree(%struct.iscsi_bus_flash_session* %18)
  ret void
}

declare dso_local %struct.iscsi_bus_flash_session* @iscsi_dev_to_flash_session(%struct.device*) #1

declare dso_local i32 @kfree(%struct.iscsi_bus_flash_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
