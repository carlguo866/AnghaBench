; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pcr.c_pcr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@SCOM_PSR = common dso_local global i32 0, align 4
@PCR_HALF = common dso_local global i32 0, align 4
@PCR_QUARTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @pcr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcr_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %7 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %8 = icmp eq %struct.cf_setting* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %13 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %14 = call i32 @memset(%struct.cf_setting* %12, i32 %13, i32 8)
  %15 = load i32, i32* @SCOM_PSR, align 4
  %16 = call i32 @read_scom(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 56
  %19 = and i32 %18, 3
  store i32 %19, i32* %6, align 4
  %20 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %21 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %20, i32 0, i32 0
  store i32 10000, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCR_HALF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %27 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %26, i32 0, i32 0
  store i32 5000, i32* %27, align 4
  br label %36

28:                                               ; preds = %11
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PCR_QUARTER, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %34 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %33, i32 0, i32 0
  store i32 2500, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %39 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @read_scom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
