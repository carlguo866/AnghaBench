; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_iocdisable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_iocdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_tskim_s = type { i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@tm_iocdowns = common dso_local global i32 0, align 4
@BFA_TSKIM_SM_HWFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_tskim_iocdisable(%struct.bfa_tskim_s* %0) #0 {
  %2 = alloca %struct.bfa_tskim_s*, align 8
  store %struct.bfa_tskim_s* %0, %struct.bfa_tskim_s** %2, align 8
  %3 = load i32, i32* @BFA_FALSE, align 4
  %4 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @tm_iocdowns, align 4
  %10 = call i32 @bfa_stats(i32 %8, i32 %9)
  %11 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %2, align 8
  %12 = load i32, i32* @BFA_TSKIM_SM_HWFAIL, align 4
  %13 = call i32 @bfa_sm_send_event(%struct.bfa_tskim_s* %11, i32 %12)
  ret void
}

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_tskim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
