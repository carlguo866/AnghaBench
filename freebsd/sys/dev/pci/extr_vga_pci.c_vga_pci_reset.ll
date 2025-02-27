; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_POWERSTATE_D0 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vga_pci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_pci_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @pci_get_powerstate(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %16 = call i32 @pci_set_powerstate(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %9, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @pci_get_powerstate(i32 %18)
  %20 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %25 = call i32 @pci_set_powerstate(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_set_powerstate(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @pci_get_powerstate(i32) #1

declare dso_local i32 @pci_set_powerstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
