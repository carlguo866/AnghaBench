; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_query_protectionmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_query_protectionmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i64, i64, i64, %struct.TYPE_2__, %struct.rt_hi_throughput* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rt_hi_throughput = type { i32, i32, i64, i64, i64 }
%struct.cb_desc = type { i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64 }
%struct.sk_buff = type { i64, i64 }

@IEEE_N_24G = common dso_local global i64 0, align 8
@MGN_24M = common dso_local global i8* null, align 8
@HT_IOT_ACT_FORCED_CTS2SELF = common dso_local global i32 0, align 4
@HT_IOT_ACT_FORCED_RTS = common dso_local global i32 0, align 4
@HT_IOT_ACT_PURE_N_MODE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IW_MODE_MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtllib_device*, %struct.cb_desc*, %struct.sk_buff*)* @rtllib_query_protectionmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtllib_query_protectionmode(%struct.rtllib_device* %0, %struct.cb_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.cb_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rt_hi_throughput*, align 8
  %8 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %4, align 8
  store %struct.cb_desc* %1, %struct.cb_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %10 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %12 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %14 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %16 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %18 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %20 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %19, i32 0, i32 10
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %25 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  br label %217

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 16
  %34 = call i64 @is_broadcast_ether_addr(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %217

37:                                               ; preds = %29
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IEEE_N_24G, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %48 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %53 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %52, i32 0, i32 4
  store i32 1, i32* %53, align 8
  %54 = load i8*, i8** @MGN_24M, align 8
  %55 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %56 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  br label %72

57:                                               ; preds = %43
  %58 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %59 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %65 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %64, i32 0, i32 4
  store i32 1, i32* %65, align 8
  %66 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %67 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load i8*, i8** @MGN_24M, align 8
  %69 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %70 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71, %51
  br label %217

73:                                               ; preds = %37
  %74 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %75 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %74, i32 0, i32 4
  %76 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %75, align 8
  store %struct.rt_hi_throughput* %76, %struct.rt_hi_throughput** %7, align 8
  br label %77

77:                                               ; preds = %73
  %78 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %79 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HT_IOT_ACT_FORCED_CTS2SELF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %86 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load i8*, i8** @MGN_24M, align 8
  %88 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %89 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %88, i32 0, i32 7
  store i8* %87, i8** %89, align 8
  %90 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %91 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %90, i32 0, i32 4
  store i32 1, i32* %91, align 8
  br label %187

92:                                               ; preds = %77
  %93 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %94 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @HT_IOT_ACT_FORCED_RTS, align 4
  %97 = load i32, i32* @HT_IOT_ACT_PURE_N_MODE, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %103 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %102, i32 0, i32 4
  store i32 1, i32* %103, align 8
  %104 = load i8*, i8** @MGN_24M, align 8
  %105 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %106 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  br label %187

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %110 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %116 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %115, i32 0, i32 4
  store i32 1, i32* %116, align 8
  %117 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %118 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load i8*, i8** @MGN_24M, align 8
  %120 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %121 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %120, i32 0, i32 7
  store i8* %119, i8** %121, align 8
  br label %187

122:                                              ; preds = %108
  %123 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %124 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %122
  %128 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %129 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %161

132:                                              ; preds = %127
  %133 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %134 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %8, align 4
  %136 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %137 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %154, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %154, label %146

146:                                              ; preds = %143, %132
  %147 = load %struct.rt_hi_throughput*, %struct.rt_hi_throughput** %7, align 8
  %148 = getelementptr inbounds %struct.rt_hi_throughput, %struct.rt_hi_throughput* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %160, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 3
  br i1 %153, label %154, label %160

154:                                              ; preds = %151, %143, %140
  %155 = load i8*, i8** @MGN_24M, align 8
  %156 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %157 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %156, i32 0, i32 7
  store i8* %155, i8** %157, align 8
  %158 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %159 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %158, i32 0, i32 4
  store i32 1, i32* %159, align 8
  br label %187

160:                                              ; preds = %151, %146
  br label %161

161:                                              ; preds = %160, %127, %122
  %162 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %166 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load i8*, i8** @MGN_24M, align 8
  %171 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %172 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %171, i32 0, i32 7
  store i8* %170, i8** %172, align 8
  %173 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %174 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %173, i32 0, i32 4
  store i32 1, i32* %174, align 8
  br label %187

175:                                              ; preds = %161
  %176 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %177 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %176, i32 0, i32 8
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i8*, i8** @MGN_24M, align 8
  %182 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %183 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %182, i32 0, i32 7
  store i8* %181, i8** %183, align 8
  %184 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %185 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %184, i32 0, i32 4
  store i32 0, i32* %185, align 8
  br label %187

186:                                              ; preds = %175
  br label %206

187:                                              ; preds = %180, %169, %154, %114, %101, %84
  %188 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %189 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %197 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %196, i32 0, i32 5
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %187
  %199 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %200 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @IW_MODE_MASTER, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %206

205:                                              ; preds = %198
  br label %217

206:                                              ; preds = %204, %186
  %207 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %208 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %207, i32 0, i32 4
  store i32 0, i32* %208, align 8
  %209 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %210 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %209, i32 0, i32 2
  store i32 0, i32* %210, align 8
  %211 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %212 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %211, i32 0, i32 7
  store i8* null, i8** %212, align 8
  %213 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %214 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %213, i32 0, i32 6
  store i64 0, i64* %214, align 8
  %215 = load %struct.cb_desc*, %struct.cb_desc** %5, align 8
  %216 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %215, i32 0, i32 3
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %206, %205, %72, %36, %28
  ret void
}

declare dso_local i64 @is_broadcast_ether_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
