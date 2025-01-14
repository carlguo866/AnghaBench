; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_rx_buffer_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_rx_buffer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_ring**, %struct.net_device*, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgbe_hw = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@IXGBE_MHADD = common dso_local global i32 0, align 4
@IXGBE_MHADD_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_MHADD_MFS_MASK = common dso_local global i32 0, align 4
@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@IXGBE_HLREG0_JUMBOEN = common dso_local global i32 0, align 4
@__IXGBE_RX_3K_BUFFER = common dso_local global i32 0, align 4
@__IXGBE_RX_BUILD_SKB_ENABLED = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSC_ENABLED = common dso_local global i32 0, align 4
@__IXGBE_RX_FCOE = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RX_LEGACY = common dso_local global i32 0, align 4
@IXGBE_2K_TOO_SMALL_WITH_PADDING = common dso_local global i64 0, align 8
@IXGBE_FCOE_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@IXGBE_FLAG_FCOE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_set_rx_buffer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_rx_buffer_len(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 5
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %3, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETH_HLEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @ETH_FCS_LEN, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ETH_FRAME_LEN, align 4
  %24 = load i32, i32* @ETH_FCS_LEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @ETH_FRAME_LEN, align 4
  %29 = load i32, i32* @ETH_FCS_LEN, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %33 = load i32, i32* @IXGBE_MHADD, align 4
  %34 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IXGBE_MHADD_MFS_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load i32, i32* @IXGBE_MHADD_MFS_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IXGBE_MHADD_MFS_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = load i32, i32* @IXGBE_MHADD, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %40, %31
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = load i32, i32* @IXGBE_HLREG0, align 4
  %57 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @IXGBE_HLREG0_JUMBOEN, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = load i32, i32* @IXGBE_HLREG0, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %61, i32 %62, i32 %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %148, %54
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %151

71:                                               ; preds = %65
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %72, i32 0, i32 3
  %74 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %74, i64 %76
  %78 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %77, align 8
  store %struct.ixgbe_ring* %78, %struct.ixgbe_ring** %6, align 8
  %79 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %80 = call i32 @clear_ring_rsc_enabled(%struct.ixgbe_ring* %79)
  %81 = load i32, i32* @__IXGBE_RX_3K_BUFFER, align 4
  %82 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %83 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %82, i32 0, i32 0
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  %85 = load i32, i32* @__IXGBE_RX_BUILD_SKB_ENABLED, align 4
  %86 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %87 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %86, i32 0, i32 0
  %88 = call i32 @clear_bit(i32 %85, i32* %87)
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %71
  %96 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %97 = call i32 @set_ring_rsc_enabled(%struct.ixgbe_ring* %96)
  br label %98

98:                                               ; preds = %95, %71
  %99 = load i32, i32* @__IXGBE_RX_FCOE, align 4
  %100 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %101 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %100, i32 0, i32 0
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32, i32* @__IXGBE_RX_3K_BUFFER, align 4
  %106 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %107 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %106, i32 0, i32 0
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  br label %109

109:                                              ; preds = %104, %98
  %110 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IXGBE_FLAG2_RX_LEGACY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %148

117:                                              ; preds = %109
  %118 = load i32, i32* @__IXGBE_RX_BUILD_SKB_ENABLED, align 4
  %119 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %120 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %119, i32 0, i32 0
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load i32, i32* @__IXGBE_RX_3K_BUFFER, align 4
  %130 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %131 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %130, i32 0, i32 0
  %132 = call i32 @set_bit(i32 %129, i32* %131)
  br label %133

133:                                              ; preds = %128, %117
  %134 = load i64, i64* @IXGBE_2K_TOO_SMALL_WITH_PADDING, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @ETH_FRAME_LEN, align 4
  %139 = load i32, i32* @ETH_FCS_LEN, align 4
  %140 = add nsw i32 %138, %139
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136, %133
  %143 = load i32, i32* @__IXGBE_RX_3K_BUFFER, align 4
  %144 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %145 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %144, i32 0, i32 0
  %146 = call i32 @set_bit(i32 %143, i32* %145)
  br label %147

147:                                              ; preds = %142, %136
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %65

151:                                              ; preds = %65
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @clear_ring_rsc_enabled(%struct.ixgbe_ring*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_ring_rsc_enabled(%struct.ixgbe_ring*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
