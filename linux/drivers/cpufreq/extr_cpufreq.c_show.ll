; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.freq_attr = type { i32 (%struct.cpufreq_policy.0*, i8*)* }
%struct.cpufreq_policy.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpufreq_policy*, align 8
  %8 = alloca %struct.freq_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.kobject*, %struct.kobject** %4, align 8
  %11 = call %struct.cpufreq_policy* @to_policy(%struct.kobject* %10)
  store %struct.cpufreq_policy* %11, %struct.cpufreq_policy** %7, align 8
  %12 = load %struct.attribute*, %struct.attribute** %5, align 8
  %13 = call %struct.freq_attr* @to_attr(%struct.attribute* %12)
  store %struct.freq_attr* %13, %struct.freq_attr** %8, align 8
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.freq_attr*, %struct.freq_attr** %8, align 8
  %18 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %17, i32 0, i32 0
  %19 = load i32 (%struct.cpufreq_policy.0*, i8*)*, i32 (%struct.cpufreq_policy.0*, i8*)** %18, align 8
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %21 = bitcast %struct.cpufreq_policy* %20 to %struct.cpufreq_policy.0*
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 %19(%struct.cpufreq_policy.0* %21, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %7, align 8
  %25 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

declare dso_local %struct.cpufreq_policy* @to_policy(%struct.kobject*) #1

declare dso_local %struct.freq_attr* @to_attr(%struct.attribute*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
