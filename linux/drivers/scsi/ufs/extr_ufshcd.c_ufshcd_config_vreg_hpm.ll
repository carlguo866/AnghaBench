; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_config_vreg_hpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_config_vreg_hpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_vreg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, %struct.ufs_vreg*)* @ufshcd_config_vreg_hpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufshcd_config_vreg_hpm(%struct.ufs_hba* %0, %struct.ufs_vreg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca %struct.ufs_vreg*, align 8
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store %struct.ufs_vreg* %1, %struct.ufs_vreg** %5, align 8
  %6 = load %struct.ufs_vreg*, %struct.ufs_vreg** %5, align 8
  %7 = icmp ne %struct.ufs_vreg* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

9:                                                ; preds = %2
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %11 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ufs_vreg*, %struct.ufs_vreg** %5, align 8
  %14 = load %struct.ufs_vreg*, %struct.ufs_vreg** %5, align 8
  %15 = getelementptr inbounds %struct.ufs_vreg, %struct.ufs_vreg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ufshcd_config_vreg_load(i32 %12, %struct.ufs_vreg* %13, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %9, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @ufshcd_config_vreg_load(i32, %struct.ufs_vreg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
