; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_capi.c_actcapi_connect_active_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/act2000/extr_capi.c_actcapi_connect_active_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@ACTCAPI_CHKSKB = common dso_local global i32 0, align 4
@ACT2000_STATE_IWAIT = common dso_local global i64 0, align 8
@ACT2000_STATE_IBWAIT = common dso_local global i64 0, align 8
@ACTCAPI_QUEUE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @actcapi_connect_active_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @actcapi_connect_active_resp(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = call i32 @ACTCAPI_MKHDR(i32 2, i32 3, i32 3)
  %8 = load i32, i32* @ACTCAPI_CHKSKB, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACT2000_STATE_IWAIT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* @ACT2000_STATE_IBWAIT, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @ACTCAPI_QUEUE_TX, align 4
  ret void
}

declare dso_local i32 @ACTCAPI_MKHDR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
