; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_get_post_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_get_post_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_eth_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_eth_private*, i32)* @sh_eth_tsu_get_post_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_tsu_get_post_bit(%struct.sh_eth_private* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_eth_private* %0, %struct.sh_eth_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %6 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 %7, 1
  %9 = ashr i32 8, %8
  %10 = load i32, i32* %4, align 4
  %11 = srem i32 %10, 8
  %12 = mul nsw i32 %11, 4
  %13 = sub nsw i32 28, %12
  %14 = shl i32 %9, %13
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
