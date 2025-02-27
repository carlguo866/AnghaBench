; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i32 (%struct.cnic_dev.0*)*, %struct.cnic_eth_dev* }
%struct.cnic_dev.0 = type opaque
%struct.cnic_eth_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CNIC_DRV_STATE_USING_MSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_free_irq(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %5 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %5, i32 0, i32 0
  %7 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  store %struct.cnic_local* %7, %struct.cnic_local** %3, align 8
  %8 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %9 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %8, i32 0, i32 2
  %10 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %9, align 8
  store %struct.cnic_eth_dev* %10, %struct.cnic_eth_dev** %4, align 8
  %11 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %19 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %18, i32 0, i32 1
  %20 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %19, align 8
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %22 = bitcast %struct.cnic_dev* %21 to %struct.cnic_dev.0*
  %23 = call i32 %20(%struct.cnic_dev.0* %22)
  %24 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %25 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %24, i32 0, i32 0
  %26 = call i32 @tasklet_kill(i32* %25)
  %27 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %28 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.cnic_dev* %33)
  br label %35

35:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
