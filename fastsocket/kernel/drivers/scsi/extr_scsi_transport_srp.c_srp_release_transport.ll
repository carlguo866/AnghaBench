; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_release_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_release_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_transport_template = type { i32 }
%struct.srp_internal = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srp_release_transport(%struct.scsi_transport_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.srp_internal*, align 8
  store %struct.scsi_transport_template* %0, %struct.scsi_transport_template** %2, align 8
  %4 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  %5 = call %struct.srp_internal* @to_srp_internal(%struct.scsi_transport_template* %4)
  store %struct.srp_internal* %5, %struct.srp_internal** %3, align 8
  %6 = load %struct.srp_internal*, %struct.srp_internal** %3, align 8
  %7 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @transport_container_unregister(i32* %8)
  %10 = load %struct.srp_internal*, %struct.srp_internal** %3, align 8
  %11 = getelementptr inbounds %struct.srp_internal, %struct.srp_internal* %10, i32 0, i32 0
  %12 = call i32 @transport_container_unregister(i32* %11)
  %13 = load %struct.srp_internal*, %struct.srp_internal** %3, align 8
  %14 = call i32 @kfree(%struct.srp_internal* %13)
  ret void
}

declare dso_local %struct.srp_internal* @to_srp_internal(%struct.scsi_transport_template*) #1

declare dso_local i32 @transport_container_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.srp_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
