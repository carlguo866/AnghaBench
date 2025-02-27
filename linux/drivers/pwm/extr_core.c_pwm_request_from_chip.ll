; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_request_from_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_request_from_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_device = type { i32 }
%struct.pwm_chip = type { i32, %struct.pwm_device* }

@EINVAL = common dso_local global i32 0, align 4
@pwm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pwm_device* @pwm_request_from_chip(%struct.pwm_chip* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pwm_device*, align 8
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %11 = icmp ne %struct.pwm_chip* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %15 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.pwm_device* @ERR_PTR(i32 %20)
  store %struct.pwm_device* %21, %struct.pwm_device** %4, align 8
  br label %41

22:                                               ; preds = %12
  %23 = call i32 @mutex_lock(i32* @pwm_lock)
  %24 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %24, i32 0, i32 1
  %26 = load %struct.pwm_device*, %struct.pwm_device** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i64 %28
  store %struct.pwm_device* %29, %struct.pwm_device** %8, align 8
  %30 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @pwm_device_request(%struct.pwm_device* %30, i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.pwm_device* @ERR_PTR(i32 %36)
  store %struct.pwm_device* %37, %struct.pwm_device** %8, align 8
  br label %38

38:                                               ; preds = %35, %22
  %39 = call i32 @mutex_unlock(i32* @pwm_lock)
  %40 = load %struct.pwm_device*, %struct.pwm_device** %8, align 8
  store %struct.pwm_device* %40, %struct.pwm_device** %4, align 8
  br label %41

41:                                               ; preds = %38, %18
  %42 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  ret %struct.pwm_device* %42
}

declare dso_local %struct.pwm_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_device_request(%struct.pwm_device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
