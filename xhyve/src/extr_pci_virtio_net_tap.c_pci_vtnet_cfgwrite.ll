; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_cfgwrite.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_pci_vtnet_cfgwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtnet_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"vtnet: write to readonly reg %d\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @pci_vtnet_cfgwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtnet_cfgwrite(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_vtnet_softc*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pci_vtnet_softc*
  store %struct.pci_vtnet_softc* %12, %struct.pci_vtnet_softc** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %33

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp sle i32 %18, 6
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.pci_vtnet_softc*, %struct.pci_vtnet_softc** %9, align 8
  %23 = getelementptr inbounds %struct.pci_vtnet_softc, %struct.pci_vtnet_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memcpy(i8* %30, i32* %8, i32 %31)
  br label %38

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @DPRINTF(i8* %36)
  br label %38

38:                                               ; preds = %33, %15
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
