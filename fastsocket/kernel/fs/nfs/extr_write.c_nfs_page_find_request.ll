; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_page_find_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_page_find_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.page*)* @nfs_page_find_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_page_find_request(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %3, align 8
  store %struct.nfs_page* null, %struct.nfs_page** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call %struct.nfs_page* @nfs_page_find_request_locked(%struct.page* %13)
  store %struct.nfs_page* %14, %struct.nfs_page** %4, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  ret %struct.nfs_page* %18
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_request_locked(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
