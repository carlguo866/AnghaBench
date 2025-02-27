; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_update_fw_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_raydium_i2c_ts.c_raydium_i2c_update_fw_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.raydium_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @raydium_i2c_update_fw_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raydium_i2c_update_fw_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.raydium_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %16 = call %struct.raydium_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.raydium_data* %16, %struct.raydium_data** %11, align 8
  %17 = load %struct.raydium_data*, %struct.raydium_data** %11, align 8
  %18 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock_interruptible(i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load %struct.raydium_data*, %struct.raydium_data** %11, align 8
  %26 = call i32 @raydium_i2c_fw_update(%struct.raydium_data* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.raydium_data*, %struct.raydium_data** %11, align 8
  %28 = getelementptr inbounds %struct.raydium_data, %struct.raydium_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = sext i32 %30 to i64
  br label %36

34:                                               ; preds = %24
  %35 = load i64, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.raydium_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @raydium_i2c_fw_update(%struct.raydium_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
