; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_cleanup_ipmi_ssif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_cleanup_ipmi_ssif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@initialized = common dso_local global i32 0, align 4
@ssif_i2c_driver = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ssif_trydmi = common dso_local global i64 0, align 8
@platform_registered = common dso_local global i64 0, align 8
@ipmi_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_ipmi_ssif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_ipmi_ssif() #0 {
  %1 = load i32, i32* @initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  store i32 0, i32* @initialized, align 4
  %5 = call i32 @i2c_del_driver(%struct.TYPE_3__* @ssif_i2c_driver)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ssif_i2c_driver, i32 0, i32 0), align 4
  %7 = call i32 @kfree(i32 %6)
  %8 = load i64, i64* @ssif_trydmi, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load i64, i64* @platform_registered, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @platform_driver_unregister(i32* @ipmi_driver)
  br label %15

15:                                               ; preds = %13, %10, %4
  %16 = call i32 (...) @free_ssif_clients()
  br label %17

17:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @i2c_del_driver(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @platform_driver_unregister(i32*) #1

declare dso_local i32 @free_ssif_clients(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
