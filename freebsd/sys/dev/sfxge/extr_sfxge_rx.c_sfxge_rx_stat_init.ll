; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_stat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sfxge_softc = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@sfxge_rx_stats = common dso_local global %struct.TYPE_3__* null, align 8
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sfxge_rx_stat_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*)* @sfxge_rx_stat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_rx_stat_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %36, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sfxge_rx_stats, align 8
  %17 = call i32 @nitems(%struct.TYPE_3__* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %21 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sfxge_rx_stats, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CTLTYPE_UINT, align 4
  %30 = load i32, i32* @CTLFLAG_RD, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @sfxge_rx_stat_handler, align 4
  %35 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %20, %struct.sysctl_oid_list* %21, i32 %22, i32 %28, i32 %31, %struct.sfxge_softc* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %14

39:                                               ; preds = %14
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i32, i32, %struct.sfxge_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
