; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_est_ua_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_est_ua_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_lun = type { i32, %struct.ctl_softc* }
%struct.ctl_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_est_ua_all(%struct.ctl_lun* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_lun* %0, %struct.ctl_lun** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 1
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %10, align 8
  store %struct.ctl_softc* %11, %struct.ctl_softc** %7, align 8
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %12, i32 0, i32 0
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(i32* %13, i32 %14)
  %16 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %17 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %31, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.ctl_softc*, %struct.ctl_softc** %7, align 8
  %22 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ctl_est_ua_port(%struct.ctl_lun* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %19

34:                                               ; preds = %19
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @ctl_est_ua_port(%struct.ctl_lun*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
