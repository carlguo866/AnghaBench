; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_get_lu_wp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_get_lu_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UFS_UPIU_MAX_GENERAL_LUN = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@UNIT_DESC_PARAM_LU_WR_PROTECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i64, i64*)* @ufshcd_get_lu_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_get_lu_wp(%struct.ufs_hba* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64*, i64** %6, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  br label %27

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @UFS_UPIU_MAX_GENERAL_LUN, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @UNIT_DESC_PARAM_LU_WR_PROTECT, align 4
  %24 = load i64*, i64** %6, align 8
  %25 = call i32 @ufshcd_read_unit_desc_param(%struct.ufs_hba* %21, i64 %22, i32 %23, i64* %24, i32 8)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %20, %17
  br label %27

27:                                               ; preds = %26, %10
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @ufshcd_read_unit_desc_param(%struct.ufs_hba*, i64, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
