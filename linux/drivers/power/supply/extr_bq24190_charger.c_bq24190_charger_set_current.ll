; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_set_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq24190_charger.c_bq24190_charger_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq24190_dev_info = type { i32 }
%union.power_supply_propval = type { i32 }

@BQ24190_REG_CCC = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_FORCE_20PCT_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_FORCE_20PCT_SHIFT = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_ICHG_MASK = common dso_local global i32 0, align 4
@BQ24190_REG_CCC_ICHG_SHIFT = common dso_local global i32 0, align 4
@bq24190_ccc_ichg_values = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq24190_dev_info*, %union.power_supply_propval*)* @bq24190_charger_set_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq24190_charger_set_current(%struct.bq24190_dev_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq24190_dev_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bq24190_dev_info* %0, %struct.bq24190_dev_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %10 = bitcast %union.power_supply_propval* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %13 = load i32, i32* @BQ24190_REG_CCC, align 4
  %14 = load i32, i32* @BQ24190_REG_CCC_FORCE_20PCT_MASK, align 4
  %15 = load i32, i32* @BQ24190_REG_CCC_FORCE_20PCT_SHIFT, align 4
  %16 = call i32 @bq24190_read_mask(%struct.bq24190_dev_info* %12, i32 %13, i32 %14, i32 %15, i64* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 5
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.bq24190_dev_info*, %struct.bq24190_dev_info** %4, align 8
  %29 = load i32, i32* @BQ24190_REG_CCC, align 4
  %30 = load i32, i32* @BQ24190_REG_CCC_ICHG_MASK, align 4
  %31 = load i32, i32* @BQ24190_REG_CCC_ICHG_SHIFT, align 4
  %32 = load i32, i32* @bq24190_ccc_ichg_values, align 4
  %33 = load i32, i32* @bq24190_ccc_ichg_values, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @bq24190_set_field_val(%struct.bq24190_dev_info* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @bq24190_read_mask(%struct.bq24190_dev_info*, i32, i32, i32, i64*) #1

declare dso_local i32 @bq24190_set_field_val(%struct.bq24190_dev_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
