; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_latencies.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_latencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.if_latencies, %struct.if_latencies }
%struct.if_latencies = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_latencies(%struct.ifnet* %0, %struct.if_latencies* %1, %struct.if_latencies* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.if_latencies*, align 8
  %7 = alloca %struct.if_latencies*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.if_latencies* %1, %struct.if_latencies** %6, align 8
  store %struct.if_latencies* %2, %struct.if_latencies** %7, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %9 = icmp eq %struct.ifnet* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %4, align 4
  br label %31

12:                                               ; preds = %3
  %13 = load %struct.if_latencies*, %struct.if_latencies** %6, align 8
  %14 = icmp ne %struct.if_latencies* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.if_latencies*, %struct.if_latencies** %6, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 1
  %19 = bitcast %struct.if_latencies* %16 to i8*
  %20 = bitcast %struct.if_latencies* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  br label %21

21:                                               ; preds = %15, %12
  %22 = load %struct.if_latencies*, %struct.if_latencies** %7, align 8
  %23 = icmp ne %struct.if_latencies* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.if_latencies*, %struct.if_latencies** %7, align 8
  %26 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = bitcast %struct.if_latencies* %25 to i8*
  %29 = bitcast %struct.if_latencies* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  br label %30

30:                                               ; preds = %24, %21
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
