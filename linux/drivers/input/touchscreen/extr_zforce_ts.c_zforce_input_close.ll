; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_input_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_zforce_ts.c_zforce_input_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.zforce_ts = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"stopping zforce failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @zforce_input_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zforce_input_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.zforce_ts*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %7 = call %struct.zforce_ts* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.zforce_ts* %7, %struct.zforce_ts** %3, align 8
  %8 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %9 = getelementptr inbounds %struct.zforce_ts, %struct.zforce_ts* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.zforce_ts*, %struct.zforce_ts** %3, align 8
  %12 = call i32 @zforce_stop(%struct.zforce_ts* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.zforce_ts* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @zforce_stop(%struct.zforce_ts*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
