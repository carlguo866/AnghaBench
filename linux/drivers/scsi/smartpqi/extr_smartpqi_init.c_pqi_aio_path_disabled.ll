; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_aio_path_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_aio_path_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_io_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pqi_scsi_dev* }
%struct.pqi_scsi_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_io_request*)* @pqi_aio_path_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_aio_path_disabled(%struct.pqi_io_request* %0) #0 {
  %2 = alloca %struct.pqi_io_request*, align 8
  %3 = alloca %struct.pqi_scsi_dev*, align 8
  store %struct.pqi_io_request* %0, %struct.pqi_io_request** %2, align 8
  %4 = load %struct.pqi_io_request*, %struct.pqi_io_request** %2, align 8
  %5 = getelementptr inbounds %struct.pqi_io_request, %struct.pqi_io_request* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %9, align 8
  store %struct.pqi_scsi_dev* %10, %struct.pqi_scsi_dev** %3, align 8
  %11 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
