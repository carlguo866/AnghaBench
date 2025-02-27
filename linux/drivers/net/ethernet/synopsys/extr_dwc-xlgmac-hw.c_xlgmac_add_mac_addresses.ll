; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_add_mac_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_add_mac_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_add_mac_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_add_mac_addresses(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %3 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %4 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %10 = call i32 @xlgmac_set_mac_hash_table(%struct.xlgmac_pdata* %9)
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %13 = call i32 @xlgmac_set_mac_addn_addrs(%struct.xlgmac_pdata* %12)
  br label %14

14:                                               ; preds = %11, %8
  ret i32 0
}

declare dso_local i32 @xlgmac_set_mac_hash_table(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_set_mac_addn_addrs(%struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
