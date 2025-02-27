; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_insert_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_insert_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_insert_callback(%struct.fuse_ticket* %0, i32* %1) #0 {
  %3 = alloca %struct.fuse_ticket*, align 8
  %4 = alloca i32*, align 8
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i64 @fdata_get_dead(%struct.TYPE_2__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %14 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fuse_lck_mtx_lock(i32 %19)
  %21 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %22 = call i32 @fuse_aw_push(%struct.fuse_ticket* %21)
  %23 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %24 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fuse_lck_mtx_unlock(i32 %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @fdata_get_dead(%struct.TYPE_2__*) #1

declare dso_local i32 @fuse_lck_mtx_lock(i32) #1

declare dso_local i32 @fuse_aw_push(%struct.fuse_ticket*) #1

declare dso_local i32 @fuse_lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
