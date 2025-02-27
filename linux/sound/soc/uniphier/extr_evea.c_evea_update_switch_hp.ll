; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_update_switch_hp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_evea.c_evea_update_switch_hp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evea_priv = type { i64, %struct.regmap* }
%struct.regmap = type { i32 }

@ADACSEQ1_MMUTE = common dso_local global i32 0, align 4
@AHPOUTPOW = common dso_local global i32 0, align 4
@AHPOUTPOW_HP_ON = common dso_local global i32 0, align 4
@ADAC1ODC = common dso_local global i32 0, align 4
@ADAC1ODC_HP_DIS_RES_MASK = common dso_local global i32 0, align 4
@ADAC1ODC_HP_DIS_RES_OFF = common dso_local global i32 0, align 4
@ADAC1ODC_HP_DIS_RES_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evea_priv*)* @evea_update_switch_hp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evea_update_switch_hp(%struct.evea_priv* %0) #0 {
  %2 = alloca %struct.evea_priv*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.evea_priv* %0, %struct.evea_priv** %2, align 8
  %4 = load %struct.evea_priv*, %struct.evea_priv** %2, align 8
  %5 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %4, i32 0, i32 1
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.evea_priv*, %struct.evea_priv** %2, align 8
  %8 = getelementptr inbounds %struct.evea_priv, %struct.evea_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = call i32 @ADACSEQ1(i32 1)
  %14 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %15 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %14, i32 0)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @AHPOUTPOW, align 4
  %18 = load i32, i32* @AHPOUTPOW_HP_ON, align 4
  %19 = load i32, i32* @AHPOUTPOW_HP_ON, align 4
  %20 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.regmap*, %struct.regmap** %3, align 8
  %22 = load i32, i32* @ADAC1ODC, align 4
  %23 = load i32, i32* @ADAC1ODC_HP_DIS_RES_MASK, align 4
  %24 = load i32, i32* @ADAC1ODC_HP_DIS_RES_OFF, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %22, i32 %23, i32 %24)
  br label %41

26:                                               ; preds = %1
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = load i32, i32* @ADAC1ODC, align 4
  %29 = load i32, i32* @ADAC1ODC_HP_DIS_RES_MASK, align 4
  %30 = load i32, i32* @ADAC1ODC_HP_DIS_RES_ON, align 4
  %31 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = call i32 @ADACSEQ1(i32 1)
  %34 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %35 = load i32, i32* @ADACSEQ1_MMUTE, align 4
  %36 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.regmap*, %struct.regmap** %3, align 8
  %38 = load i32, i32* @AHPOUTPOW, align 4
  %39 = load i32, i32* @AHPOUTPOW_HP_ON, align 4
  %40 = call i32 @regmap_update_bits(%struct.regmap* %37, i32 %38, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %26, %11
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @ADACSEQ1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
