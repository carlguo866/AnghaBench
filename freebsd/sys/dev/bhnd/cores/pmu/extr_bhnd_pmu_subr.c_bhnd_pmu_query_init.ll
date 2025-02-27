; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_query_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_query_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pmu_query = type { i32, %struct.bhnd_chipid, i8*, %struct.bhnd_pmu_io*, i32 }
%struct.bhnd_chipid = type { i32 }
%struct.bhnd_pmu_io = type { i32 }

@BHND_PMU_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_query_init(%struct.bhnd_pmu_query* %0, i32 %1, i32 %2, %struct.bhnd_pmu_io* %3, i8* %4) #0 {
  %6 = alloca %struct.bhnd_chipid, align 4
  %7 = alloca %struct.bhnd_pmu_query*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bhnd_pmu_io*, align 8
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.bhnd_pmu_query* %0, %struct.bhnd_pmu_query** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.bhnd_pmu_io* %3, %struct.bhnd_pmu_io** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %7, align 8
  %14 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.bhnd_pmu_io*, %struct.bhnd_pmu_io** %9, align 8
  %16 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %7, align 8
  %17 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %16, i32 0, i32 3
  store %struct.bhnd_pmu_io* %15, %struct.bhnd_pmu_io** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %7, align 8
  %20 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %7, align 8
  %22 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %21, i32 0, i32 1
  %23 = bitcast %struct.bhnd_chipid* %22 to i8*
  %24 = bitcast %struct.bhnd_chipid* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %7, align 8
  %26 = load i32, i32* @BHND_PMU_CAP, align 4
  %27 = call i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query* %25, i32 %26)
  %28 = load %struct.bhnd_pmu_query*, %struct.bhnd_pmu_query** %7, align 8
  %29 = getelementptr inbounds %struct.bhnd_pmu_query, %struct.bhnd_pmu_query* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BHND_PMU_READ_4(%struct.bhnd_pmu_query*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
