; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_ledtest_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_diag_ledtest_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_diag_ledtest_rsp_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_diag_s*, %struct.bfi_diag_ledtest_rsp_s*)* @diag_ledtest_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diag_ledtest_comp(%struct.bfa_diag_s* %0, %struct.bfi_diag_ledtest_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_diag_s*, align 8
  %4 = alloca %struct.bfi_diag_ledtest_rsp_s*, align 8
  store %struct.bfa_diag_s* %0, %struct.bfa_diag_s** %3, align 8
  store %struct.bfi_diag_ledtest_rsp_s* %1, %struct.bfi_diag_ledtest_rsp_s** %4, align 8
  %5 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %6 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bfa_trc(%struct.bfa_diag_s* %5, i32 %9)
  %11 = load i32, i32* @BFA_FALSE, align 4
  %12 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
