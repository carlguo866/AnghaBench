; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_remove_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/extr_outgoing.c_remove_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32, %struct.TYPE_11__*, i32*)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@APR_POLL_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @remove_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_connection(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  %7 = load i32, i32* @APR_POLL_SOCKET, align 4
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = call i32 %20(i32 %23, %struct.TYPE_11__* %5, i32* %25)
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
