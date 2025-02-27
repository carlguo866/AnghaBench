; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_need_bw_sch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-mtk-sch.c_need_bw_sch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_endpoint = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_host_endpoint*, i32, i32)* @need_bw_sch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @need_bw_sch(%struct.usb_host_endpoint* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_host_endpoint* %0, %struct.usb_host_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %9 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %8, i32 0, i32 0
  %10 = call i64 @usb_endpoint_xfer_control(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %14 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %13, i32 0, i32 0
  %15 = call i64 @usb_endpoint_xfer_bulk(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @is_fs_or_ls(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %27

26:                                               ; preds = %22, %18
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @usb_endpoint_xfer_control(i32*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(i32*) #1

declare dso_local i64 @is_fs_or_ls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
