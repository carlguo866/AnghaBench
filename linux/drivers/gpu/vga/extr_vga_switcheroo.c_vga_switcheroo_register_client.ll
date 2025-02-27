; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_register_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/vga/extr_vga_switcheroo.c_vga_switcheroo_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.vga_switcheroo_client_ops = type { i32 }

@VGA_SWITCHEROO_UNKNOWN_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vga_switcheroo_register_client(%struct.pci_dev* %0, %struct.vga_switcheroo_client_ops* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.vga_switcheroo_client_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.vga_switcheroo_client_ops* %1, %struct.vga_switcheroo_client_ops** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = load %struct.vga_switcheroo_client_ops*, %struct.vga_switcheroo_client_ops** %5, align 8
  %9 = load i32, i32* @VGA_SWITCHEROO_UNKNOWN_ID, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.pci_dev* (...) @vga_default_device()
  %12 = icmp eq %struct.pci_dev* %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @register_client(%struct.pci_dev* %7, %struct.vga_switcheroo_client_ops* %8, i32 %9, i32* null, i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @register_client(%struct.pci_dev*, %struct.vga_switcheroo_client_ops*, i32, i32*, i32, i32) #1

declare dso_local %struct.pci_dev* @vga_default_device(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
