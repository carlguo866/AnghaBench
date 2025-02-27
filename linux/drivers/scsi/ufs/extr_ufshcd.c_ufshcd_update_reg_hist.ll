; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_update_reg_hist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_update_reg_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_err_reg_hist = type { i64, i32*, i32* }

@UFS_ERR_REG_HIST_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_err_reg_hist*, i32)* @ufshcd_update_reg_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufshcd_update_reg_hist(%struct.ufs_err_reg_hist* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_err_reg_hist*, align 8
  %4 = alloca i32, align 4
  store %struct.ufs_err_reg_hist* %0, %struct.ufs_err_reg_hist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %3, align 8
  %7 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %3, align 8
  %10 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  store i32 %5, i32* %12, align 4
  %13 = call i32 (...) @ktime_get()
  %14 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %3, align 8
  %15 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %3, align 8
  %18 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %13, i32* %20, align 4
  %21 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %3, align 8
  %22 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  %25 = load i32, i32* @UFS_ERR_REG_HIST_LENGTH, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %24, %26
  %28 = load %struct.ufs_err_reg_hist*, %struct.ufs_err_reg_hist** %3, align 8
  %29 = getelementptr inbounds %struct.ufs_err_reg_hist, %struct.ufs_err_reg_hist* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  ret void
}

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
