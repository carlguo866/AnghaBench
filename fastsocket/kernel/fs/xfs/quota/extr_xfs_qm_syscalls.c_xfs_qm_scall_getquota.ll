; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_getquota.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_getquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_getquota(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @xfs_qm_dqget(i32* %12, i32* null, i32 %13, i32 %14, i32 0, %struct.TYPE_5__** %10)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = call i64 @XFS_IS_DQUOT_UNINITIALIZED(%struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = call i32 @xfs_qm_dqput(%struct.TYPE_5__* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = call i32 @XFS_ERROR(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %44

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @xfs_qm_export_dquot(i32* %29, i32* %31, i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = call i32 @xfs_qm_dqput(%struct.TYPE_5__* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EFAULT, align 4
  %40 = call i32 @XFS_ERROR(i32 %39)
  br label %42

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %23, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @xfs_qm_dqget(i32*, i32*, i32, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i64 @XFS_IS_DQUOT_UNINITIALIZED(%struct.TYPE_5__*) #1

declare dso_local i32 @xfs_qm_dqput(%struct.TYPE_5__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_qm_export_dquot(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
