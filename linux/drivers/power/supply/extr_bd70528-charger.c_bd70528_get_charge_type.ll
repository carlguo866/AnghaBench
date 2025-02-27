; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_bd70528_get_charge_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bd70528-charger.c_bd70528_get_charge_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd70528_psy = type { i32, i32 }

@BD70528_REG_CHG_CURR_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Charger state read failure %d\0A\00", align 1
@BD70528_MASK_CHG_STAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd70528_psy*, i32*)* @bd70528_get_charge_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_get_charge_type(%struct.bd70528_psy* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bd70528_psy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bd70528_psy* %0, %struct.bd70528_psy** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %9 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BD70528_REG_CHG_CURR_STAT, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.bd70528_psy*, %struct.bd70528_psy** %4, align 8
  %17 = getelementptr inbounds %struct.bd70528_psy, %struct.bd70528_psy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BD70528_MASK_CHG_STAT, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %35 [
    i32 131, label %26
    i32 137, label %29
    i32 132, label %29
    i32 138, label %32
    i32 133, label %32
    i32 134, label %32
    i32 135, label %32
    i32 136, label %32
    i32 128, label %32
    i32 130, label %32
    i32 129, label %32
    i32 139, label %32
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %38

29:                                               ; preds = %22, %22
  %30 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %38

32:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  %33 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_UNKNOWN, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32, %29, %26
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
