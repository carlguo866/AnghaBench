; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SA_XLOCKED = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @e6000sw_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_setvgroup(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_6__* @device_get_softc(i32 %7)
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = load i32, i32* @SA_XLOCKED, align 4
  %11 = call i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_6__* %9, i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @e6000sw_set_port_vlan(%struct.TYPE_6__* %18, i32* %19)
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @e6000sw_set_dot1q_vlan(%struct.TYPE_6__* %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %27, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_6__* @device_get_softc(i32) #1

declare dso_local i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @e6000sw_set_port_vlan(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @e6000sw_set_dot1q_vlan(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
