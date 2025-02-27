; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acerhdf.c_acerhdf_revert_to_bios_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acerhdf.c_acerhdf_revert_to_bios_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ACERHDF_FAN_AUTO = common dso_local global i32 0, align 4
@kernelmode = common dso_local global i64 0, align 8
@thz_dev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"kernel mode fan control OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acerhdf_revert_to_bios_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acerhdf_revert_to_bios_mode() #0 {
  %1 = load i32, i32* @ACERHDF_FAN_AUTO, align 4
  %2 = call i32 @acerhdf_change_fanstate(i32 %1)
  store i64 0, i64* @kernelmode, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thz_dev, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thz_dev, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 @pr_notice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @acerhdf_change_fanstate(i32) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
