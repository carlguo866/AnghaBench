; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_sync_wait_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_sync_wait_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_cluster_connection = type { %struct.ocfs2_live_connection* }
%struct.ocfs2_live_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sync_wait_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_wait_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ocfs2_cluster_connection*, align 8
  %4 = alloca %struct.ocfs2_live_connection*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ocfs2_cluster_connection*
  store %struct.ocfs2_cluster_connection* %6, %struct.ocfs2_cluster_connection** %3, align 8
  %7 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %7, i32 0, i32 0
  %9 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %8, align 8
  store %struct.ocfs2_live_connection* %9, %struct.ocfs2_live_connection** %4, align 8
  %10 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %4, align 8
  %11 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %10, i32 0, i32 0
  %12 = call i32 @complete(i32* %11)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
