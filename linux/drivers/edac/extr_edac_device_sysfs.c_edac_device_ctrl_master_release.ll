; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_ctrl_master_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device_sysfs.c_edac_device_ctrl_master_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.edac_device_ctl_info = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"control index=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobject*)* @edac_device_ctrl_master_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_device_ctrl_master_release(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %4 = load %struct.kobject*, %struct.kobject** %2, align 8
  %5 = call %struct.edac_device_ctl_info* @to_edacdev(%struct.kobject* %4)
  store %struct.edac_device_ctl_info* %5, %struct.edac_device_ctl_info** %3, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @edac_dbg(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %11 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @module_put(i32 %12)
  %14 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %15 = call i32 @kfree(%struct.edac_device_ctl_info* %14)
  ret void
}

declare dso_local %struct.edac_device_ctl_info* @to_edacdev(%struct.kobject*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
