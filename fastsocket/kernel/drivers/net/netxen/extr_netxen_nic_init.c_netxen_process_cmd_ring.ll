; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_process_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_process_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i64, %struct.TYPE_2__, %struct.nx_host_tx_ring*, %struct.net_device*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.nx_host_tx_ring = type { i64, i32*, i32, %struct.netxen_cmd_buffer* }
%struct.netxen_cmd_buffer = type { i32, i32*, %struct.netxen_skb_frag* }
%struct.netxen_skb_frag = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@MAX_STATUS_HANDLE = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netxen_process_cmd_ring(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netxen_cmd_buffer*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netxen_skb_frag*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nx_host_tx_ring*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 5
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %9, align 8
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %17, i32 0, i32 4
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %20, i32 0, i32 3
  %22 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %21, align 8
  store %struct.nx_host_tx_ring* %22, %struct.nx_host_tx_ring** %13, align 8
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 0
  %25 = call i32 @spin_trylock(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %159

28:                                               ; preds = %1
  %29 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %30 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %4, align 8
  %32 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %33 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %113, %28
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %114

41:                                               ; preds = %37
  %42 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %43 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %42, i32 0, i32 3
  %44 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %44, i64 %45
  store %struct.netxen_cmd_buffer* %46, %struct.netxen_cmd_buffer** %8, align 8
  %47 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %102

51:                                               ; preds = %41
  %52 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %53 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %52, i32 0, i32 2
  %54 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %53, align 8
  %55 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %54, i64 0
  store %struct.netxen_skb_frag* %55, %struct.netxen_skb_frag** %11, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %57 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %58 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %61 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %64 = call i32 @pci_unmap_single(%struct.pci_dev* %56, i64 %59, i32 %62, i32 %63)
  %65 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %66 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %87, %51
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %70 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %75 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %74, i32 1
  store %struct.netxen_skb_frag* %75, %struct.netxen_skb_frag** %11, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %77 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %78 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %81 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %84 = call i32 @pci_unmap_page(%struct.pci_dev* %76, i64 %79, i32 %82, i32 %83)
  %85 = load %struct.netxen_skb_frag*, %struct.netxen_skb_frag** %11, align 8
  %86 = getelementptr inbounds %struct.netxen_skb_frag, %struct.netxen_skb_frag* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %97 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @dev_kfree_skb_any(i32* %98)
  %100 = load %struct.netxen_cmd_buffer*, %struct.netxen_cmd_buffer** %8, align 8
  %101 = getelementptr inbounds %struct.netxen_cmd_buffer, %struct.netxen_cmd_buffer* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %90, %41
  %103 = load i64, i64* %4, align 8
  %104 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %105 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @get_next_index(i64 %103, i32 %106)
  store i64 %107, i64* %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @MAX_STATUS_HANDLE, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %114

113:                                              ; preds = %102
  br label %37

114:                                              ; preds = %112, %37
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %114
  %118 = load %struct.net_device*, %struct.net_device** %10, align 8
  %119 = call i64 @netif_running(%struct.net_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %124 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = call i32 (...) @smp_mb()
  %126 = load %struct.net_device*, %struct.net_device** %10, align 8
  %127 = call i64 @netif_queue_stopped(%struct.net_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = call i64 @netif_carrier_ok(%struct.net_device* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %135 = call i64 @netxen_tx_avail(%struct.nx_host_tx_ring* %134)
  %136 = load i64, i64* @TX_STOP_THRESH, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.net_device*, %struct.net_device** %10, align 8
  %140 = call i32 @netif_wake_queue(%struct.net_device* %139)
  br label %141

141:                                              ; preds = %138, %133
  br label %142

142:                                              ; preds = %141, %129, %121
  %143 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %144 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %117, %114
  %146 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %13, align 8
  %147 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le32_to_cpu(i32 %149)
  store i64 %150, i64* %5, align 8
  %151 = load i64, i64* %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %12, align 4
  %155 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %155, i32 0, i32 0
  %157 = call i32 @spin_unlock(i32* %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %145, %27
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @netxen_tx_avail(%struct.nx_host_tx_ring*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
