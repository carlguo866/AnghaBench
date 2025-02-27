; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_pci_sriov_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_pci_sriov_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"VFs are assigned to guests; please detach them before disabling SR-IOV\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32)* @efx_ef10_pci_sriov_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_pci_sriov_disable(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = call i32 @pci_vfs_assigned(%struct.pci_dev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_info(%struct.efx_nic* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %38

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = call i32 @pci_disable_sriov(%struct.pci_dev* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %35 = call i32 @efx_ef10_sriov_free_vf_vswitching(%struct.efx_nic* %34)
  %36 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pci_vfs_assigned(%struct.pci_dev*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @efx_ef10_sriov_free_vf_vswitching(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
