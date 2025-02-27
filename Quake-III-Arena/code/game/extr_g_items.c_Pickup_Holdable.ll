; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_Pickup_Holdable.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_items.c_Pickup_Holdable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }

@bg_itemlist = common dso_local global i32 0, align 4
@STAT_HOLDABLE_ITEM = common dso_local global i64 0, align 8
@HI_KAMIKAZE = common dso_local global i64 0, align 8
@EF_KAMIKAZE = common dso_local global i32 0, align 4
@RESPAWN_HOLDABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Pickup_Holdable(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load i32, i32* @bg_itemlist, align 4
  %9 = sext i32 %8 to i64
  %10 = sub i64 0, %9
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i64 %10
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %16, align 8
  %18 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %17, i64 %18
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HI_KAMIKAZE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @EF_KAMIKAZE, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %28
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %27, %2
  %37 = load i32, i32* @RESPAWN_HOLDABLE, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
