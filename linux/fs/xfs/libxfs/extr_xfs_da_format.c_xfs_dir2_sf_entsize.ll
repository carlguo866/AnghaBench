; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_sf_entsize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir2_sf_entsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_sf_hdr = type { i64 }

@XFS_INO64_SIZE = common dso_local global i64 0, align 8
@XFS_INO32_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_dir2_sf_hdr*, i32)* @xfs_dir2_sf_entsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_sf_entsize(%struct.xfs_dir2_sf_hdr* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_dir2_sf_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xfs_dir2_sf_hdr* %0, %struct.xfs_dir2_sf_hdr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, %6
  store i32 %8, i32* %5, align 4
  %9 = load %struct.xfs_dir2_sf_hdr*, %struct.xfs_dir2_sf_hdr** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_dir2_sf_hdr, %struct.xfs_dir2_sf_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @XFS_INO64_SIZE, align 8
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @XFS_INO32_SIZE, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
