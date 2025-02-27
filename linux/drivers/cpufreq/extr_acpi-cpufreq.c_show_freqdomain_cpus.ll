; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_show_freqdomain_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_acpi-cpufreq.c_show_freqdomain_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.acpi_cpufreq_data* }
%struct.acpi_cpufreq_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i8*)* @show_freqdomain_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_freqdomain_cpus(%struct.cpufreq_policy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_cpufreq_data*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %8, align 8
  store %struct.acpi_cpufreq_data* %9, %struct.acpi_cpufreq_data** %6, align 8
  %10 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %11 = icmp ne %struct.acpi_cpufreq_data* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.acpi_cpufreq_data*, %struct.acpi_cpufreq_data** %6, align 8
  %21 = getelementptr inbounds %struct.acpi_cpufreq_data, %struct.acpi_cpufreq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @cpufreq_show_cpus(i32 %22, i8* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpufreq_show_cpus(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
