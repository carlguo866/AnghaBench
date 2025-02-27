; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_osm_ucast_dor_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_mgr.c_osm_ucast_dor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osm_routing_engine = type { i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ucast_build_lid_matrices = common dso_local global i32 0, align 4
@ucast_dor_build_lfts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osm_ucast_dor_setup(%struct.osm_routing_engine* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.osm_routing_engine*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.osm_routing_engine* %0, %struct.osm_routing_engine** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %3, align 8
  %9 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %8, i32 0, i32 2
  store i32* %7, i32** %9, align 8
  %10 = load i32, i32* @ucast_build_lid_matrices, align 4
  %11 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %3, align 8
  %12 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ucast_dor_build_lfts, align 4
  %14 = load %struct.osm_routing_engine*, %struct.osm_routing_engine** %3, align 8
  %15 = getelementptr inbounds %struct.osm_routing_engine, %struct.osm_routing_engine* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
