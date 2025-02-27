; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/control/extr_control.c_xen_pv_shutdown_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/control/extr_control.c_xen_pv_shutdown_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RB_HALT = common dso_local global i32 0, align 4
@RB_POWEROFF = common dso_local global i32 0, align 4
@SHUTDOWN_poweroff = common dso_local global i32 0, align 4
@SHUTDOWN_reboot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @xen_pv_shutdown_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pv_shutdown_final(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RB_HALT, align 4
  %7 = load i32, i32* @RB_POWEROFF, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @SHUTDOWN_poweroff, align 4
  %13 = call i32 @HYPERVISOR_shutdown(i32 %12)
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @SHUTDOWN_reboot, align 4
  %16 = call i32 @HYPERVISOR_shutdown(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @HYPERVISOR_shutdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
