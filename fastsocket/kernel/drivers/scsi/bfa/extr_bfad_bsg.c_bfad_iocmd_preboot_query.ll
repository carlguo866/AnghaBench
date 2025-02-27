; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_preboot_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_preboot_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bfi_iocfc_cfgrsp_s* }
%struct.bfi_iocfc_cfgrsp_s = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.bfa_bsg_preboot_s = type { i32, %struct.bfa_boot_pbc_s }
%struct.bfa_boot_pbc_s = type { i32, i32, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_preboot_query(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_preboot_s*, align 8
  %6 = alloca %struct.bfi_iocfc_cfgrsp_s*, align 8
  %7 = alloca %struct.bfa_boot_pbc_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_preboot_s*
  store %struct.bfa_bsg_preboot_s* %10, %struct.bfa_bsg_preboot_s** %5, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %14, align 8
  store %struct.bfi_iocfc_cfgrsp_s* %15, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %16 = load %struct.bfa_bsg_preboot_s*, %struct.bfa_bsg_preboot_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_bsg_preboot_s, %struct.bfa_bsg_preboot_s* %16, i32 0, i32 1
  store %struct.bfa_boot_pbc_s* %17, %struct.bfa_boot_pbc_s** %7, align 8
  %18 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bfa_boot_pbc_s*, %struct.bfa_boot_pbc_s** %7, align 8
  %27 = getelementptr inbounds %struct.bfa_boot_pbc_s, %struct.bfa_boot_pbc_s* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bfa_boot_pbc_s*, %struct.bfa_boot_pbc_s** %7, align 8
  %33 = getelementptr inbounds %struct.bfa_boot_pbc_s, %struct.bfa_boot_pbc_s* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %35 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bfa_boot_pbc_s*, %struct.bfa_boot_pbc_s** %7, align 8
  %39 = getelementptr inbounds %struct.bfa_boot_pbc_s, %struct.bfa_boot_pbc_s* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bfa_boot_pbc_s*, %struct.bfa_boot_pbc_s** %7, align 8
  %41 = getelementptr inbounds %struct.bfa_boot_pbc_s, %struct.bfa_boot_pbc_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bfi_iocfc_cfgrsp_s*, %struct.bfi_iocfc_cfgrsp_s** %6, align 8
  %44 = getelementptr inbounds %struct.bfi_iocfc_cfgrsp_s, %struct.bfi_iocfc_cfgrsp_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %42, i32 %46, i32 4)
  %48 = load i32, i32* @BFA_STATUS_OK, align 4
  %49 = load %struct.bfa_bsg_preboot_s*, %struct.bfa_bsg_preboot_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_bsg_preboot_s, %struct.bfa_bsg_preboot_s* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 0
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
