; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_io_error_detected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_io_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.adapter = type { i32 }

@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64)* @t3_io_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_io_error_detected(%struct.pci_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adapter*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call %struct.adapter* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.adapter* %8, %struct.adapter** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = call i32 @t3_adapter_error(%struct.adapter* %15, i32 0, i32 0)
  %17 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.adapter* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @t3_adapter_error(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
