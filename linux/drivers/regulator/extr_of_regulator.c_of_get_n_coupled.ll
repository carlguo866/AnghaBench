; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_get_n_coupled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_get_n_coupled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"regulator-coupled-with\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_get_n_coupled(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device_node*, %struct.device_node** %7, align 8
  store %struct.device_node* %8, %struct.device_node** %3, align 8
  %9 = load %struct.device_node*, %struct.device_node** %3, align 8
  %10 = call i32 @of_count_phandle_with_args(%struct.device_node* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  ret i32 %17
}

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
