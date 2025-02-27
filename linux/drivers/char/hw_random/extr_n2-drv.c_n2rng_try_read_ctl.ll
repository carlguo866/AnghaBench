; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_try_read_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_try_read_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { i32 }

@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*)* @n2rng_try_read_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_try_read_ctl(%struct.n2rng* %0) #0 {
  %2 = alloca %struct.n2rng*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.n2rng* %0, %struct.n2rng** %2, align 8
  %5 = load %struct.n2rng*, %struct.n2rng** %2, align 8
  %6 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i64 (...) @sun4v_rng_get_diag_ctl()
  store i64 %10, i64* %3, align 8
  br label %18

11:                                               ; preds = %1
  %12 = call i64 @sun4v_rng_ctl_read_v2(i64 0, i64 -1, i64* %4, i64* %4, i64* %4, i64* %4)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  switch i64 %13, label %15 [
    i64 128, label %14
    i64 129, label %14
  ]

14:                                               ; preds = %11, %11
  br label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @HV_EOK, align 8
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %15, %14
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @n2rng_hv_err_trans(i64 %19)
  ret i32 %20
}

declare dso_local i64 @sun4v_rng_get_diag_ctl(...) #1

declare dso_local i64 @sun4v_rng_ctl_read_v2(i64, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @n2rng_hv_err_trans(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
