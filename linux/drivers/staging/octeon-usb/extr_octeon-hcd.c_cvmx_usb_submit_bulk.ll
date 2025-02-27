; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_submit_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_cvmx_usb_submit_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvmx_usb_transaction = type { i32 }
%struct.octeon_hcd = type { i32 }
%struct.cvmx_usb_pipe = type { i32 }
%struct.urb = type { i32, i32 }

@CVMX_USB_TRANSFER_BULK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvmx_usb_transaction* (%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, %struct.urb*)* @cvmx_usb_submit_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvmx_usb_transaction* @cvmx_usb_submit_bulk(%struct.octeon_hcd* %0, %struct.cvmx_usb_pipe* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.octeon_hcd*, align 8
  %5 = alloca %struct.cvmx_usb_pipe*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.octeon_hcd* %0, %struct.octeon_hcd** %4, align 8
  store %struct.cvmx_usb_pipe* %1, %struct.cvmx_usb_pipe** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %7 = load %struct.octeon_hcd*, %struct.octeon_hcd** %4, align 8
  %8 = load %struct.cvmx_usb_pipe*, %struct.cvmx_usb_pipe** %5, align 8
  %9 = load i32, i32* @CVMX_USB_TRANSFER_BULK, align 4
  %10 = load %struct.urb*, %struct.urb** %6, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.urb*, %struct.urb** %6, align 8
  %17 = call %struct.cvmx_usb_transaction* @cvmx_usb_submit_transaction(%struct.octeon_hcd* %7, %struct.cvmx_usb_pipe* %8, i32 %9, i32 %12, i32 %15, i32 0, i32 0, i32 0, i32* null, %struct.urb* %16)
  ret %struct.cvmx_usb_transaction* %17
}

declare dso_local %struct.cvmx_usb_transaction* @cvmx_usb_submit_transaction(%struct.octeon_hcd*, %struct.cvmx_usb_pipe*, i32, i32, i32, i32, i32, i32, i32*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
