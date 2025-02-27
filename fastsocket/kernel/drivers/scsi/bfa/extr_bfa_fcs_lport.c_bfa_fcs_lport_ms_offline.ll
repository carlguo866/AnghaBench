; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_lport_ms_s = type { %struct.bfa_fcs_lport_s* }

@MSSM_EVENT_PORT_OFFLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_ms_offline(%struct.bfa_fcs_lport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_lport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %2, align 8
  %4 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %5 = call %struct.bfa_fcs_lport_ms_s* @BFA_FCS_GET_MS_FROM_PORT(%struct.bfa_fcs_lport_s* %4)
  store %struct.bfa_fcs_lport_ms_s* %5, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %6 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %7 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %7, i32 0, i32 0
  store %struct.bfa_fcs_lport_s* %6, %struct.bfa_fcs_lport_s** %8, align 8
  %9 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %10 = load i32, i32* @MSSM_EVENT_PORT_OFFLINE, align 4
  %11 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %9, i32 %10)
  %12 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %3, align 8
  %13 = call i32 @bfa_fcs_lport_fdmi_offline(%struct.bfa_fcs_lport_ms_s* %12)
  ret void
}

declare dso_local %struct.bfa_fcs_lport_ms_s* @BFA_FCS_GET_MS_FROM_PORT(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_fdmi_offline(%struct.bfa_fcs_lport_ms_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
