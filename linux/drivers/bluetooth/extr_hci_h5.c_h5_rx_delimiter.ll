; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_delimiter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_rx_delimiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.h5* }
%struct.h5 = type { i32 }

@SLIP_DELIMITER = common dso_local global i8 0, align 1
@h5_rx_pkt_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i8)* @h5_rx_delimiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_rx_delimiter(%struct.hci_uart* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.h5*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 0
  %8 = load %struct.h5*, %struct.h5** %7, align 8
  store %struct.h5* %8, %struct.h5** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @SLIP_DELIMITER, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @h5_rx_pkt_start, align 4
  %16 = load %struct.h5*, %struct.h5** %5, align 8
  %17 = getelementptr inbounds %struct.h5, %struct.h5* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %2
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
