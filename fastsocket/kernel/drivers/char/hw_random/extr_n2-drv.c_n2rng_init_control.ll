; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_init_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_init_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*)* @n2rng_init_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_init_control(%struct.n2rng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.n2rng*, align 8
  %4 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %3, align 8
  %5 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %6 = call i32 @n2rng_grab_diag_control(%struct.n2rng* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EPERM, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %12
  %18 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %19 = call i32 @n2rng_control_swstate_init(%struct.n2rng* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %15, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @n2rng_grab_diag_control(%struct.n2rng*) #1

declare dso_local i32 @n2rng_control_swstate_init(%struct.n2rng*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
