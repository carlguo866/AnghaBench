; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_of_get_trip_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_of_get_trip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@trip_types = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32*)* @thermal_of_get_trip_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_of_get_trip_type(%struct.device_node* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = call i32 @of_property_read_string(%struct.device_node* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** @trip_types, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** @trip_types, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcasecmp(i8* %22, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %40

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %30, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
