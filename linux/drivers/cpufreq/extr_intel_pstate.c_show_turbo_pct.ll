; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_show_turbo_pct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_show_turbo_pct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@intel_pstate_driver_lock = common dso_local global i32 0, align 4
@intel_pstate_driver = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @show_turbo_pct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_turbo_pct(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpudata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call i32 @mutex_lock(i32* @intel_pstate_driver_lock)
  %14 = load i32, i32* @intel_pstate_driver, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = call i32 @mutex_unlock(i32* @intel_pstate_driver_lock)
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %22 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %21, i64 0
  %23 = load %struct.cpudata*, %struct.cpudata** %22, align 8
  store %struct.cpudata* %23, %struct.cpudata** %8, align 8
  %24 = load %struct.cpudata*, %struct.cpudata** %8, align 8
  %25 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cpudata*, %struct.cpudata** %8, align 8
  %29 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %27, %31
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.cpudata*, %struct.cpudata** %8, align 8
  %35 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cpudata*, %struct.cpudata** %8, align 8
  %39 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @div_fp(i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @int_tofp(i32 100)
  %49 = call i32 @mul_fp(i32 %47, i32 %48)
  %50 = call i32 @fp_toint(i32 %49)
  %51 = sub nsw i32 100, %50
  store i32 %51, i32* %11, align 4
  %52 = call i32 @mutex_unlock(i32* @intel_pstate_driver_lock)
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %20, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @div_fp(i32, i32) #1

declare dso_local i32 @fp_toint(i32) #1

declare dso_local i32 @mul_fp(i32, i32) #1

declare dso_local i32 @int_tofp(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
