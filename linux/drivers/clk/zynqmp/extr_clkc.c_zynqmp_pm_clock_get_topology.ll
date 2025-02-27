; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.zynqmp_pm_query_data*, i8**)* }
%struct.zynqmp_pm_query_data = type { i8*, i8*, i32, i32 }
%struct.topology_resp = type { i32 }

@PAYLOAD_ARG_CNT = common dso_local global i32 0, align 4
@PM_QID_CLOCK_GET_TOPOLOGY = common dso_local global i32 0, align 4
@eemi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.topology_resp*)* @zynqmp_pm_clock_get_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_clock_get_topology(i8* %0, i8* %1, %struct.topology_resp* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.topology_resp*, align 8
  %7 = alloca %struct.zynqmp_pm_query_data, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.topology_resp* %2, %struct.topology_resp** %6, align 8
  %11 = bitcast %struct.zynqmp_pm_query_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @PAYLOAD_ARG_CNT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @PM_QID_CLOCK_GET_TOPOLOGY, align 4
  %17 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %7, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eemi_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.zynqmp_pm_query_data*, i8**)*, i32 (%struct.zynqmp_pm_query_data*, i8**)** %23, align 8
  %25 = call i32 %24(%struct.zynqmp_pm_query_data* byval(%struct.zynqmp_pm_query_data) align 8 %7, i8** %15)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.topology_resp*, %struct.topology_resp** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %15, i64 1
  %28 = call i32 @memcpy(%struct.topology_resp* %26, i8** %27, i32 4)
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(%struct.topology_resp*, i8**, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
