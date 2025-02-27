; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_scm.c_am335x_scm_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_scm.c_am335x_scm_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_scm_softc = type { i32* }

@SCM_BGAP_CTRL = common dso_local global i32 0, align 4
@SCM_BGAP_BGOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_scm_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_scm_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.am335x_scm_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.am335x_scm_softc* @device_get_softc(i32 %4)
  store %struct.am335x_scm_softc* %5, %struct.am335x_scm_softc** %3, align 8
  %6 = load %struct.am335x_scm_softc*, %struct.am335x_scm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.am335x_scm_softc, %struct.am335x_scm_softc* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.am335x_scm_softc*, %struct.am335x_scm_softc** %3, align 8
  %12 = getelementptr inbounds %struct.am335x_scm_softc, %struct.am335x_scm_softc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @sysctl_remove_oid(i32* %13, i32 1, i32 0)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @SCM_BGAP_CTRL, align 4
  %17 = load i32, i32* @SCM_BGAP_BGOFF, align 4
  %18 = call i32 @ti_scm_reg_write_4(i32 %16, i32 %17)
  ret i32 0
}

declare dso_local %struct.am335x_scm_softc* @device_get_softc(i32) #1

declare dso_local i32 @sysctl_remove_oid(i32*, i32, i32) #1

declare dso_local i32 @ti_scm_reg_write_4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
