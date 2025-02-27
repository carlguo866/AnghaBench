; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_srq_pingpong.c_pp_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_srq_pingpong.c_pp_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { i32*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_sge = type { i64, i32, i32 }
%struct.ibv_send_wr = type { i32, i32, i32, %struct.ibv_sge*, i32 }

@IBV_WR_SEND = common dso_local global i32 0, align 4
@PINGPONG_SEND_WRID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*, i32)* @pp_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_post_send(%struct.pingpong_context* %0, i32 %1) #0 {
  %3 = alloca %struct.pingpong_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_sge, align 8
  %6 = alloca %struct.ibv_send_wr, align 8
  %7 = alloca %struct.ibv_send_wr*, align 8
  store %struct.pingpong_context* %0, %struct.pingpong_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 0
  %9 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %10 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 1
  %14 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %15 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 8
  %19 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 2
  %20 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %21 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 1
  %25 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %26 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 2
  %29 = load i32, i32* @IBV_WR_SEND, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 3
  store %struct.ibv_sge* %5, %struct.ibv_sge** %30, align 8
  %31 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 4
  %32 = load i32, i32* @PINGPONG_SEND_WRID, align 4
  store i32 %32, i32* %31, align 8
  %33 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %34 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ibv_post_send(i32 %39, %struct.ibv_send_wr* %6, %struct.ibv_send_wr** %7)
  ret i32 %40
}

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
