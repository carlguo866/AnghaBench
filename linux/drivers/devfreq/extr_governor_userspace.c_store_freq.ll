; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_userspace.c_store_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_governor_userspace.c_store_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.devfreq = type { i32, %struct.userspace_data* }
%struct.userspace_data = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.devfreq*, align 8
  %10 = alloca %struct.userspace_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.devfreq* @to_devfreq(%struct.device* %13)
  store %struct.devfreq* %14, %struct.devfreq** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %16 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %19 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %18, i32 0, i32 1
  %20 = load %struct.userspace_data*, %struct.userspace_data** %19, align 8
  store %struct.userspace_data* %20, %struct.userspace_data** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %11)
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.userspace_data*, %struct.userspace_data** %10, align 8
  %25 = getelementptr inbounds %struct.userspace_data, %struct.userspace_data* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.userspace_data*, %struct.userspace_data** %10, align 8
  %27 = getelementptr inbounds %struct.userspace_data, %struct.userspace_data* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %29 = call i32 @update_devfreq(%struct.devfreq* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %32, %4
  %36 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  %37 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %12, align 4
  ret i32 %39
}

declare dso_local %struct.devfreq* @to_devfreq(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @update_devfreq(%struct.devfreq*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
