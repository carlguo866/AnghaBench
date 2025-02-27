; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_via_quirk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci_pci.c_ehci_pci_via_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"VIA-quirk applied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ehci_pci_via_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_pci_via_quirk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @pci_get_device(i32 %4)
  %6 = icmp eq i32 %5, 12548
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @pci_get_revid(i32 %8)
  %10 = and i32 %9, 240
  %11 = icmp eq i32 %10, 96
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @pci_read_config(i32 %13, i32 75, i32 1)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %27

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, 32
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pci_write_config(i32 %22, i32 75, i32 %23, i32 1)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %18, %19, %7, %1
  ret void
}

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
