; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_add_mc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_add_mc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_hw*, i32*, i32*)* @alx_add_mc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_add_mc_addr(%struct.alx_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.alx_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @ether_crc(i32 %10, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = ashr i32 %13, 31
  %15 = and i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 26
  %18 = and i32 %17, 31
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local i32 @ether_crc(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
