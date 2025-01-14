; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.vortex_private = type { i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"vortex_remove_one called for Compaq device!\0A\00", align 1
@PCI_D0 = common dso_local global i32 0, align 4
@TotalReset = common dso_local global i32 0, align 4
@EEPROM_RESET = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @vortex_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vortex_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (...) @BUG()
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.vortex_private* @netdev_priv(%struct.net_device* %13)
  store %struct.vortex_private* %14, %struct.vortex_private** %4, align 8
  %15 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %16 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %22 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pci_iounmap(%struct.pci_dev* %20, i64 %23)
  br label %25

25:                                               ; preds = %19, %12
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @unregister_netdev(%struct.net_device* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* @PCI_D0, align 4
  %30 = call i32 @pci_set_power_state(%struct.pci_dev* %28, i32 %29)
  %31 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %32 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %37 = call i32 @pci_restore_state(%struct.pci_dev* %36)
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = call i32 @pci_disable_device(%struct.pci_dev* %39)
  %41 = load i32, i32* @TotalReset, align 4
  %42 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %43 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EEPROM_RESET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 4, i32 20
  %50 = or i32 %41, %49
  %51 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %52 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EL3_CMD, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @iowrite16(i32 %50, i64 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %59 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @pci_iounmap(%struct.pci_dev* %57, i64 %60)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* @RX_RING_SIZE, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = load i32, i32* @TX_RING_SIZE, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = add i64 %66, %69
  %71 = trunc i64 %70 to i32
  %72 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %73 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.vortex_private*, %struct.vortex_private** %4, align 8
  %76 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dma_free_coherent(i32* %63, i32 %71, i32 %74, i32 %77)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %80 = call i32 @pci_release_regions(%struct.pci_dev* %79)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @free_netdev(%struct.net_device* %81)
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.vortex_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_restore_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
