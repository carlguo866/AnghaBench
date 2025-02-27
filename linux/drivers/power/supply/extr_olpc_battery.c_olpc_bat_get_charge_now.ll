; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_charge_now.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_olpc_battery.c_olpc_bat_get_charge_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.power_supply_propval = type { i32 }

@EC_BAT_SOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.power_supply_propval*)* @olpc_bat_get_charge_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_bat_get_charge_now(%union.power_supply_propval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.power_supply_propval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.power_supply_propval, align 4
  %6 = alloca i32, align 4
  store %union.power_supply_propval* %0, %union.power_supply_propval** %3, align 8
  %7 = load i32, i32* @EC_BAT_SOC, align 4
  %8 = call i32 @olpc_ec_cmd(i32 %7, i32* null, i32 0, i32* %4, i32 1)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = call i32 @olpc_bat_get_charge_full_design(%union.power_supply_propval* %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = bitcast %union.power_supply_propval* %5 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 100
  %24 = mul nsw i32 %20, %23
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %3, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %17, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @olpc_ec_cmd(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @olpc_bat_get_charge_full_design(%union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
