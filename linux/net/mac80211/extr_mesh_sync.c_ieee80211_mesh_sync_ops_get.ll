; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_ieee80211_mesh_sync_ops_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_sync.c_ieee80211_mesh_sync_ops_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.ieee80211_mesh_sync_ops }
%struct.ieee80211_mesh_sync_ops = type { i32 }

@sync_methods = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_mesh_sync_ops* @ieee80211_mesh_sync_ops_get(i64 %0) #0 {
  %2 = alloca %struct.ieee80211_mesh_sync_ops*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sync_methods, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sync_methods, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sync_methods, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store %struct.ieee80211_mesh_sync_ops* %24, %struct.ieee80211_mesh_sync_ops** %2, align 8
  br label %30

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.ieee80211_mesh_sync_ops* null, %struct.ieee80211_mesh_sync_ops** %2, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.ieee80211_mesh_sync_ops*, %struct.ieee80211_mesh_sync_ops** %2, align 8
  ret %struct.ieee80211_mesh_sync_ops* %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
