; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_init_failed_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_sm_init_failed_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@bfa_iocfc_init_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*)* @bfa_iocfc_sm_init_failed_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocfc_sm_init_failed_entry(%struct.bfa_iocfc_s* %0) #0 {
  %2 = alloca %struct.bfa_iocfc_s*, align 8
  store %struct.bfa_iocfc_s* %0, %struct.bfa_iocfc_s** %2, align 8
  %3 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = call i32 @bfa_isr_disable(%struct.TYPE_6__* %5)
  %7 = load i32, i32* @BFA_STATUS_FAILED, align 4
  %8 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %7, i32* %12, align 4
  %13 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* @bfa_iocfc_init_cb, align 4
  %22 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @bfa_cb_queue(%struct.TYPE_6__* %15, i32* %20, i32 %21, %struct.TYPE_6__* %24)
  ret void
}

declare dso_local i32 @bfa_isr_disable(%struct.TYPE_6__*) #1

declare dso_local i32 @bfa_cb_queue(%struct.TYPE_6__*, i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
