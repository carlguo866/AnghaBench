; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_....pcipci.h_devm_of_pci_get_host_bridge_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/mt7621-pci/extr_....pcipci.h_devm_of_pci_get_host_bridge_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.list_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8, i8, %struct.list_head*, i32*)* @devm_of_pci_get_host_bridge_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devm_of_pci_get_host_bridge_resources(%struct.device* %0, i8 zeroext %1, i8 zeroext %2, %struct.list_head* %3, i32* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
