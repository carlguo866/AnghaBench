; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_dequeue_int_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/usb/extr_main.c_dequeue_int_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.carl9170_rsp* }
%struct.carl9170_rsp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@fw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CARL9170_INT_RQ_CACHES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carl9170_rsp* (i32)* @dequeue_int_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carl9170_rsp* @dequeue_int_buf(i32 %0) #0 {
  %2 = alloca %struct.carl9170_rsp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.carl9170_rsp*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.carl9170_rsp* null, %struct.carl9170_rsp** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 2), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %8, i64 %9
  store %struct.carl9170_rsp* %10, %struct.carl9170_rsp** %4, align 8
  %11 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %12 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* %3, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store %struct.carl9170_rsp* null, %struct.carl9170_rsp** %2, align 8
  br label %30

20:                                               ; preds = %7
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %23 = load i64, i64* @CARL9170_INT_RQ_CACHES, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %25 = urem i64 %24, %23
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 1), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fw, i32 0, i32 0, i32 0), align 8
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  store %struct.carl9170_rsp* %29, %struct.carl9170_rsp** %2, align 8
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  ret %struct.carl9170_rsp* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
