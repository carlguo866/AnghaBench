; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pv_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pv_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"pv_insert: no pv entries!\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@pv_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_8__*)* @pv_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pv_insert(i32 %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = call %struct.TYPE_9__* (...) @pv_alloc()
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @PMAP_LOCK_ASSERT(i32 %20, i32 %21)
  %23 = load i32, i32* @RA_WLOCKED, align 4
  %24 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = load i32, i32* @pv_link, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.TYPE_9__* %28, i32 %29)
  ret void
}

declare dso_local %struct.TYPE_9__* @pv_alloc(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
