; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_prox_enable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds990x.c_apds990x_prox_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.apds990x_chip = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @apds990x_prox_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds990x_prox_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.apds990x_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.apds990x_chip* @dev_get_drvdata(%struct.device* %13)
  store %struct.apds990x_chip* %14, %struct.apds990x_chip** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 0, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  %22 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %23 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %26 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %31 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %37 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %42 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %47 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @pm_runtime_suspended(%struct.device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %57 = call i32 @apds990x_mode_on(%struct.apds990x_chip* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.apds990x_chip*, %struct.apds990x_chip** %10, align 8
  %60 = getelementptr inbounds %struct.apds990x_chip, %struct.apds990x_chip* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.apds990x_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @apds990x_mode_on(%struct.apds990x_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
