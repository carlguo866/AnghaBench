; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mid_bios.c_mid_get_pci_revID.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mid_bios.c_mid_get_pci_revID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_psb_private = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"platform_rev_id is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_psb_private*)* @mid_get_pci_revID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid_get_pci_revID(%struct.drm_psb_private* %0) #0 {
  %2 = alloca %struct.drm_psb_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.drm_psb_private* %0, %struct.drm_psb_private** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_domain_nr(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @PCI_DEVFN(i32 2, i32 0)
  %16 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %14, i32 0, i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = icmp eq %struct.pci_dev* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @WARN_ON(i32 1)
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 8, i64* %3)
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %26 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call i32 @pci_dev_put(%struct.pci_dev* %27)
  %29 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %30 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drm_psb_private*, %struct.drm_psb_private** %2, align 8
  %35 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %21, %19
  ret void
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
