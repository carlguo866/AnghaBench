; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_stopping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_stopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32 }

@bfa_fcs_vport_sm_logo_for_stop = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*, i32)* @bfa_fcs_vport_sm_stopping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_sm_stopping(%struct.bfa_fcs_vport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_vport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_vport_s* %0, %struct.bfa_fcs_vport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %6 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %5)
  %7 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %8 = call i32 @__vport_pwwn(%struct.bfa_fcs_vport_s* %7)
  %9 = call i32 @bfa_trc(i32 %6, i32 %8)
  %10 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %11 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bfa_trc(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %25 [
    i32 128, label %15
    i32 129, label %21
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %17 = load i32, i32* @bfa_fcs_vport_sm_logo_for_stop, align 4
  %18 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %16, i32 %17)
  %19 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %20 = call i32 @bfa_fcs_vport_do_logo(%struct.bfa_fcs_vport_s* %19)
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %23 = load i32, i32* @bfa_fcs_vport_sm_cleanup, align 4
  %24 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %22, i32 %23)
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %27 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @bfa_sm_fault(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %21, %15
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @__vport_pwwn(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_fcs_vport_do_logo(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
