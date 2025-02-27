; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_clear_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.queue_entry_priv_mmio* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.skb_frame_desc = type { i32 }

@QID_RX = common dso_local global i64 0, align 8
@RXD_W2_BUFFER_LENGTH = common dso_local global i32 0, align 4
@RXD_W1_BUFFER_ADDRESS = common dso_local global i32 0, align 4
@RXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*)* @rt2400pci_clear_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_clear_entry(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.queue_entry_priv_mmio*, align 8
  %4 = alloca %struct.skb_frame_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %6 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %7 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %6, i32 0, i32 2
  %8 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %7, align 8
  store %struct.queue_entry_priv_mmio* %8, %struct.queue_entry_priv_mmio** %3, align 8
  %9 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_4__* %11)
  store %struct.skb_frame_desc* %12, %struct.skb_frame_desc** %4, align 8
  %13 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %14 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QID_RX, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %1
  %21 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %22 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rt2x00_desc_read(i32 %23, i32 2, i32* %5)
  %25 = load i32, i32* @RXD_W2_BUFFER_LENGTH, align 4
  %26 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %27 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @rt2x00_set_field32(i32* %5, i32 %25, i32 %30)
  %32 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %33 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @rt2x00_desc_write(i32 %34, i32 2, i32 %35)
  %37 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %38 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2x00_desc_read(i32 %39, i32 1, i32* %5)
  %41 = load i32, i32* @RXD_W1_BUFFER_ADDRESS, align 4
  %42 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %4, align 8
  %43 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rt2x00_set_field32(i32* %5, i32 %41, i32 %44)
  %46 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %47 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @rt2x00_desc_write(i32 %48, i32 1, i32 %49)
  %51 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %52 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rt2x00_desc_read(i32 %53, i32 0, i32* %5)
  %55 = load i32, i32* @RXD_W0_OWNER_NIC, align 4
  %56 = call i32 @rt2x00_set_field32(i32* %5, i32 %55, i32 1)
  %57 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %58 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @rt2x00_desc_write(i32 %59, i32 0, i32 %60)
  br label %76

62:                                               ; preds = %1
  %63 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %64 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rt2x00_desc_read(i32 %65, i32 0, i32* %5)
  %67 = load i32, i32* @TXD_W0_VALID, align 4
  %68 = call i32 @rt2x00_set_field32(i32* %5, i32 %67, i32 0)
  %69 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %70 = call i32 @rt2x00_set_field32(i32* %5, i32 %69, i32 0)
  %71 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %72 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @rt2x00_desc_write(i32 %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %62, %20
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_4__*) #1

declare dso_local i32 @rt2x00_desc_read(i32, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_desc_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
