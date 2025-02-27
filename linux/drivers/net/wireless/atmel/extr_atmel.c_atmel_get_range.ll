; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.atmel_private = type { i64 }
%struct.iw_range = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i64, i8*, i8*, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i8*, i64 }
%struct.TYPE_7__ = type { i32, i32, i8*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@channel_table = common dso_local global %struct.TYPE_9__* null, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_INVALID = common dso_local global i8* null, align 8
@IW_POWER_ON = common dso_local global i8* null, align 8
@WIRELESS_EXT = common dso_local global i8* null, align 8
@IW_RETRY_LIMIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @atmel_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_point*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.atmel_private*, align 8
  %10 = alloca %struct.iw_range*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_point* %2, %struct.iw_point** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.atmel_private* @netdev_priv(%struct.net_device* %14)
  store %struct.atmel_private* %15, %struct.atmel_private** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.iw_range*
  store %struct.iw_range* %17, %struct.iw_range** %10, align 8
  %18 = load %struct.iw_point*, %struct.iw_point** %7, align 8
  %19 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %18, i32 0, i32 0
  store i32 200, i32* %19, align 4
  %20 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %21 = call i32 @memset(%struct.iw_range* %20, i32 0, i32 200)
  %22 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %23 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %25 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %27 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %62, %4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %28
  %34 = load %struct.atmel_private*, %struct.atmel_private** %9, align 8
  %35 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %33
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %50, %56
  %58 = add nsw i32 %57, 1
  %59 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %60 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %28

65:                                               ; preds = %44, %28
  %66 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %67 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %121

70:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %114, %70
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @channel_table, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %78, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %89 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %88, i32 0, i32 26
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %87, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %97 = call i32 @ieee80211_channel_to_frequency(i32 %95, i32 %96)
  %98 = mul nsw i32 100000, %97
  %99 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %100 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %99, i32 0, i32 26
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %98, i32* %105, align 4
  %106 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %107 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %106, i32 0, i32 26
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %86
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %77

117:                                              ; preds = %77
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %120 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %65
  %122 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %123 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %122, i32 0, i32 25
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 100, i32* %124, align 8
  %125 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %126 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %125, i32 0, i32 25
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store i32 100, i32* %127, align 4
  %128 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %129 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %128, i32 0, i32 25
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load i8*, i8** @IW_QUAL_NOISE_INVALID, align 8
  %132 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %133 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %132, i32 0, i32 25
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  store i8* %131, i8** %134, align 8
  %135 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %136 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %135, i32 0, i32 24
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 50, i32* %137, align 8
  %138 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %139 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %138, i32 0, i32 24
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 50, i32* %140, align 4
  %141 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %142 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %141, i32 0, i32 24
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = load i8*, i8** @IW_QUAL_NOISE_INVALID, align 8
  %145 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %146 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %145, i32 0, i32 24
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %149 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %148, i32 0, i32 23
  store i64 0, i64* %149, align 8
  %150 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %151 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 1000000, i32* %153, align 4
  %154 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %155 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 2000000, i32* %157, align 4
  %158 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %159 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 5500000, i32* %161, align 4
  %162 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %163 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  store i32 11000000, i32* %165, align 4
  %166 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %167 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %166, i32 0, i32 5
  store i32 4, i32* %167, align 8
  %168 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %169 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %168, i32 0, i32 22
  store i64 0, i64* %169, align 8
  %170 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %171 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %170, i32 0, i32 6
  store i32 2347, i32* %171, align 4
  %172 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %173 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %172, i32 0, i32 7
  store i32 256, i32* %173, align 8
  %174 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %175 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %174, i32 0, i32 8
  store i32 2346, i32* %175, align 4
  %176 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %177 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %176, i32 0, i32 9
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 5, i32* %179, align 4
  %180 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %181 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %180, i32 0, i32 9
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 13, i32* %183, align 4
  %184 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %185 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %184, i32 0, i32 10
  store i32 2, i32* %185, align 8
  %186 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %187 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %186, i32 0, i32 11
  store i32 4, i32* %187, align 4
  %188 = load i8*, i8** @IW_POWER_ON, align 8
  %189 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %190 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %189, i32 0, i32 21
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** @IW_POWER_ON, align 8
  %192 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %193 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %192, i32 0, i32 20
  store i8* %191, i8** %193, align 8
  %194 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %195 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %194, i32 0, i32 19
  store i64 0, i64* %195, align 8
  %196 = load i8*, i8** @WIRELESS_EXT, align 8
  %197 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %198 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %197, i32 0, i32 18
  store i8* %196, i8** %198, align 8
  %199 = load i8*, i8** @WIRELESS_EXT, align 8
  %200 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %201 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %200, i32 0, i32 17
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %203 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %204 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %203, i32 0, i32 16
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** @IW_RETRY_LIMIT, align 8
  %206 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %207 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %206, i32 0, i32 15
  store i8* %205, i8** %207, align 8
  %208 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %209 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %208, i32 0, i32 14
  store i64 0, i64* %209, align 8
  %210 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %211 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %210, i32 0, i32 12
  store i32 1, i32* %211, align 8
  %212 = load %struct.iw_range*, %struct.iw_range** %10, align 8
  %213 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %212, i32 0, i32 13
  store i32 65535, i32* %213, align 4
  ret i32 0
}

declare dso_local %struct.atmel_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
