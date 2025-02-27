; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_read_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_read_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*)* @myri10ge_read_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_read_reboot(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %6 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %7 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %10 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 16
  %15 = call i32 @pci_write_config_byte(%struct.pci_dev* %12, i32 %14, i32 3)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 24
  %19 = call i32 @pci_write_config_dword(%struct.pci_dev* %16, i32 %18, i32 -16)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 20
  %23 = call i32 @pci_read_config_dword(%struct.pci_dev* %20, i32 %22, i32* %5)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
