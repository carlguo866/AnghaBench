; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_store_freq_step.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_store_freq_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gov_attr_set = type { i32 }
%struct.dbs_data = type { %struct.cs_dbs_tuners* }
%struct.cs_dbs_tuners = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gov_attr_set*, i8*, i64)* @store_freq_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_freq_step(%struct.gov_attr_set* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gov_attr_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dbs_data*, align 8
  %9 = alloca %struct.cs_dbs_tuners*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gov_attr_set* %0, %struct.gov_attr_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.gov_attr_set*, %struct.gov_attr_set** %5, align 8
  %13 = call %struct.dbs_data* @to_dbs_data(%struct.gov_attr_set* %12)
  store %struct.dbs_data* %13, %struct.dbs_data** %8, align 8
  %14 = load %struct.dbs_data*, %struct.dbs_data** %8, align 8
  %15 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %14, i32 0, i32 0
  %16 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %15, align 8
  store %struct.cs_dbs_tuners* %16, %struct.cs_dbs_tuners** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp ugt i32 %25, 100
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 100, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %9, align 8
  %31 = getelementptr inbounds %struct.cs_dbs_tuners, %struct.cs_dbs_tuners* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local %struct.dbs_data* @to_dbs_data(%struct.gov_attr_set*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
