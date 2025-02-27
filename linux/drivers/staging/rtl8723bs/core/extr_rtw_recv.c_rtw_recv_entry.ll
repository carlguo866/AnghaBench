; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_recv_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_recv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.adapter* }
%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i64 0, align 8
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rtw_recv_entry: recv_func return fail!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_recv_entry(%union.recv_frame* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_priv*, align 8
  %6 = alloca i64, align 8
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  %7 = load i64, i64* @_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %9 = bitcast %union.recv_frame* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.recv_priv* %14, %struct.recv_priv** %5, align 8
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %17 = call i64 @recv_func(%struct.adapter* %15, %union.recv_frame* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @_FAIL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %23 = load i32, i32* @_drv_info_, align 4
  %24 = call i32 @RT_TRACE(i32 %22, i32 %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.recv_priv*, %struct.recv_priv** %5, align 8
  %27 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %2, align 8
  br label %33

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @recv_func(%struct.adapter*, %union.recv_frame*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
