; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_pci_v3.c_v3_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_pci_v3.c_v3_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@v3_lock = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @v3_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @v3_lock, i64 %13)
  %15 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @v3_open_config_window(%struct.pci_bus* %15, i32 %16, i32 %17)
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %38 [
    i32 1, label %20
    i32 2, label %26
    i32 4, label %32
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @__raw_writeb(i32 %21, i64 %22)
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @__raw_readb(i64 %24)
  br label %38

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @__raw_writew(i32 %27, i64 %28)
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @__raw_readw(i64 %30)
  br label %38

32:                                               ; preds = %5
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @__raw_writel(i32 %33, i64 %34)
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @__raw_readl(i64 %36)
  br label %38

38:                                               ; preds = %5, %32, %26, %20
  %39 = call i32 (...) @v3_close_config_window()
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @v3_lock, i64 %40)
  %42 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @v3_open_config_window(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @__raw_writeb(i32, i64) #1

declare dso_local i32 @__raw_readb(i64) #1

declare dso_local i32 @__raw_writew(i32, i64) #1

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @v3_close_config_window(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
