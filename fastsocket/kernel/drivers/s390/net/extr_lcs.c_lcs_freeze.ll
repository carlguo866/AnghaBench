; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwgroup_device = type { i32 }
%struct.lcs_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwgroup_device*)* @lcs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_freeze(%struct.ccwgroup_device* %0) #0 {
  %2 = alloca %struct.ccwgroup_device*, align 8
  %3 = alloca %struct.lcs_card*, align 8
  store %struct.ccwgroup_device* %0, %struct.ccwgroup_device** %2, align 8
  %4 = load %struct.ccwgroup_device*, %struct.ccwgroup_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccwgroup_device, %struct.ccwgroup_device* %4, i32 0, i32 0
  %6 = call %struct.lcs_card* @dev_get_drvdata(i32* %5)
  store %struct.lcs_card* %6, %struct.lcs_card** %3, align 8
  %7 = load %struct.lcs_card*, %struct.lcs_card** %3, align 8
  %8 = call i32 @lcs_pm_suspend(%struct.lcs_card* %7)
  ret i32 %8
}

declare dso_local %struct.lcs_card* @dev_get_drvdata(i32*) #1

declare dso_local i32 @lcs_pm_suspend(%struct.lcs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
