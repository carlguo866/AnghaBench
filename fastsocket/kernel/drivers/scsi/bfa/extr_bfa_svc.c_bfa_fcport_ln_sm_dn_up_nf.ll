; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_ln_sm_dn_up_nf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_ln_sm_dn_up_nf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_ln_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@bfa_fcport_ln_sm_dn_nf = common dso_local global i32 0, align 4
@bfa_fcport_ln_sm_up_nf = common dso_local global i32 0, align 4
@BFA_PORT_LINKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_ln_s*, i32)* @bfa_fcport_ln_sm_dn_up_nf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_ln_sm_dn_up_nf(%struct.bfa_fcport_ln_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_ln_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcport_ln_s* %0, %struct.bfa_fcport_ln_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcport_ln_s*, %struct.bfa_fcport_ln_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_ln_s, %struct.bfa_fcport_ln_s* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @bfa_trc(i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %24 [
    i32 129, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.bfa_fcport_ln_s*, %struct.bfa_fcport_ln_s** %3, align 8
  %15 = load i32, i32* @bfa_fcport_ln_sm_dn_nf, align 4
  %16 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_ln_s* %14, i32 %15)
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.bfa_fcport_ln_s*, %struct.bfa_fcport_ln_s** %3, align 8
  %19 = load i32, i32* @bfa_fcport_ln_sm_up_nf, align 4
  %20 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_ln_s* %18, i32 %19)
  %21 = load %struct.bfa_fcport_ln_s*, %struct.bfa_fcport_ln_s** %3, align 8
  %22 = load i32, i32* @BFA_PORT_LINKUP, align 4
  %23 = call i32 @bfa_fcport_queue_cb(%struct.bfa_fcport_ln_s* %21, i32 %22)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcport_ln_s*, %struct.bfa_fcport_ln_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_fcport_ln_s, %struct.bfa_fcport_ln_s* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bfa_sm_fault(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %17, %13
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_ln_s*, i32) #1

declare dso_local i32 @bfa_fcport_queue_cb(%struct.bfa_fcport_ln_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
