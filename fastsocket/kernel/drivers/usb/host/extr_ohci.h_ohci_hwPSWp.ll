; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci.h_ohci_hwPSWp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci.h_ohci_hwPSWp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }
%struct.td = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ohci_hcd*, %struct.td*, i32)* @ohci_hwPSWp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ohci_hwPSWp(%struct.ohci_hcd* %0, %struct.td* %1, i32 %2) #0 {
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca %struct.td*, align 8
  %6 = alloca i32, align 4
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %4, align 8
  store %struct.td* %1, %struct.td** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %8 = call i64 @big_endian_desc(%struct.ohci_hcd* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load %struct.td*, %struct.td** %5, align 8
  %12 = getelementptr inbounds %struct.td, %struct.td* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = xor i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.td*, %struct.td** %5, align 8
  %20 = getelementptr inbounds %struct.td, %struct.td* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  br label %25

25:                                               ; preds = %18, %10
  %26 = phi i32* [ %17, %10 ], [ %24, %18 ]
  ret i32* %26
}

declare dso_local i64 @big_endian_desc(%struct.ohci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
