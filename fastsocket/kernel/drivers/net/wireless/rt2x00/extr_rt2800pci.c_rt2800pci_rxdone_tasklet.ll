; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_rxdone_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_rxdone_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@INT_MASK_CSR_RX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2800pci_rxdone_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800pci_rxdone_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %5, %struct.rt2x00_dev** %3, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = call i64 @rt2x00mmio_rxdone(%struct.rt2x00_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 1
  %12 = call i32 @tasklet_schedule(i32* %11)
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = load i32, i32* @INT_MASK_CSR_RX_DONE, align 4
  %22 = call i32 @rt2800pci_enable_interrupt(%struct.rt2x00_dev* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %13
  br label %24

24:                                               ; preds = %23, %9
  ret void
}

declare dso_local i64 @rt2x00mmio_rxdone(%struct.rt2x00_dev*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2800pci_enable_interrupt(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
