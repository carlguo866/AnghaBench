; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_dcp_dir_switch_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_dcp_dir_switch_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32, i32, i32*, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }

@usbhs_dcp_status_stage_in_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhs_dcp_dir_switch_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_dcp_dir_switch_done(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca %struct.usbhs_pkt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usbhs_pipe*, align 8
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %6, i32 0, i32 3
  %8 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %7, align 8
  store %struct.usbhs_pipe* %8, %struct.usbhs_pipe** %5, align 8
  %9 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %10 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, @usbhs_dcp_status_stage_in_handler
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %15 = call i32 @usbhsf_tx_irq_ctrl(%struct.usbhs_pipe* %14, i32 0)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %5, align 8
  %18 = call i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe* %17, i32 0)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %21 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %3, align 8
  %24 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %4, align 8
  store i32 1, i32* %25, align 4
  ret i32 0
}

declare dso_local i32 @usbhsf_tx_irq_ctrl(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_rx_irq_ctrl(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
