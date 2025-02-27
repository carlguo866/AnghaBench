; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_set_tcnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_set_tcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { i32, i64 }

@MAX_THREADS_CNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ctx*, i64)* @perf_set_tcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_set_tcnt(%struct.perf_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_ctx*, align 8
  %5 = alloca i64, align 8
  store %struct.perf_ctx* %0, %struct.perf_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @MAX_THREADS_CNT, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %8
  %16 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %16, i32 0, i32 0
  %18 = call i64 @test_and_set_bit_lock(i32 0, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %27, i32 0, i32 0
  %29 = call i32 @clear_bit_unlock(i32 0, i32* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %20, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
