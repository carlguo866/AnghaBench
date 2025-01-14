; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i64, i32, i64 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@B2_MAC_1 = common dso_local global i64 0, align 8
@B2_MAC_2 = common dso_local global i64 0, align 8
@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@CHIP_ID_GENESIS = common dso_local global i64 0, align 8
@XM_SA = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @skge_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca %struct.skge_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.skge_port* @netdev_priv(%struct.net_device* %11)
  store %struct.skge_port* %12, %struct.skge_port** %6, align 8
  %13 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 1
  %15 = load %struct.skge_hw*, %struct.skge_hw** %14, align 8
  store %struct.skge_hw* %15, %struct.skge_hw** %7, align 8
  %16 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %17 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @is_valid_ether_addr(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EADDRNOTAVAIL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %152

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @netif_running(%struct.net_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %70, label %41

41:                                               ; preds = %29
  %42 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %43 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @B2_MAC_1, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = mul i32 %47, 8
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy_toio(i64 %50, i32 %53, i32 %54)
  %56 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %57 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @B2_MAC_2, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = mul i32 %61, 8
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @memcpy_toio(i64 %64, i32 %67, i32 %68)
  br label %151

70:                                               ; preds = %29
  %71 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %72 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %71, i32 0, i32 1
  %73 = call i32 @spin_lock_bh(i32* %72)
  %74 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @GM_GP_CTRL, align 4
  %77 = call i32 @gma_read16(%struct.skge_hw* %74, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @GM_GP_CTRL, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @gma_write16(%struct.skge_hw* %78, i32 %79, i32 %80, i32 %84)
  %86 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %87 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @B2_MAC_1, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = mul i32 %91, 8
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy_toio(i64 %94, i32 %97, i32 %98)
  %100 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %101 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @B2_MAC_2, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = mul i32 %105, 8
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = call i32 @memcpy_toio(i64 %108, i32 %111, i32 %112)
  %114 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %115 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CHIP_ID_GENESIS, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %70
  %120 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @XM_SA, align 4
  %123 = load %struct.net_device*, %struct.net_device** %4, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @xm_outaddr(%struct.skge_hw* %120, i32 %121, i32 %122, i32 %125)
  br label %142

127:                                              ; preds = %70
  %128 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @GM_SRC_ADDR_1L, align 4
  %131 = load %struct.net_device*, %struct.net_device** %4, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @gma_set_addr(%struct.skge_hw* %128, i32 %129, i32 %130, i32 %133)
  %135 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @GM_SRC_ADDR_2L, align 4
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @gma_set_addr(%struct.skge_hw* %135, i32 %136, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %127, %119
  %143 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @GM_GP_CTRL, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @gma_write16(%struct.skge_hw* %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %149 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %148, i32 0, i32 1
  %150 = call i32 @spin_unlock_bh(i32* %149)
  br label %151

151:                                              ; preds = %142, %41
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %26
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @memcpy_toio(i64, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_outaddr(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gma_set_addr(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
