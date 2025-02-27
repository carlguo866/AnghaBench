; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_del.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_bridge_ioctl_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbreq = type { i32 }
%struct.bridge_iflist = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_del(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbreq*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ifbreq*
  store %struct.ifbreq* %9, %struct.ifbreq** %6, align 8
  %10 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %11 = load %struct.ifbreq*, %struct.ifbreq** %6, align 8
  %12 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %10, i32 %13)
  store %struct.bridge_iflist* %14, %struct.bridge_iflist** %7, align 8
  %15 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %16 = icmp eq %struct.bridge_iflist* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %21 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %22 = call i32 @bridge_delete_member(%struct.bridge_softc* %20, %struct.bridge_iflist* %21, i32 0)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

declare dso_local i32 @bridge_delete_member(%struct.bridge_softc*, %struct.bridge_iflist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
