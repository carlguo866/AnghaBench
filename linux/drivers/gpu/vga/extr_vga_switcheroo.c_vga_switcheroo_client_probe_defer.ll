; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_client_probe_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_client_probe_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_BASE_CLASS_DISPLAY = common dso_local global i32 0, align 4
@vgasr_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_switcheroo_client_probe_defer(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = ashr i32 %6, 16
  %8 = load i32, i32* @PCI_BASE_CLASS_DISPLAY, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = call i64 (...) @apple_gmux_present()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call %struct.pci_dev* (...) @vga_default_device()
  %16 = icmp ne %struct.pci_dev* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vgasr_priv, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %23

21:                                               ; preds = %17, %13, %10
  br label %22

22:                                               ; preds = %21, %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @apple_gmux_present(...) #1

declare dso_local %struct.pci_dev* @vga_default_device(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
