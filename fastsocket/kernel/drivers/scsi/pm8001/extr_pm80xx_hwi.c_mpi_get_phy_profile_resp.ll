; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_get_phy_profile_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_get_phy_profile_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c" pm80xx_addition_functionality\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_get_phy_profile_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_get_phy_profile_resp(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %6 = call i32 @pm8001_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %5, i32 %6)
  ret i32 0
}

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
