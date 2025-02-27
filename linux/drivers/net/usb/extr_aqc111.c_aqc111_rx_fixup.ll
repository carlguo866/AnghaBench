; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.aqc111_data* }
%struct.aqc111_data = type { i64 }
%struct.sk_buff = type { i64, i32, i64 }

@AQ_RX_DH_DESC_OFFSET_MASK = common dso_local global i32 0, align 4
@AQ_RX_DH_DESC_OFFSET_SHIFT = common dso_local global i32 0, align 4
@AQ_RX_DH_PKT_CNT_MASK = common dso_local global i32 0, align 4
@AQ_RX_PD_LEN_MASK = common dso_local global i32 0, align 4
@AQ_RX_PD_LEN_SHIFT = common dso_local global i32 0, align 4
@AQ_RX_PD_DROP = common dso_local global i32 0, align 4
@AQ_RX_PD_RX_OK = common dso_local global i32 0, align 4
@AQ_RX_HW_PAD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AQ_RX_PD_VLAN = common dso_local global i32 0, align 4
@AQ_RX_PD_VLAN_SHIFT = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @aqc111_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.aqc111_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %19 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = load %struct.aqc111_data*, %struct.aqc111_data** %20, align 8
  store %struct.aqc111_data* %21, %struct.aqc111_data** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %203

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %203

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i32 @skb_trim(%struct.sk_buff* %36, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i64 @skb_tail_pointer(%struct.sk_buff* %43)
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @le64_to_cpup(i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @AQ_RX_DH_DESC_OFFSET_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @AQ_RX_DH_DESC_OFFSET_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @AQ_RX_DH_PKT_CNT_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = sub i64 %56, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %31
  br label %203

67:                                               ; preds = %31
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %203

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %203

76:                                               ; preds = %72
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %9, align 8
  br label %84

84:                                               ; preds = %196, %131, %76
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %12, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %202

88:                                               ; preds = %84
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @le64_to_cpup(i32* %89)
  store i32 %90, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @AQ_RX_PD_LEN_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @AQ_RX_PD_LEN_SHIFT, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 7
  %98 = and i32 %97, 524280
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %88
  br label %203

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* @AQ_RX_PD_DROP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @AQ_RX_PD_RX_OK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %126 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @AQ_RX_HW_PAD, align 4
  %129 = add nsw i32 %127, %128
  %130 = icmp sgt i32 %124, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123, %118, %113
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @skb_pull(%struct.sk_buff* %132, i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %9, align 8
  br label %84

137:                                              ; preds = %123
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load i32, i32* @GFP_ATOMIC, align 4
  %140 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %138, i32 %139)
  store %struct.sk_buff* %140, %struct.sk_buff** %7, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  br label %203

144:                                              ; preds = %137
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %150 = load i32, i32* @AQ_RX_HW_PAD, align 4
  %151 = call i32 @skb_pull(%struct.sk_buff* %149, i32 %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %152, i32 %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @SKB_TRUESIZE(i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load %struct.aqc111_data*, %struct.aqc111_data** %6, align 8
  %166 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %144
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @aqc111_rx_checksum(%struct.sk_buff* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %144
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @AQ_RX_PD_VLAN, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* @AQ_RX_PD_VLAN_SHIFT, align 4
  %181 = ashr i32 %179, %180
  store i32 %181, i32* %14, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %183 = load i32, i32* @ETH_P_8021Q, align 4
  %184 = call i32 @htons(i32 %183)
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @VLAN_VID_MASK, align 4
  %187 = and i32 %185, %186
  %188 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %182, i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %178, %173
  %190 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = call i32 @usbnet_skb_return(%struct.usbnet* %190, %struct.sk_buff* %191)
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %202

196:                                              ; preds = %189
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @skb_pull(%struct.sk_buff* %197, i32 %198)
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %84

202:                                              ; preds = %195, %84
  store i32 1, i32* %3, align 4
  br label %204

203:                                              ; preds = %143, %112, %75, %71, %66, %30, %24
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %202
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @le64_to_cpup(i32*) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @SKB_TRUESIZE(i32) #1

declare dso_local i32 @aqc111_rx_checksum(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
