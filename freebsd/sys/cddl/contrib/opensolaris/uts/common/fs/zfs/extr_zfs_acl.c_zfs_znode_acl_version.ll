; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_znode_acl_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_znode_acl_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ZFS_ACL_VERSION_FUID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_znode_acl_version(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ZFS_ACL_VERSION_FUID, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SA_ZPL_ZNODE_ACL(i32 %18)
  %20 = call i32 @sa_lookup(i32 %15, i32 %19, %struct.TYPE_6__* %4, i32 4)
  store i32 %20, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %12
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i1 [ false, %25 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36)
  %38 = load i32, i32* @ZFS_ACL_VERSION_FUID, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %22, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @sa_lookup(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @SA_ZPL_ZNODE_ACL(i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
