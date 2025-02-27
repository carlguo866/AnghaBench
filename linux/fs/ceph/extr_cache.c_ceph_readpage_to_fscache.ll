; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_readpage_to_fscache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_cache.c_ceph_readpage_to_fscache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.ceph_inode_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_readpage_to_fscache(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %7)
  store %struct.ceph_inode_info* %8, %struct.ceph_inode_info** %5, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @PageFsCache(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %15 = call i32 @cache_valid(%struct.ceph_inode_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %35

18:                                               ; preds = %13
  %19 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %20 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @i_size_read(%struct.inode* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @fscache_write_page(i32 %21, %struct.page* %22, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %31 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = call i32 @fscache_uncache_page(i32 %32, %struct.page* %33)
  br label %35

35:                                               ; preds = %12, %17, %29, %18
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @PageFsCache(%struct.page*) #1

declare dso_local i32 @cache_valid(%struct.ceph_inode_info*) #1

declare dso_local i32 @fscache_write_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @fscache_uncache_page(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
