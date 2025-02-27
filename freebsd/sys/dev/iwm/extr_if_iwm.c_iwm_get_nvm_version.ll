; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_get_nvm_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_get_nvm_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IWM_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@IWM_NVM_VERSION = common dso_local global i32 0, align 4
@IWM_NVM_VERSION_8000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i32*)* @iwm_get_nvm_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_get_nvm_version(%struct.iwm_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca i32*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IWM_DEVICE_FAMILY_8000, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @IWM_NVM_VERSION, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @le16_to_cpup(i32* %17)
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @IWM_NVM_VERSION_8000, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @le32_to_cpup(i32* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
