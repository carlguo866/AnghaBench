; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_iodelay.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/mptest/extr_vhba_mptest.c_vhba_iodelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.ccb_hdr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@sim_links = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vhba_iodelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhba_iodelay(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ccb_hdr*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %6, %struct.ccb_hdr** %3, align 8
  %7 = load %struct.ccb_hdr*, %struct.ccb_hdr** %3, align 8
  %8 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load %struct.ccb_hdr*, %struct.ccb_hdr** %3, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %23 = call i32 @TAILQ_REMOVE(i32* %20, %struct.ccb_hdr* %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.ccb_hdr*, %struct.ccb_hdr** %3, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sim_links, i32 0, i32 0), align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.ccb_hdr* %28, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = call i32 @vhba_kick(%struct.TYPE_9__* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i32 @mtx_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @vhba_kick(%struct.TYPE_9__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
