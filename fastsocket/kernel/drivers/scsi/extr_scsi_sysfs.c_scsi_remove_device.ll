; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_sysfs.c_scsi_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_remove_device(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 0
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %3, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %8 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %11 = call i32 @__scsi_remove_device(%struct.scsi_device* %10)
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
