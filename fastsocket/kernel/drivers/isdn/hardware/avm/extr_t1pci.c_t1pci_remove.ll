; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_t1pci.c_t1pci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_t1pci.c_t1pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@AVMB1_PORTLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @t1pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t1pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.TYPE_8__* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call i32 @b1dma_reset(%struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @detach_capi_ctr(i32* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AVMB1_PORTLEN, align 4
  %28 = call i32 @release_region(i32 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @avmcard_dma_free(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i32 @b1_free_card(%struct.TYPE_8__* %33)
  ret void
}

declare dso_local %struct.TYPE_8__* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @b1dma_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @detach_capi_ctr(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @avmcard_dma_free(i32) #1

declare dso_local i32 @b1_free_card(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
