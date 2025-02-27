; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_sclhi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-bit.c_sclhi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_bit_data = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_bit_data*)* @sclhi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclhi(%struct.i2c_algo_bit_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_algo_bit_data*, align 8
  %4 = alloca i64, align 8
  store %struct.i2c_algo_bit_data* %0, %struct.i2c_algo_bit_data** %3, align 8
  %5 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %6 = call i32 @setscl(%struct.i2c_algo_bit_data* %5, i32 1)
  %7 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %31, %12
  %15 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %16 = call i32 @getscl(%struct.i2c_algo_bit_data* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = call i64 @time_after(i64 %20, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %39

31:                                               ; preds = %19
  %32 = call i32 (...) @cond_resched()
  br label %14

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %11
  %35 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @udelay(i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @setscl(%struct.i2c_algo_bit_data*, i32) #1

declare dso_local i32 @getscl(%struct.i2c_algo_bit_data*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
