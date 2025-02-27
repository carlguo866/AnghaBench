; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_get_entry_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_get_entry_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_2__*, %struct.queue_entry_priv_mmio* }
%struct.TYPE_2__ = type { i64 }
%struct.queue_entry_priv_mmio = type { i32 }

@QID_RX = common dso_local global i64 0, align 8
@RXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*)* @rt2500pci_get_entry_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_get_entry_state(%struct.queue_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.queue_entry_priv_mmio*, align 8
  %5 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  %6 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %7 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %6, i32 0, i32 1
  %8 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %7, align 8
  store %struct.queue_entry_priv_mmio* %8, %struct.queue_entry_priv_mmio** %4, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QID_RX, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %4, align 8
  %18 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rt2x00_desc_read(i32 %19, i32 0, i32* %5)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RXD_W0_OWNER_NIC, align 4
  %23 = call i32 @rt2x00_get_field32(i32 %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %4, align 8
  %26 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rt2x00_desc_read(i32 %27, i32 0, i32* %5)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %31 = call i32 @rt2x00_get_field32(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @TXD_W0_VALID, align 4
  %36 = call i32 @rt2x00_get_field32(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %33, %24
  %39 = phi i1 [ true, %24 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %16
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
