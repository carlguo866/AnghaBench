; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_rel_sync_cache_relation_cb.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/pgoutput/extr_pgoutput.c_rel_sync_cache_relation_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RelationSyncCache = common dso_local global i32* null, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rel_sync_cache_relation_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rel_sync_cache_relation_cb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** @RelationSyncCache, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %19

9:                                                ; preds = %2
  %10 = load i32*, i32** @RelationSyncCache, align 8
  %11 = load i32, i32* @HASH_FIND, align 4
  %12 = call i64 @hash_search(i32* %10, i32* %4, i32 %11, i32* null)
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %5, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %8, %16, %9
  ret void
}

declare dso_local i64 @hash_search(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
