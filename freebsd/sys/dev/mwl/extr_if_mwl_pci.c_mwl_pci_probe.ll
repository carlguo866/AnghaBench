; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl_pci.c_mwl_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl_pci.c_mwl_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_pci_ident = type { i32 }

@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mwl_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_pci_ident*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_vendor(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pci_get_device(i32 %7)
  %9 = call %struct.mwl_pci_ident* @mwl_pci_lookup(i32 %6, i32 %8)
  store %struct.mwl_pci_ident* %9, %struct.mwl_pci_ident** %4, align 8
  %10 = load %struct.mwl_pci_ident*, %struct.mwl_pci_ident** %4, align 8
  %11 = icmp ne %struct.mwl_pci_ident* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mwl_pci_ident*, %struct.mwl_pci_ident** %4, align 8
  %15 = getelementptr inbounds %struct.mwl_pci_ident, %struct.mwl_pci_ident* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_set_desc(i32 %13, i32 %16)
  %18 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.mwl_pci_ident* @mwl_pci_lookup(i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
