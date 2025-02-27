; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kxtj9_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (...)* }

@kxtj9_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @kxtj9_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxtj9_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.kxtj9_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.kxtj9_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.kxtj9_data* %5, %struct.kxtj9_data** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @sysfs_remove_group(i32* %13, i32* @kxtj9_attribute_group)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %19 = call i32 @free_irq(i64 %17, %struct.kxtj9_data* %18)
  %20 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %21 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @input_unregister_device(i32 %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %26 = call i32 @kxtj9_teardown_polled_device(%struct.kxtj9_data* %25)
  br label %27

27:                                               ; preds = %24, %10
  %28 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %29 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = icmp ne i32 (...)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %35 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32 (...)*, i32 (...)** %36, align 8
  %38 = call i32 (...) %37()
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.kxtj9_data*, %struct.kxtj9_data** %3, align 8
  %41 = call i32 @kfree(%struct.kxtj9_data* %40)
  ret i32 0
}

declare dso_local %struct.kxtj9_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @free_irq(i64, %struct.kxtj9_data*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kxtj9_teardown_polled_device(%struct.kxtj9_data*) #1

declare dso_local i32 @kfree(%struct.kxtj9_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
