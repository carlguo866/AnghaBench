; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_oakscsi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_..NCR5380.c_oakscsi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.NCR5380_hostdata = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Scsi_Host*)* @NCR5380_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @NCR5380_info(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.NCR5380_hostdata*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %5 = call %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host* %4)
  store %struct.NCR5380_hostdata* %5, %struct.NCR5380_hostdata** %3, align 8
  %6 = load %struct.NCR5380_hostdata*, %struct.NCR5380_hostdata** %3, align 8
  %7 = getelementptr inbounds %struct.NCR5380_hostdata, %struct.NCR5380_hostdata* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

declare dso_local %struct.NCR5380_hostdata* @shost_priv(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
