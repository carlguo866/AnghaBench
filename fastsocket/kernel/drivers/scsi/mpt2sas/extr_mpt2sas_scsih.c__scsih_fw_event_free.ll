; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_fw_event_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_fw_event_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.fw_event_work = type { %struct.fw_event_work*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*, %struct.fw_event_work*)* @_scsih_fw_event_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_fw_event_free(%struct.MPT2SAS_ADAPTER* %0, %struct.fw_event_work* %1) #0 {
  %3 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %4 = alloca %struct.fw_event_work*, align 8
  %5 = alloca i64, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %3, align 8
  store %struct.fw_event_work* %1, %struct.fw_event_work** %4, align 8
  %6 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %7 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %11 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %10, i32 0, i32 1
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %14 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %13, i32 0, i32 0
  %15 = load %struct.fw_event_work*, %struct.fw_event_work** %14, align 8
  %16 = call i32 @kfree(%struct.fw_event_work* %15)
  %17 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %18 = call i32 @kfree(%struct.fw_event_work* %17)
  %19 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %20 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.fw_event_work*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
