; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ti-cpufreq.c_ti_cpufreq_setup_syscon_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ti-cpufreq.c_ti_cpufreq_setup_syscon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_cpufreq_data = type { i32, %struct.device_node*, %struct.device* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\22syscon\22 is missing, cannot use OPPv2 table.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_cpufreq_data*)* @ti_cpufreq_setup_syscon_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_cpufreq_setup_syscon_register(%struct.ti_cpufreq_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_cpufreq_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.ti_cpufreq_data* %0, %struct.ti_cpufreq_data** %3, align 8
  %6 = load %struct.ti_cpufreq_data*, %struct.ti_cpufreq_data** %3, align 8
  %7 = getelementptr inbounds %struct.ti_cpufreq_data, %struct.ti_cpufreq_data* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ti_cpufreq_data*, %struct.ti_cpufreq_data** %3, align 8
  %10 = getelementptr inbounds %struct.ti_cpufreq_data, %struct.ti_cpufreq_data* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ti_cpufreq_data*, %struct.ti_cpufreq_data** %3, align 8
  %15 = getelementptr inbounds %struct.ti_cpufreq_data, %struct.ti_cpufreq_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ti_cpufreq_data*, %struct.ti_cpufreq_data** %3, align 8
  %17 = getelementptr inbounds %struct.ti_cpufreq_data, %struct.ti_cpufreq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.ti_cpufreq_data*, %struct.ti_cpufreq_data** %3, align 8
  %25 = getelementptr inbounds %struct.ti_cpufreq_data, %struct.ti_cpufreq_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
