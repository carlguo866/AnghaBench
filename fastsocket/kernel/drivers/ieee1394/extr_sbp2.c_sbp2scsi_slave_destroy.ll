; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.sbp2_lu = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @sbp2scsi_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2scsi_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %3 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %4 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.sbp2_lu*
  %11 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
