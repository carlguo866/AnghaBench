; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_UpdateRaMask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalBtc8723b1Ant.c_halbtc8723b1ant_UpdateRaMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i64*)* }

@pCoexDm = common dso_local global %struct.TYPE_6__* null, align 8
@BTC_SET_ACT_UPDATE_RAMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i64)* @halbtc8723b1ant_UpdateRaMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc8723b1ant_UpdateRaMask(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexDm, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexDm, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexDm, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %12, %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_5__*, i32, i64*)*, i32 (%struct.TYPE_5__*, i32, i64*)** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load i32, i32* @BTC_SET_ACT_UPDATE_RAMASK, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexDm, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 %23(%struct.TYPE_5__* %24, i32 %25, i64* %27)
  br label %29

29:                                               ; preds = %20, %12
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexDm, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pCoexDm, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
