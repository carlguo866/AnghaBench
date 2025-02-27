; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-s35390a.c_s35390a_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { %struct.i2c_client** }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*, i32, i8*, i32)* @s35390a_set_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_set_reg(%struct.s35390a* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s35390a*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.s35390a* %0, %struct.s35390a** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.s35390a*, %struct.s35390a** %6, align 8
  %13 = getelementptr inbounds %struct.s35390a, %struct.s35390a* %12, i32 0, i32 0
  %14 = load %struct.i2c_client**, %struct.i2c_client*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %14, i64 %16
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %32 = call i32 @i2c_transfer(i32 %30, %struct.i2c_msg* %31, i32 1)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
