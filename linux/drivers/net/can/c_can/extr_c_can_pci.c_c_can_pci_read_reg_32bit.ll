; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_pci.c_c_can_pci_read_reg_32bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_pci.c_c_can_pci_read_reg_32bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_can_priv = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c_can_priv*, i32)* @c_can_pci_read_reg_32bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_pci_read_reg_32bit(%struct.c_can_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.c_can_priv* %0, %struct.c_can_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %6 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %9 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %7, %16
  %18 = call i32 @ioread32(i64 %17)
  ret i32 %18
}

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
