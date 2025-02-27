; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_WorkerInit.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_fetcher.c_WorkerInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.background_worker = type { i32 }
%struct.background_worker_config = type { i32 (i8*, i8*, i8**)*, i32, i32, i32, i32, i32, i32 }

@RequestHold = common dso_local global i32 0, align 4
@RequestRelease = common dso_local global i32 0, align 4
@CloseWorker = common dso_local global i32 0, align 4
@ProbeWorker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fetch-art-threads\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.background_worker**, i32 (i8*, i8*, i8**)*)* @WorkerInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WorkerInit(%struct.TYPE_4__* %0, %struct.background_worker** %1, i32 (i8*, i8*, i8**)* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.background_worker**, align 8
  %6 = alloca i32 (i8*, i8*, i8**)*, align 8
  %7 = alloca %struct.background_worker_config, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.background_worker** %1, %struct.background_worker*** %5, align 8
  store i32 (i8*, i8*, i8**)* %2, i32 (i8*, i8*, i8**)** %6, align 8
  %8 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 0
  %9 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** %6, align 8
  store i32 (i8*, i8*, i8**)* %9, i32 (i8*, i8*, i8**)** %8, align 8
  %10 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 1
  %11 = load i32, i32* @RequestHold, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 2
  %13 = load i32, i32* @RequestRelease, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 3
  %15 = load i32, i32* @CloseWorker, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 4
  %17 = load i32, i32* @ProbeWorker, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @var_InheritInteger(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %18, align 8
  %23 = getelementptr inbounds %struct.background_worker_config, %struct.background_worker_config* %7, i32 0, i32 6
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = call %struct.background_worker* @background_worker_New(%struct.TYPE_4__* %24, %struct.background_worker_config* %7)
  %26 = load %struct.background_worker**, %struct.background_worker*** %5, align 8
  store %struct.background_worker* %25, %struct.background_worker** %26, align 8
  ret void
}

declare dso_local i32 @var_InheritInteger(i32, i8*) #1

declare dso_local %struct.background_worker* @background_worker_New(%struct.TYPE_4__*, %struct.background_worker_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
