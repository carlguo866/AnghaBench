; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleBlockedClientTimedOut.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleBlockedClientTimedOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32 (%struct.TYPE_11__*, i8**, i32)*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }

@REDISMODULE_CTX_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@REDISMODULE_CTX_BLOCKED_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @moduleBlockedClientTimedOut(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  %9 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_11__* @REDISMODULE_CTX_INIT to i8*), i64 24, i1 false)
  %10 = load i32, i32* @REDISMODULE_CTX_BLOCKED_TIMEOUT, align 4
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_11__*, i8**, i32)*, i32 (%struct.TYPE_11__*, i8**, i32)** %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8**
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %26(%struct.TYPE_11__* %4, i8** %30, i32 %33)
  %35 = call i32 @moduleFreeContext(%struct.TYPE_11__* %4)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @moduleFreeContext(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
