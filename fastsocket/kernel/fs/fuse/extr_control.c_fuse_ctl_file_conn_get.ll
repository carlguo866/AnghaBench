; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_file_conn_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_file_conn_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.file = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.fuse_conn* }

@fuse_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fuse_conn* (%struct.file*)* @fuse_ctl_file_conn_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fuse_conn* @fuse_ctl_file_conn_get(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.fuse_conn*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = call i32 @mutex_lock(i32* @fuse_mutex)
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  store %struct.fuse_conn* %12, %struct.fuse_conn** %3, align 8
  %13 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %14 = icmp ne %struct.fuse_conn* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %17 = call %struct.fuse_conn* @fuse_conn_get(%struct.fuse_conn* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %3, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = call i32 @mutex_unlock(i32* @fuse_mutex)
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  ret %struct.fuse_conn* %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fuse_conn* @fuse_conn_get(%struct.fuse_conn*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
