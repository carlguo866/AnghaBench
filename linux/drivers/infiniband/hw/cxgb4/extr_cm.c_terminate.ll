; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_terminate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_rdma_terminate = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.c4iw_qp_attributes = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"TERM received tid %u qpid %u\0A\00", align 1
@C4IW_QP_STATE_TERMINATE = common dso_local global i32 0, align 4
@C4IW_QP_ATTR_NEXT_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"TERM received tid %u no ep/qp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terminate(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_rdma_terminate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.c4iw_ep*, align 8
  %8 = alloca %struct.c4iw_qp_attributes, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.cpl_rdma_terminate* @cplhdr(%struct.sk_buff* %9)
  store %struct.cpl_rdma_terminate* %10, %struct.cpl_rdma_terminate** %5, align 8
  %11 = load %struct.cpl_rdma_terminate*, %struct.cpl_rdma_terminate** %5, align 8
  %12 = call i32 @GET_TID(%struct.cpl_rdma_terminate* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %13, i32 %14)
  store %struct.c4iw_ep* %15, %struct.c4iw_ep** %7, align 8
  %16 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %17 = icmp ne %struct.c4iw_ep* %16, null
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %20 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %27 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %33)
  %35 = load i32, i32* @C4IW_QP_STATE_TERMINATE, align 4
  %36 = getelementptr inbounds %struct.c4iw_qp_attributes, %struct.c4iw_qp_attributes* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %38 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* @C4IW_QP_ATTR_NEXT_STATE, align 4
  %48 = call i32 @c4iw_modify_qp(i32 %42, %struct.TYPE_8__* %46, i32 %47, %struct.c4iw_qp_attributes* %8, i32 1)
  br label %49

49:                                               ; preds = %24, %18
  %50 = load %struct.c4iw_ep*, %struct.c4iw_ep** %7, align 8
  %51 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %50, i32 0, i32 0
  %52 = call i32 @c4iw_put_ep(%struct.TYPE_7__* %51)
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %49
  ret i32 0
}

declare dso_local %struct.cpl_rdma_terminate* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_rdma_terminate*) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @c4iw_modify_qp(i32, %struct.TYPE_8__*, i32, %struct.c4iw_qp_attributes*, i32) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
