; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-sni.c_pcimt_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-sni.c_pcimt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIMT_CONFIG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pcimt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcimt_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @set_config_address(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %43

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %42 [
    i32 1, label %24
    i32 2, label %31
    i32 4, label %38
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @PCIMT_CONFIG_DATA, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 3
  %29 = add nsw i32 %26, %28
  %30 = call i32 @outb(i32 %25, i32 %29)
  br label %42

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @PCIMT_CONFIG_DATA, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 2
  %36 = add nsw i32 %33, %35
  %37 = call i32 @outw(i32 %32, i32 %36)
  br label %42

38:                                               ; preds = %22
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @PCIMT_CONFIG_DATA, align 4
  %41 = call i32 @outl(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %22, %38, %31, %24
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @set_config_address(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
