; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/mpool/extr_mpool.c_mpool_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/mpool/extr_mpool.c_mpool_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct._hqh, %struct._hqh* }
%struct._hqh = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@hq = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@MPOOL_PINNED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpool_delete(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._hqh*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 -8
  %9 = bitcast i8* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct._hqh*, %struct._hqh** %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @HASHKEY(i32 %15)
  %17 = getelementptr inbounds %struct._hqh, %struct._hqh* %12, i64 %16
  store %struct._hqh* %17, %struct._hqh** %5, align 8
  %18 = load %struct._hqh*, %struct._hqh** %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load i32, i32* @hq, align 4
  %21 = call i32 @TAILQ_REMOVE(%struct._hqh* %18, %struct.TYPE_7__* %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = load i32, i32* @q, align 4
  %26 = call i32 @TAILQ_REMOVE(%struct._hqh* %23, %struct.TYPE_7__* %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = call i32 @free(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @RET_SUCCESS, align 4
  ret i32 %33
}

declare dso_local i64 @HASHKEY(i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct._hqh*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
