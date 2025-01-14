; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_scsi_setup_flush_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_scsi_setup_flush_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32, i32*, i32, i32 }

@SD_FLUSH_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.request*)* @scsi_setup_flush_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_setup_flush_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load i32, i32* @SD_FLUSH_TIMEOUT, align 4
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @SD_MAX_RETRIES, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @SYNCHRONIZE_CACHE, align 4
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  store i32 10, i32* %17, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = call i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device* %18, %struct.request* %19)
  ret i32 %20
}

declare dso_local i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
