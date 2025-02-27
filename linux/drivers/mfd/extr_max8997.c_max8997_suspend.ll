; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max8997_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @max8997_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.max8997_dev* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.max8997_dev* %8, %struct.max8997_dev** %4, align 8
  %9 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %10 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @disable_irq(i32 %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i64 @device_may_wakeup(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %18 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @irq_set_irq_wake(i32 %19, i32 1)
  br label %21

21:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max8997_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i64 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
