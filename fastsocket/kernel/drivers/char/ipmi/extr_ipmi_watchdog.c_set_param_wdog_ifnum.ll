; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_set_param_wdog_ifnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_set_param_wdog_ifnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@ifnum_to_use = common dso_local global i64 0, align 8
@watchdog_ifnum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @set_param_wdog_ifnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_param_wdog_ifnum(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %9 = call i32 @param_set_int(i8* %7, %struct.kernel_param* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i64, i64* @ifnum_to_use, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @ifnum_to_use, align 8
  %19 = load i64, i64* @watchdog_ifnum, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  store i32 0, i32* %3, align 4
  br label %27

22:                                               ; preds = %17
  %23 = load i64, i64* @watchdog_ifnum, align 8
  %24 = call i32 @ipmi_unregister_watchdog(i64 %23)
  %25 = load i64, i64* @ifnum_to_use, align 8
  %26 = call i32 @ipmi_register_watchdog(i64 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %21, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @param_set_int(i8*, %struct.kernel_param*) #1

declare dso_local i32 @ipmi_unregister_watchdog(i64) #1

declare dso_local i32 @ipmi_register_watchdog(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
