; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_add_mac_addr_ht_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_add_mac_addr_ht_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_mac_filter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_mac_filter*, i8*)* @enetc_add_mac_addr_ht_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_add_mac_addr_ht_filter(%struct.enetc_mac_filter* %0, i8* %1) #0 {
  %3 = alloca %struct.enetc_mac_filter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.enetc_mac_filter* %0, %struct.enetc_mac_filter** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @enetc_mac_addr_hash_idx(i8* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %10 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__set_bit(i32 %8, i32 %11)
  %13 = load %struct.enetc_mac_filter*, %struct.enetc_mac_filter** %3, align 8
  %14 = getelementptr inbounds %struct.enetc_mac_filter, %struct.enetc_mac_filter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @enetc_mac_addr_hash_idx(i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
