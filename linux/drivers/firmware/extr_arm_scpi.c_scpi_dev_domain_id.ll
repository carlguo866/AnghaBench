; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dev_domain_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dev_domain_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @scpi_dev_domain_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_dev_domain_id(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.of_phandle_args, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @of_parse_phandle_with_args(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %4, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @of_parse_phandle_with_args(i32, i8*, i8*, i32, %struct.of_phandle_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
