; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mcast.c_rvt_mcast_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mcast.c_rvt_mcast_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_mcast = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.ib_gid }
%union.ib_gid = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rvt_mcast* (%union.ib_gid*, i32)* @rvt_mcast_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rvt_mcast* @rvt_mcast_alloc(%union.ib_gid* %0, i32 %1) #0 {
  %3 = alloca %union.ib_gid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_mcast*, align 8
  store %union.ib_gid* %0, %union.ib_gid** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.rvt_mcast* @kzalloc(i32 20, i32 %6)
  store %struct.rvt_mcast* %7, %struct.rvt_mcast** %5, align 8
  %8 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  %9 = icmp ne %struct.rvt_mcast* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  %13 = getelementptr inbounds %struct.rvt_mcast, %struct.rvt_mcast* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %union.ib_gid*, %union.ib_gid** %3, align 8
  %16 = bitcast %union.ib_gid* %14 to i8*
  %17 = bitcast %union.ib_gid* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  %20 = getelementptr inbounds %struct.rvt_mcast, %struct.rvt_mcast* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  %23 = getelementptr inbounds %struct.rvt_mcast, %struct.rvt_mcast* %22, i32 0, i32 2
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  %26 = getelementptr inbounds %struct.rvt_mcast, %struct.rvt_mcast* %25, i32 0, i32 1
  %27 = call i32 @init_waitqueue_head(i32* %26)
  %28 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  %29 = getelementptr inbounds %struct.rvt_mcast, %struct.rvt_mcast* %28, i32 0, i32 0
  %30 = call i32 @atomic_set(i32* %29, i32 0)
  br label %31

31:                                               ; preds = %11, %10
  %32 = load %struct.rvt_mcast*, %struct.rvt_mcast** %5, align 8
  ret %struct.rvt_mcast* %32
}

declare dso_local %struct.rvt_mcast* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
