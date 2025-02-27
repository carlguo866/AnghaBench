; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_arm-cci.c_cci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_arm-cci.c_cci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cci_init_status = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@cci_probing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cci_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cci_init_status, align 4
  %3 = load i32, i32* @EAGAIN, align 4
  %4 = sub nsw i32 0, %3
  %5 = icmp ne i32 %2, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @cci_init_status, align 4
  store i32 %7, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = call i32 @mutex_lock(i32* @cci_probing)
  %10 = load i32, i32* @cci_init_status, align 4
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @cci_probe()
  store i32 %15, i32* @cci_init_status, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = call i32 @mutex_unlock(i32* @cci_probing)
  %18 = load i32, i32* @cci_init_status, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %6
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cci_probe(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
