; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_quick_drop_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_quick_drop_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.ar9300_base_eep_hdr }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ar9300_base_eep_hdr = type { i32 }

@__const.ar9003_hw_quick_drop_apply.f = private unnamed_addr constant [3 x i32] [i32 5180, i32 5500, i32 5785], align 4
@AR_PHY_AGC = common dso_local global i32 0, align 4
@AR_PHY_AGC_QUICK_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_quick_drop_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_quick_drop_apply(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9300_eeprom*, align 8
  %6 = alloca %struct.ar9300_base_eep_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.ar9300_eeprom* %12, %struct.ar9300_eeprom** %5, align 8
  %13 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %14 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %13, i32 0, i32 3
  store %struct.ar9300_base_eep_hdr* %14, %struct.ar9300_base_eep_hdr** %6, align 8
  %15 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.ar9003_hw_quick_drop_apply.f to i8*), i64 12, i1 false)
  %16 = load %struct.ar9300_base_eep_hdr*, %struct.ar9300_base_eep_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.ar9300_base_eep_hdr, %struct.ar9300_base_eep_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BIT(i32 4)
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %69

23:                                               ; preds = %2
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = call i64 @AR_SREV_9300(%struct.ath_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = call i64 @AR_SREV_9580(%struct.ath_hw* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = call i64 @AR_SREV_9340(%struct.ath_hw* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %31, %27, %23
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 4000
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %40 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  br label %63

43:                                               ; preds = %35
  %44 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %45 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %50 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %5, align 8
  %55 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %4, align 4
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %62 = call i32 @ar9003_hw_power_interpolate(i32 %59, i32* %60, i32* %61, i32 3)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %43, %38
  %64 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %65 = load i32, i32* @AR_PHY_AGC, align 4
  %66 = load i32, i32* @AR_PHY_AGC_QUICK_DROP, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %22, %63, %31
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i64 @AR_SREV_9300(%struct.ath_hw*) #2

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #2

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #2

declare dso_local i32 @ar9003_hw_power_interpolate(i32, i32*, i32*, i32) #2

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
