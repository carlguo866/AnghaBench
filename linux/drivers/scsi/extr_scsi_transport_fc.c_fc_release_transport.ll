; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_release_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_fc.c_fc_release_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_transport_template = type { i32 }
%struct.fc_internal = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fc_release_transport(%struct.scsi_transport_template* %0) #0 {
  %2 = alloca %struct.scsi_transport_template*, align 8
  %3 = alloca %struct.fc_internal*, align 8
  store %struct.scsi_transport_template* %0, %struct.scsi_transport_template** %2, align 8
  %4 = load %struct.scsi_transport_template*, %struct.scsi_transport_template** %2, align 8
  %5 = call %struct.fc_internal* @to_fc_internal(%struct.scsi_transport_template* %4)
  store %struct.fc_internal* %5, %struct.fc_internal** %3, align 8
  %6 = load %struct.fc_internal*, %struct.fc_internal** %3, align 8
  %7 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @transport_container_unregister(i32* %8)
  %10 = load %struct.fc_internal*, %struct.fc_internal** %3, align 8
  %11 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @transport_container_unregister(i32* %12)
  %14 = load %struct.fc_internal*, %struct.fc_internal** %3, align 8
  %15 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %14, i32 0, i32 1
  %16 = call i32 @transport_container_unregister(i32* %15)
  %17 = load %struct.fc_internal*, %struct.fc_internal** %3, align 8
  %18 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %17, i32 0, i32 0
  %19 = call i32 @transport_container_unregister(i32* %18)
  %20 = load %struct.fc_internal*, %struct.fc_internal** %3, align 8
  %21 = call i32 @kfree(%struct.fc_internal* %20)
  ret void
}

declare dso_local %struct.fc_internal* @to_fc_internal(%struct.scsi_transport_template*) #1

declare dso_local i32 @transport_container_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.fc_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
