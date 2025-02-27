; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_uf_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_uf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_pcidev_s = type { i32 }
%struct.bfa_uf_mod_s = type { i32, i32, i32, i32, %struct.bfa_s* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_uf_attach(%struct.bfa_s* %0, i8* %1, %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_pcidev_s* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %8 = alloca %struct.bfa_pcidev_s*, align 8
  %9 = alloca %struct.bfa_uf_mod_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.bfa_iocfc_cfg_s* %2, %struct.bfa_iocfc_cfg_s** %7, align 8
  store %struct.bfa_pcidev_s* %3, %struct.bfa_pcidev_s** %8, align 8
  %10 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %11 = call %struct.bfa_uf_mod_s* @BFA_UF_MOD(%struct.bfa_s* %10)
  store %struct.bfa_uf_mod_s* %11, %struct.bfa_uf_mod_s** %9, align 8
  %12 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %13 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %9, align 8
  %14 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %13, i32 0, i32 4
  store %struct.bfa_s* %12, %struct.bfa_s** %14, align 8
  %15 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %7, align 8
  %16 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %9, align 8
  %20 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %9, align 8
  %22 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %9, align 8
  %25 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %9, align 8
  %28 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %9, align 8
  %31 = call i32 @uf_mem_claim(%struct.bfa_uf_mod_s* %30)
  ret void
}

declare dso_local %struct.bfa_uf_mod_s* @BFA_UF_MOD(%struct.bfa_s*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @uf_mem_claim(%struct.bfa_uf_mod_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
