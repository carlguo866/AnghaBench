; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_features_set_cptkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_features_set_cptkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.lenovo_drvdata_cptkbd = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Fn-lock setting failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Sensitivity setting failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @lenovo_features_set_cptkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lenovo_features_set_cptkbd(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lenovo_drvdata_cptkbd*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.lenovo_drvdata_cptkbd* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.lenovo_drvdata_cptkbd* %6, %struct.lenovo_drvdata_cptkbd** %4, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %8 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %4, align 8
  %9 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @lenovo_send_cmd_cptkbd(%struct.hid_device* %7, i32 5, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @hid_err(%struct.hid_device* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %20 = load %struct.lenovo_drvdata_cptkbd*, %struct.lenovo_drvdata_cptkbd** %4, align 8
  %21 = getelementptr inbounds %struct.lenovo_drvdata_cptkbd, %struct.lenovo_drvdata_cptkbd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lenovo_send_cmd_cptkbd(%struct.hid_device* %19, i32 2, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @hid_err(%struct.hid_device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.lenovo_drvdata_cptkbd* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @lenovo_send_cmd_cptkbd(%struct.hid_device*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
