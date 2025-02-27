; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_ht20_target_powers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_ht20_target_powers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@HT_TARGET_RATE_0_8_16 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_0_8_16 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_1_3_9_11_17_19 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_1_3_9_11_17_19 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_4 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_4 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_5 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_5 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_6 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_6 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_7 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_7 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_12 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_12 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_13 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_13 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_14 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_14 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_15 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_15 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_20 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_20 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_21 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_21 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_22 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_22 = common dso_local global i64 0, align 8
@HT_TARGET_RATE_23 = common dso_local global i32 0, align 4
@ALL_TARGET_HT20_23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32*, i32)* @ar9003_hw_get_ht20_target_powers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_get_ht20_target_powers(%struct.ath_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = load i32, i32* @HT_TARGET_RATE_0_8_16, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %9, i32 %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %7, align 8
  %15 = load i64, i64* @ALL_TARGET_HT20_0_8_16, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %18 = load i32, i32* @HT_TARGET_RATE_1_3_9_11_17_19, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* @ALL_TARGET_HT20_1_3_9_11_17_19, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = load i32, i32* @HT_TARGET_RATE_4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* @ALL_TARGET_HT20_4, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %34 = load i32, i32* @HT_TARGET_RATE_5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* @ALL_TARGET_HT20_5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %42 = load i32, i32* @HT_TARGET_RATE_6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* @ALL_TARGET_HT20_6, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %50 = load i32, i32* @HT_TARGET_RATE_7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* @ALL_TARGET_HT20_7, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %58 = load i32, i32* @HT_TARGET_RATE_12, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* @ALL_TARGET_HT20_12, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %66 = load i32, i32* @HT_TARGET_RATE_13, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* @ALL_TARGET_HT20_13, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %74 = load i32, i32* @HT_TARGET_RATE_14, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* @ALL_TARGET_HT20_14, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %82 = load i32, i32* @HT_TARGET_RATE_15, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* @ALL_TARGET_HT20_15, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %90 = load i32, i32* @HT_TARGET_RATE_20, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i64, i64* @ALL_TARGET_HT20_20, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %98 = load i32, i32* @HT_TARGET_RATE_21, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* @ALL_TARGET_HT20_21, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %106 = load i32, i32* @HT_TARGET_RATE_22, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = load i64, i64* @ALL_TARGET_HT20_22, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %114 = load i32, i32* @HT_TARGET_RATE_23, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw* %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load i64, i64* @ALL_TARGET_HT20_23, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %117, i32* %120, align 4
  ret void
}

declare dso_local i32 @ar9003_hw_eeprom_get_ht20_tgt_pwr(%struct.ath_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
