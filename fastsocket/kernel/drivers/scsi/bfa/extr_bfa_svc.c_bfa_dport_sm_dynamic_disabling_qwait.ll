; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_dynamic_disabling_qwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_sm_dynamic_disabling_qwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i32, i32 }

@bfa_dport_sm_dynamic_disabling = common dso_local global i32 0, align 4
@BFI_DPORT_DYN_DISABLE = common dso_local global i32 0, align 4
@bfa_dport_sm_disabled = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dport_s*, i32)* @bfa_dport_sm_dynamic_disabling_qwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dport_sm_dynamic_disabling_qwait(%struct.bfa_dport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_dport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_dport_s* %0, %struct.bfa_dport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bfa_trc(i32 %7, i32 %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 130, label %18
    i32 128, label %28
  ]

11:                                               ; preds = %2
  %12 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %13 = load i32, i32* @bfa_dport_sm_dynamic_disabling, align 4
  %14 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %12, i32 %13)
  %15 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %16 = load i32, i32* @BFI_DPORT_DYN_DISABLE, align 4
  %17 = call i32 @bfa_dport_send_req(%struct.bfa_dport_s* %15, i32 %16)
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %20 = load i32, i32* @bfa_dport_sm_disabled, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_dport_s* %19, i32 %20)
  %22 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %22, i32 0, i32 1
  %24 = call i32 @bfa_reqq_wcancel(i32* %23)
  %25 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %26 = load i32, i32* @BFA_STATUS_OK, align 4
  %27 = call i32 @bfa_cb_fcdiag_dport(%struct.bfa_dport_s* %25, i32 %26)
  br label %35

28:                                               ; preds = %2
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @bfa_sm_fault(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %28, %18, %11
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_dport_send_req(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_cb_fcdiag_dport(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
