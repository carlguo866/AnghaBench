; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ng_ubt_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/ubt/extr_ng_ubt.c_ng_ubt_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubt_softc = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@UBT_FLAG_T_STOP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ng_ubt_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ubt_disconnect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ubt_softc*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @NG_HOOK_NODE(i32* %5)
  %7 = call %struct.ubt_softc* @NG_NODE_PRIVATE(i32 %6)
  store %struct.ubt_softc* %7, %struct.ubt_softc** %4, align 8
  %8 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %9 = call i32 @UBT_NG_LOCK(%struct.ubt_softc* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %17 = call i32 @UBT_NG_UNLOCK(%struct.ubt_softc* %16)
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %23 = load i32, i32* @UBT_FLAG_T_STOP_ALL, align 4
  %24 = call i32 @ubt_task_schedule(%struct.ubt_softc* %22, i32 %23)
  %25 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %25, i32 0, i32 2
  %27 = call i32 @NG_BT_MBUFQ_DRAIN(i32* %26)
  %28 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %28, i32 0, i32 1
  %30 = call i32 @NG_BT_MBUFQ_DRAIN(i32* %29)
  %31 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ubt_softc, %struct.ubt_softc* %31, i32 0, i32 0
  %33 = call i32 @NG_BT_MBUFQ_DRAIN(i32* %32)
  %34 = load %struct.ubt_softc*, %struct.ubt_softc** %4, align 8
  %35 = call i32 @UBT_NG_UNLOCK(%struct.ubt_softc* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %19, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ubt_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_HOOK_NODE(i32*) #1

declare dso_local i32 @UBT_NG_LOCK(%struct.ubt_softc*) #1

declare dso_local i32 @UBT_NG_UNLOCK(%struct.ubt_softc*) #1

declare dso_local i32 @ubt_task_schedule(%struct.ubt_softc*, i32) #1

declare dso_local i32 @NG_BT_MBUFQ_DRAIN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
