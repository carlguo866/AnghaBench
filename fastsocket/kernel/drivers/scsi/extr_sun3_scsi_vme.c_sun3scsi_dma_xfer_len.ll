; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_sun3scsi_dma_xfer_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sun3_scsi_vme.c_sun3scsi_dma_xfer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@REQ_TYPE_FS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.scsi_cmnd*, i32)* @sun3scsi_dma_xfer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun3scsi_dma_xfer_len(i64 %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REQ_TYPE_FS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %4, align 8
  br label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i64, i64* %4, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
