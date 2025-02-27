; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_send_leave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_multicast.c_send_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, i32, i8*, %struct.ib_sa_mcmember_rec, %struct.mcast_port* }
%struct.ib_sa_mcmember_rec = type { i8* }
%struct.mcast_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sa_client = common dso_local global i32 0, align 4
@IB_SA_METHOD_DELETE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@leave_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, i8*)* @send_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_leave(%struct.mcast_group* %0, i8* %1) #0 {
  %3 = alloca %struct.mcast_group*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mcast_port*, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec, align 8
  %7 = alloca i32, align 4
  store %struct.mcast_group* %0, %struct.mcast_group** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %9 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %8, i32 0, i32 4
  %10 = load %struct.mcast_port*, %struct.mcast_port** %9, align 8
  store %struct.mcast_port* %10, %struct.mcast_port** %5, align 8
  %11 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %12 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %11, i32 0, i32 3
  %13 = bitcast %struct.ib_sa_mcmember_rec* %6 to i8*
  %14 = bitcast %struct.ib_sa_mcmember_rec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %19 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %21 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mcast_port*, %struct.mcast_port** %5, align 8
  %26 = getelementptr inbounds %struct.mcast_port, %struct.mcast_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IB_SA_METHOD_DELETE, align 4
  %29 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %30 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* @leave_handler, align 4
  %36 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %37 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %38 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %37, i32 0, i32 1
  %39 = call i32 @ib_sa_mcmember_rec_query(i32* @sa_client, i32 %24, i32 %27, i32 %28, %struct.ib_sa_mcmember_rec* %6, i32 %33, i32 3000, i32 %34, i32 %35, %struct.mcast_group* %36, i32* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mcast_group*, %struct.mcast_group** %3, align 8
  %45 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %2
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ib_sa_mcmember_rec_query(i32*, i32, i32, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, i32, %struct.mcast_group*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
