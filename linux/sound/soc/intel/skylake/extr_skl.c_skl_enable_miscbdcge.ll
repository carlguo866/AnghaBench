; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_enable_miscbdcge.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl.c_skl_enable_miscbdcge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@AZX_CGCTL_MISCBDCGE_MASK = common dso_local global i32 0, align 4
@AZX_PCIREG_CGCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @skl_enable_miscbdcge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_enable_miscbdcge(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pci_dev* @to_pci_dev(%struct.device* %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @AZX_CGCTL_MISCBDCGE_MASK, align 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %13 ]
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @AZX_PCIREG_CGCTL, align 4
  %18 = load i32, i32* @AZX_CGCTL_MISCBDCGE_MASK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @update_pci_dword(%struct.pci_dev* %16, i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @update_pci_dword(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
