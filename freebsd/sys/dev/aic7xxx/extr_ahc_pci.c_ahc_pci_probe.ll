; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_pci.c_ahc_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_ahc_pci.c_ahc_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_pci_identity = type { i32 }

@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahc_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_pci_identity*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ahc_pci_identity* @ahc_find_pci_device(i32 %5)
  store %struct.ahc_pci_identity* %6, %struct.ahc_pci_identity** %4, align 8
  %7 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %4, align 8
  %8 = icmp ne %struct.ahc_pci_identity* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ahc_pci_identity*, %struct.ahc_pci_identity** %4, align 8
  %12 = getelementptr inbounds %struct.ahc_pci_identity, %struct.ahc_pci_identity* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_set_desc(i32 %10, i32 %13)
  %15 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %15, i32* %2, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.ahc_pci_identity* @ahc_find_pci_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
