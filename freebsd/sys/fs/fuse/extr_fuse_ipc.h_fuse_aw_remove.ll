; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fuse_aw_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fuse_aw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@tk_aw_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_ticket*)* @fuse_aw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_aw_remove(%struct.fuse_ticket* %0) #0 {
  %2 = alloca %struct.fuse_ticket*, align 8
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %2, align 8
  %3 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %4 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %10 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.fuse_ticket*, %struct.fuse_ticket** %2, align 8
  %14 = load i32, i32* @tk_aw_link, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* %12, %struct.fuse_ticket* %13, i32 %14)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.fuse_ticket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
