; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_pci_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp23xx/extr_core.c_pci_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@IXP23XX_PCI_XSCALE_INT_STATUS = common dso_local global i32* null, align 8
@IRQ_IXP23XX_INTB = common dso_local global i32 0, align 4
@IRQ_IXP23XX_INTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @pci_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_handler(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load i32*, i32** @IXP23XX_PCI_XSCALE_INT_STATUS, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 %13(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 67108864
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_IXP23XX_INTB, align 4
  store i32 %20, i32* %6, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 134217728
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @IRQ_IXP23XX_INTA, align 4
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @generic_handle_irq(i32 %31)
  %33 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 %37(i32 %38)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
