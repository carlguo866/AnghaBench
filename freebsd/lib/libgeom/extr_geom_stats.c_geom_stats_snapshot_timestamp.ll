; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_stats.c_geom_stats_snapshot_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_stats.c_geom_stats_snapshot_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.snapshot = type { %struct.timespec }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geom_stats_snapshot_timestamp(i8* %0, %struct.timespec* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.snapshot*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.snapshot*
  store %struct.snapshot* %7, %struct.snapshot** %5, align 8
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = load %struct.snapshot*, %struct.snapshot** %5, align 8
  %10 = getelementptr inbounds %struct.snapshot, %struct.snapshot* %9, i32 0, i32 0
  %11 = bitcast %struct.timespec* %8 to i8*
  %12 = bitcast %struct.timespec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
