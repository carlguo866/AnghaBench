; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_get_pbc_vports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_get_pbc_vports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.bfa_iocfc_s }
%struct.bfa_iocfc_s = type { %struct.bfi_iocfc_cfgrsp_s* }
%struct.bfi_iocfc_cfgrsp_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bfi_pbc_vport_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_iocfc_get_pbc_vports(%struct.bfa_s* %0, %struct.bfi_pbc_vport_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_pbc_vport_s*, align 8
  %5 = alloca %struct.bfa_iocfc_s*, align 8
  %6 = alloca %struct.bfi_iocfc_cfgrsp_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_pbc_vport_s* %1, %struct.bfi_pbc_vport_s** %4, align 8
  %7 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %7, i32 0, i32 0
  store %struct.bfa_iocfc_s* %8, %struct.bfa_iocfc_s** %5, align 8
  %9 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %5, align 8
  %10 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %9, i32 0, i32 0
  %11 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %10, align 8
  store %struct.bfi_iocfc_cfgrsp_s* %11, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %12 = load %struct.bfi_pbc_vport_s*, %struct.bfi_pbc_vport_s** %4, align 8
  %13 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %14 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(%struct.bfi_pbc_vport_s* %12, i32 %16, i32 4)
  %18 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  ret i32 %21
}

declare dso_local i32 @memcpy(%struct.bfi_pbc_vport_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
