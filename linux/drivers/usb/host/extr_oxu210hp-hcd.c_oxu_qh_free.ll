; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qh_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_qh_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxu_hcd*, %struct.ehci_qh*)* @oxu_qh_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_qh_free(%struct.oxu_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %10 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ehci_qh*, %struct.ehci_qh** %13, align 8
  %15 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %14, i64 0
  %16 = ptrtoint %struct.ehci_qh* %9 to i64
  %17 = ptrtoint %struct.ehci_qh* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 0, i64* %26, align 8
  %27 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %28 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
