; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_fix_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_pathtbl.c_mesh_path_fix_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_path = type { i32, i32, i32, i64, i64, i64 }
%struct.sta_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MESH_PATH_FIXED = common dso_local global i32 0, align 4
@MESH_PATH_SN_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_path_fix_nexthop(%struct.mesh_path* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.mesh_path*, align 8
  %4 = alloca %struct.sta_info*, align 8
  store %struct.mesh_path* %0, %struct.mesh_path** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %5 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %6 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = call i32 @mesh_path_assign_nexthop(%struct.mesh_path* %8, %struct.sta_info* %9)
  %11 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %12 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %11, i32 0, i32 0
  store i32 65535, i32* %12, align 8
  %13 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %14 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %16 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %18 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @MESH_PATH_FIXED, align 4
  %20 = load i32, i32* @MESH_PATH_SN_VALID, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %23 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %25 = call i32 @mesh_path_activate(%struct.mesh_path* %24)
  %26 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %27 = getelementptr inbounds %struct.mesh_path, %struct.mesh_path* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %30 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @ewma_mesh_fail_avg_init(i32* %32)
  %34 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @ewma_mesh_fail_avg_add(i32* %37, i32 1)
  %39 = load %struct.mesh_path*, %struct.mesh_path** %3, align 8
  %40 = call i32 @mesh_path_tx_pending(%struct.mesh_path* %39)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mesh_path_assign_nexthop(%struct.mesh_path*, %struct.sta_info*) #1

declare dso_local i32 @mesh_path_activate(%struct.mesh_path*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ewma_mesh_fail_avg_init(i32*) #1

declare dso_local i32 @ewma_mesh_fail_avg_add(i32*, i32) #1

declare dso_local i32 @mesh_path_tx_pending(%struct.mesh_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
