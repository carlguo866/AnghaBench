; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_zap_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_zap_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.address_space = type { i64 }
%struct.TYPE_2__ = type { i32 }

@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_zap_mapping(%struct.inode* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %5 = load %struct.address_space*, %struct.address_space** %4, align 8
  %6 = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.TYPE_2__* @NFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @nfs_fscache_invalidate(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  br label %24

24:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
