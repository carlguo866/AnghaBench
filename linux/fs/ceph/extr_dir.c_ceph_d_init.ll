; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.ceph_dentry_info* }
%struct.ceph_dentry_info = type { i32, i32, i32*, %struct.dentry* }

@ceph_dentry_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @ceph_d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_d_init(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load i32, i32* @ceph_dentry_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ceph_dentry_info* @kmem_cache_zalloc(i32 %5, i32 %6)
  store %struct.ceph_dentry_info* %7, %struct.ceph_dentry_info** %4, align 8
  %8 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %9 = icmp ne %struct.ceph_dentry_info* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %15, i32 0, i32 3
  store %struct.dentry* %14, %struct.dentry** %16, align 8
  %17 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @jiffies, align 4
  %20 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  store %struct.ceph_dentry_info* %22, %struct.ceph_dentry_info** %24, align 8
  %25 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %13, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.ceph_dentry_info* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
