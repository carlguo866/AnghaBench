; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_alloc_chipset_flush_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_intel_alloc_chipset_flush_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCIBIOS_MIN_MEM = common dso_local global i32 0, align 4
@pcibios_align_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_alloc_chipset_flush_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_alloc_chipset_flush_resource() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PAGE_SIZE, align 4
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %8 = load i32, i32* @pcibios_align_resource, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %10 = call i32 @pci_bus_alloc_resource(i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1), i32 %5, i32 %6, i32 %7, i32 0, i32 %8, %struct.TYPE_3__* %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i32 @pci_bus_alloc_resource(i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
