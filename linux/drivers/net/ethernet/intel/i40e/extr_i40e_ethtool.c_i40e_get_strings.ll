; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@i40e_gstrings_test = common dso_local global i32 0, align 4
@I40E_TEST_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @i40e_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %23 [
    i32 128, label %8
    i32 129, label %15
    i32 130, label %19
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @i40e_gstrings_test, align 4
  %11 = load i32, i32* @I40E_TEST_LEN, align 4
  %12 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %13 = mul nsw i32 %11, %12
  %14 = call i32 @memcpy(i32* %9, i32 %10, i32 %13)
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @i40e_get_stat_strings(%struct.net_device* %16, i32* %17)
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @i40e_get_priv_flag_strings(%struct.net_device* %20, i32* %21)
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19, %15, %8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @i40e_get_stat_strings(%struct.net_device*, i32*) #1

declare dso_local i32 @i40e_get_priv_flag_strings(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
