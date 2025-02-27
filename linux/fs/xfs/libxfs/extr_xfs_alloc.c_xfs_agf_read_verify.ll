; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agf_read_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agf_read_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_AGF_CRC_OFF = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32 0, align 4
@XFS_ERRTAG_ALLOC_READ_AGF = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_buf*)* @xfs_agf_read_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_agf_read_verify(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 0
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %8, i32 0, i32 0
  %10 = call i64 @xfs_sb_version_hascrc(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = load i32, i32* @XFS_AGF_CRC_OFF, align 4
  %15 = call i32 @xfs_buf_verify_cksum(%struct.xfs_buf* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %19 = load i32, i32* @EFSBADCRC, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32, i32* @__this_address, align 4
  %22 = call i32 @xfs_verifier_error(%struct.xfs_buf* %18, i32 %20, i32 %21)
  br label %38

23:                                               ; preds = %12, %1
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %25 = call i32 @xfs_agf_verify(%struct.xfs_buf* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %28 = load i32, i32* @XFS_ERRTAG_ALLOC_READ_AGF, align 4
  %29 = call i64 @XFS_TEST_ERROR(i32 %26, %struct.xfs_mount* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %33 = load i32, i32* @EFSCORRUPTED, align 4
  %34 = sub nsw i32 0, %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @xfs_verifier_error(%struct.xfs_buf* %32, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37, %17
  ret void
}

declare dso_local i64 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @xfs_buf_verify_cksum(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_verifier_error(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_agf_verify(%struct.xfs_buf*) #1

declare dso_local i64 @XFS_TEST_ERROR(i32, %struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
