; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_device.c_of_device_uevent_modalias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_device.c_of_device_uevent_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_device_uevent_modalias(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %9
  %18 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %19 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %27 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %30 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %36 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @of_device_get_modalias(%struct.device* %25, i32* %34, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %45 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = sub i64 8, %47
  %49 = icmp uge i64 %43, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %24
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %24
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %56 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %50, %21, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*) #1

declare dso_local i32 @of_device_get_modalias(%struct.device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
