; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_uhci_frame_skel_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_uhci_frame_skel_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32* }

@UHCI_NUMFRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, i32)* @uhci_frame_skel_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_frame_skel_link(%struct.uhci_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @UHCI_NUMFRAMES, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @__ffs(i32 %8)
  %10 = trunc i64 %9 to i32
  %11 = sub nsw i32 8, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 9, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %17 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LINK_TO_QH(%struct.uhci_hcd* %16, i32 %23)
  ret i32 %24
}

declare dso_local i64 @__ffs(i32) #1

declare dso_local i32 @LINK_TO_QH(%struct.uhci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
