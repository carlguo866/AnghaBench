; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_schedule_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_chainiv.c_async_chainiv_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_chainiv_ctx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CHAINIV_STATE_INUSE = common dso_local global i32 0, align 4
@kcrypto_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.async_chainiv_ctx*)* @async_chainiv_schedule_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_chainiv_schedule_work(%struct.async_chainiv_ctx* %0) #0 {
  %2 = alloca %struct.async_chainiv_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.async_chainiv_ctx* %0, %struct.async_chainiv_ctx** %2, align 8
  %5 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @smp_mb__before_clear_bit()
  %15 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %16 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %16, i32 0, i32 2
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32, i32* @CHAINIV_STATE_INUSE, align 4
  %26 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %26, i32 0, i32 2
  %28 = call i64 @test_and_set_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %13
  br label %42

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* @kcrypto_wq, align 4
  %34 = load %struct.async_chainiv_ctx*, %struct.async_chainiv_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.async_chainiv_ctx, %struct.async_chainiv_ctx* %34, i32 0, i32 1
  %36 = call i32 @queue_work(i32 %33, i32* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  br label %42

42:                                               ; preds = %32, %30
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
