; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_uninorth-agp.c_uninorth_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@UNI_N_CFG_GART_CTRL = common dso_local global i32 0, align 4
@UNI_N_CFG_GART_ENABLE = common dso_local global i32 0, align 4
@UNI_N_CFG_GART_INVAL = common dso_local global i32 0, align 4
@uninorth_rev = common dso_local global i32 0, align 4
@UNI_N_CFG_GART_2xRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uninorth_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninorth_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %6 = call i32 @pci_read_config_dword(i32 %4, i32 %5, i32* %1)
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @UNI_N_CFG_GART_ENABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %41

12:                                               ; preds = %0
  %13 = load i32, i32* @UNI_N_CFG_GART_INVAL, align 4
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @pci_write_config_dword(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %26 = call i32 @pci_write_config_dword(i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @uninorth_rev, align 4
  %28 = icmp sle i32 %27, 48
  br i1 %28, label %29, label %41

29:                                               ; preds = %12
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %34 = load i32, i32* @UNI_N_CFG_GART_2xRESET, align 4
  %35 = call i32 @pci_write_config_dword(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UNI_N_CFG_GART_CTRL, align 4
  %40 = call i32 @pci_write_config_dword(i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %11, %29, %12
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
