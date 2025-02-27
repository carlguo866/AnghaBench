; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ibv_sge = type { i64 }
%struct.ibv_send_wr = type { i32, %struct.TYPE_7__, i32, i32, %struct.ibv_sge*, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@IBV_WR_SEND = common dso_local global i32 0, align 4
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@RDMA_UDP_QKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %struct.ibv_sge*, i32)* @ds_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_post_send(%struct.rsocket* %0, %struct.ibv_sge* %1, i32 %2) #0 {
  %4 = alloca %struct.rsocket*, align 8
  %5 = alloca %struct.ibv_sge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_send_wr, align 8
  %8 = alloca %struct.ibv_send_wr*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %4, align 8
  store %struct.ibv_sge* %1, %struct.ibv_sge** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @rs_send_wr_id(i32 %9)
  %11 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 5
  store i32* null, i32** %12, align 8
  %13 = load %struct.ibv_sge*, %struct.ibv_sge** %5, align 8
  %14 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 4
  store %struct.ibv_sge* %13, %struct.ibv_sge** %14, align 8
  %15 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @IBV_WR_SEND, align 4
  %17 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.ibv_sge*, %struct.ibv_sge** %5, align 8
  %19 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %22 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @IBV_SEND_INLINE, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %32 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %31, i32 0, i32 1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %40 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @RDMA_UDP_QKEY, align 4
  %48 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %52 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ibv_post_send(i32 %59, %struct.ibv_send_wr* %7, %struct.ibv_send_wr** %8)
  %61 = call i32 @rdma_seterrno(i32 %60)
  ret i32 %61
}

declare dso_local i32 @rs_send_wr_id(i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
