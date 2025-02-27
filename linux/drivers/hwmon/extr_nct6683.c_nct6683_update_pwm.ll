; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_update_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_update_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct6683_data = type { i32, i32* }

@NCT6683_NUM_REG_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @nct6683_update_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6683_update_pwm(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nct6683_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.nct6683_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.nct6683_data* %6, %struct.nct6683_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NCT6683_NUM_REG_PWM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %13 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @NCT6683_REG_PWM(i32 %22)
  %24 = call i32 @nct6683_read(%struct.nct6683_data* %21, i32 %23)
  %25 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %26 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  br label %31

31:                                               ; preds = %20, %19
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %7

34:                                               ; preds = %7
  ret void
}

declare dso_local %struct.nct6683_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nct6683_read(%struct.nct6683_data*, i32) #1

declare dso_local i32 @NCT6683_REG_PWM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
