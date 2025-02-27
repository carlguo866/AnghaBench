; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_async_dispatch.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_async_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@rootdir = common dso_local global i32* null, align 8
@spa_async_thread = common dso_local global i32 0, align 4
@p0 = common dso_local global i32 0, align 4
@TS_RUN = common dso_local global i32 0, align 4
@maxclsyspri = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @spa_async_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_async_dispatch(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = call i32 @mutex_enter(i32* %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = call i64 @spa_async_tasks_pending(%struct.TYPE_5__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i32*, i32** @rootdir, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* @spa_async_thread, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @TS_RUN, align 4
  %26 = load i32, i32* @maxclsyspri, align 4
  %27 = call i32* @thread_create(i32* null, i32 0, i32 %23, %struct.TYPE_5__* %24, i32 0, i32* @p0, i32 %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %22, %19, %14, %9, %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @mutex_exit(i32* %32)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @spa_async_tasks_pending(%struct.TYPE_5__*) #1

declare dso_local i32* @thread_create(i32*, i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
