; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_set_dest_ring_base_addr_hi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_set_dest_ring_base_addr_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CE_DESC_ADDR_HI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i32, i32)* @ath10k_ce_set_dest_ring_base_addr_hi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ce_set_dest_ring_base_addr_hi(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @upper_32_bits(i32 %9)
  %11 = load i32, i32* @CE_DESC_ADDR_HI_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %14, %19
  %21 = call i32 @ath10k_ce_read32(%struct.ath10k* %13, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @CE_DESC_ADDR_HI_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ath10k_ce_write32(%struct.ath10k* %29, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @ath10k_ce_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_write32(%struct.ath10k*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
