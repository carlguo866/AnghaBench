; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_rmw32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rcar.c_rcar_rmw32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_pcie = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_pcie*, i32, i32, i32)* @rcar_rmw32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_rmw32(%struct.rcar_pcie* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rcar_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rcar_pcie* %0, %struct.rcar_pcie** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @BITS_PER_BYTE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 3
  %14 = mul nsw i32 %11, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -4
  %18 = call i32 @rcar_pci_read_reg(%struct.rcar_pcie* %15, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.rcar_pcie*, %struct.rcar_pcie** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -4
  %34 = call i32 @rcar_pci_write_reg(%struct.rcar_pcie* %30, i32 %31, i32 %33)
  ret void
}

declare dso_local i32 @rcar_pci_read_reg(%struct.rcar_pcie*, i32) #1

declare dso_local i32 @rcar_pci_write_reg(%struct.rcar_pcie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
