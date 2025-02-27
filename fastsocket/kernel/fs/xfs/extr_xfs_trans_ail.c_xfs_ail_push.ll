; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_ail_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_trans_ail.c_xfs_ail_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_ail_push(%struct.xfs_ail* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_ail*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %7 = call i32* @xfs_ail_min(%struct.xfs_ail* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @XFS_FORCED_SHUTDOWN(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @XFS_LSN_CMP(i32 %17, i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @xfsaild_wakeup(%struct.xfs_ail* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  br label %28

28:                                               ; preds = %27, %10, %2
  ret void
}

declare dso_local i32* @xfs_ail_min(%struct.xfs_ail*) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i64 @XFS_LSN_CMP(i32, i32) #1

declare dso_local i32 @xfsaild_wakeup(%struct.xfs_ail*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
