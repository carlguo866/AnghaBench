; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_main.c_wil_mem_access_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_main.c_wil_mem_access_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@wil_status_suspending = common dso_local global i32 0, align 4
@wil_status_suspended = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_mem_access_lock(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %5 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %4, i32 0, i32 0
  %6 = call i32 @down_read_trylock(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @wil_status_suspending, align 4
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @wil_status_suspended, align 4
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18, %11
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %27 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %26, i32 0, i32 0
  %28 = call i32 @up_read(i32* %27)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
