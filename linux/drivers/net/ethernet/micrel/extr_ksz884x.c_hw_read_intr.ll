; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_read_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_read_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i64 }

@KS884X_INTERRUPTS_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32*)* @hw_read_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_read_intr(%struct.ksz_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %6 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @KS884X_INTERRUPTS_STATUS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
