; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_build_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_nsp32.c_nsp32_build_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32* }

@MESSAGE_REJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @nsp32_build_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp32_build_reject(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @MESSAGE_REJECT, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %16, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
