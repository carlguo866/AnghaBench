; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci.h_cpu_to_hc16p.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci.h_cpu_to_hc16p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ohci_hcd*, i32*)* @cpu_to_hc16p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_to_hc16p(%struct.ohci_hcd* %0, i32* %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i32*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %6 = call i64 @big_endian_desc(%struct.ohci_hcd* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @cpu_to_be16p(i32* %9)
  br label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @cpu_to_le16p(i32* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  ret i32 %15
}

declare dso_local i64 @big_endian_desc(%struct.ohci_hcd*) #1

declare dso_local i32 @cpu_to_be16p(i32*) #1

declare dso_local i32 @cpu_to_le16p(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
