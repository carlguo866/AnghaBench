; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/amba/extr_bus.c_amba_find_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/amba/extr_bus.c_amba_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.find_data = type { i32, i32, i64, %struct.amba_device*, i64 }
%struct.amba_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @amba_find_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amba_find_match(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.find_data*, align 8
  %6 = alloca %struct.amba_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.find_data*
  store %struct.find_data* %9, %struct.find_data** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.amba_device* @to_amba_device(%struct.device* %10)
  store %struct.amba_device* %11, %struct.amba_device** %6, align 8
  %12 = load %struct.amba_device*, %struct.amba_device** %6, align 8
  %13 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.find_data*, %struct.find_data** %5, align 8
  %16 = getelementptr inbounds %struct.find_data, %struct.find_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %14, %17
  %19 = load %struct.find_data*, %struct.find_data** %5, align 8
  %20 = getelementptr inbounds %struct.find_data, %struct.find_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.find_data*, %struct.find_data** %5, align 8
  %25 = getelementptr inbounds %struct.find_data, %struct.find_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.find_data*, %struct.find_data** %5, align 8
  %30 = getelementptr inbounds %struct.find_data, %struct.find_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %28, %2
  %40 = load %struct.find_data*, %struct.find_data** %5, align 8
  %41 = getelementptr inbounds %struct.find_data, %struct.find_data* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 @dev_name(%struct.device* %45)
  %47 = load %struct.find_data*, %struct.find_data** %5, align 8
  %48 = getelementptr inbounds %struct.find_data, %struct.find_data* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strcmp(i32 %46, i64 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %44, %39
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = call i32 @get_device(%struct.device* %59)
  %61 = load %struct.amba_device*, %struct.amba_device** %6, align 8
  %62 = load %struct.find_data*, %struct.find_data** %5, align 8
  %63 = getelementptr inbounds %struct.find_data, %struct.find_data* %62, i32 0, i32 3
  store %struct.amba_device* %61, %struct.amba_device** %63, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.amba_device* @to_amba_device(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i64) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
