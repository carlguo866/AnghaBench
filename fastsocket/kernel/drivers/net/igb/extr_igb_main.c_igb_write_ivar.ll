; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_write_ivar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_IVAR0 = common dso_local global i32 0, align 4
@E1000_IVAR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32, i32, i32)* @igb_write_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_write_ivar(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @E1000_IVAR0, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @array_rd32(i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = shl i32 255, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @E1000_IVAR_VALID, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @E1000_IVAR0, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @array_wr32(i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @array_rd32(i32, i32) #1

declare dso_local i32 @array_wr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
