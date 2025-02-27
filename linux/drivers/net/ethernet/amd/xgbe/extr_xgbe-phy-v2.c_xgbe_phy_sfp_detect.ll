; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_sfp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_sfp_detect(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 0
  %7 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  store %struct.xgbe_phy_data* %7, %struct.xgbe_phy_data** %3, align 8
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %9 = call i32 @xgbe_phy_sfp_reset(%struct.xgbe_phy_data* %8)
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = call i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = call i32 @xgbe_phy_sfp_signals(%struct.xgbe_prv_data* %16)
  %18 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %19 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = call i32 @xgbe_phy_sfp_mod_absent(%struct.xgbe_prv_data* %23)
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = call i32 @xgbe_phy_sfp_read_eeprom(%struct.xgbe_prv_data* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %32 = call i32 @xgbe_phy_sfp_reset(%struct.xgbe_phy_data* %31)
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = call i32 @xgbe_phy_sfp_mod_absent(%struct.xgbe_prv_data* %33)
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = call i32 @xgbe_phy_sfp_parse_eeprom(%struct.xgbe_prv_data* %36)
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %39 = call i32 @xgbe_phy_sfp_external_phy(%struct.xgbe_prv_data* %38)
  br label %40

40:                                               ; preds = %35, %30, %22
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = call i32 @xgbe_phy_sfp_phy_settings(%struct.xgbe_prv_data* %41)
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = call i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data* %43)
  br label %45

45:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @xgbe_phy_sfp_reset(%struct.xgbe_phy_data*) #1

declare dso_local i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_signals(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_mod_absent(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_read_eeprom(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_parse_eeprom(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_external_phy(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_phy_settings(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
