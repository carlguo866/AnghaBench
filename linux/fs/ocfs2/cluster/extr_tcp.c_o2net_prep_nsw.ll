; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_prep_nsw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_prep_nsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_node = type { i32, i32, i32 }
%struct.o2net_status_wait = type { i32, i64, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@O2NET_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_node*, %struct.o2net_status_wait*)* @o2net_prep_nsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_prep_nsw(%struct.o2net_node* %0, %struct.o2net_status_wait* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.o2net_node*, align 8
  %5 = alloca %struct.o2net_status_wait*, align 8
  %6 = alloca i32, align 4
  store %struct.o2net_node* %0, %struct.o2net_node** %4, align 8
  store %struct.o2net_status_wait* %1, %struct.o2net_status_wait** %5, align 8
  %7 = load %struct.o2net_node*, %struct.o2net_node** %4, align 8
  %8 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.o2net_node*, %struct.o2net_node** %4, align 8
  %11 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %10, i32 0, i32 2
  %12 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %5, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i32 @idr_alloc(i32* %11, %struct.o2net_status_wait* %12, i32 0, i32 0, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %5, align 8
  %20 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %5, align 8
  %22 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %21, i32 0, i32 4
  %23 = load %struct.o2net_node*, %struct.o2net_node** %4, align 8
  %24 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  br label %26

26:                                               ; preds = %17, %2
  %27 = load %struct.o2net_node*, %struct.o2net_node** %4, align 8
  %28 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %5, align 8
  %36 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %35, i32 0, i32 3
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load i32, i32* @O2NET_ERR_NONE, align 4
  %39 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %5, align 8
  %40 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %5, align 8
  %42 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %32
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.o2net_status_wait*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
