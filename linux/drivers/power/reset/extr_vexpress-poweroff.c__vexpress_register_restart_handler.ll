; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_vexpress-poweroff.c__vexpress_register_restart_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_vexpress-poweroff.c__vexpress_register_restart_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@vexpress_restart_device = common dso_local global %struct.device* null, align 8
@vexpress_restart_nb_refcnt = common dso_local global i32 0, align 4
@vexpress_restart_nb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@dev_attr_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @_vexpress_register_restart_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vexpress_register_restart_handler(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  store %struct.device* %5, %struct.device** @vexpress_restart_device, align 8
  %6 = call i32 @atomic_inc_return(i32* @vexpress_restart_nb_refcnt)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = call i32 @register_restart_handler(i32* @vexpress_restart_nb)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @atomic_dec(i32* @vexpress_restart_nb_refcnt)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_create_file(%struct.device* %20, i32* @dev_attr_active)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @register_restart_handler(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
