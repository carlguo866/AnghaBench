; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_intf.c_rtw_hal_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { {}* }
%struct.dvobj_priv = type { %struct.adapter* }

@_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0A rtw_hal_deinit: hal_init fail\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_hal_deinit(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dvobj_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load i64, i64* @_SUCCESS, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %6)
  store %struct.dvobj_priv* %7, %struct.dvobj_priv** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i64 (%struct.adapter*)**
  %12 = load i64 (%struct.adapter*)*, i64 (%struct.adapter*)** %11, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = call i64 %12(%struct.adapter* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.dvobj_priv*, %struct.dvobj_priv** %4, align 8
  %20 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %19, i32 0, i32 0
  %21 = load %struct.adapter*, %struct.adapter** %20, align 8
  store %struct.adapter* %21, %struct.adapter** %2, align 8
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %26

24:                                               ; preds = %1
  %25 = call i32 @DBG_871X(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
