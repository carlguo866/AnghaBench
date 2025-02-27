; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_data_get_ftype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_dir3_data_get_ftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_data_entry = type { i64*, i64 }

@XFS_DIR3_FT_MAX = common dso_local global i64 0, align 8
@XFS_DIR3_FT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xfs_dir2_data_entry*)* @xfs_dir3_data_get_ftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xfs_dir3_data_get_ftype(%struct.xfs_dir2_data_entry* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfs_dir2_data_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.xfs_dir2_data_entry* %0, %struct.xfs_dir2_data_entry** %3, align 8
  %5 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load %struct.xfs_dir2_data_entry*, %struct.xfs_dir2_data_entry** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_dir2_data_entry, %struct.xfs_dir2_data_entry* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i64, i64* %7, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @XFS_DIR3_FT_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @XFS_DIR3_FT_UNKNOWN, align 8
  store i64 %17, i64* %2, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
