; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxd_ap_refill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_rxd_ap_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_rxd_ap = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @mwl8k_rxd_ap_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_rxd_ap_refill(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwl8k_rxd_ap*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mwl8k_rxd_ap*
  store %struct.mwl8k_rxd_ap* %9, %struct.mwl8k_rxd_ap** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %7, align 8
  %13 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %7, align 8
  %17 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = call i32 (...) @wmb()
  %19 = load %struct.mwl8k_rxd_ap*, %struct.mwl8k_rxd_ap** %7, align 8
  %20 = getelementptr inbounds %struct.mwl8k_rxd_ap, %struct.mwl8k_rxd_ap* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
