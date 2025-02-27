; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32 }
%struct.i2c_msg = type { i32, %struct.i2c_msg*, i64, i32 }
%struct.i2c_client = type { i32, i32 }

@bq2415x_i2c_mutex = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, %struct.i2c_msg*, %struct.i2c_msg*)* @bq2415x_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_i2c_write(%struct.bq2415x_device* %0, %struct.i2c_msg* byval(%struct.i2c_msg) align 8 %1, %struct.i2c_msg* byval(%struct.i2c_msg) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bq2415x_device*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [1 x %struct.i2c_msg], align 16
  %8 = alloca [2 x %struct.i2c_msg], align 16
  %9 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %5, align 8
  %10 = load %struct.bq2415x_device*, %struct.bq2415x_device** %5, align 8
  %11 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i2c_client* @to_i2c_client(i32 %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %15 = bitcast %struct.i2c_msg* %14 to i8*
  %16 = bitcast %struct.i2c_msg* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 8 %16, i64 32, i1 false)
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 1
  %18 = bitcast %struct.i2c_msg* %17 to i8*
  %19 = bitcast %struct.i2c_msg* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %7, i64 0, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  store i64 0, i64* %26, align 16
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %7, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  store %struct.i2c_msg* %27, %struct.i2c_msg** %29, align 8
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %8, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %30)
  %32 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %7, i64 0, i64 0
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 16
  %34 = call i32 @mutex_lock(i32* @bq2415x_i2c_mutex)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %7, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %39)
  %41 = call i32 @i2c_transfer(i32 %37, %struct.i2c_msg* %38, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = call i32 @mutex_unlock(i32* @bq2415x_i2c_mutex)
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %50, %45
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
