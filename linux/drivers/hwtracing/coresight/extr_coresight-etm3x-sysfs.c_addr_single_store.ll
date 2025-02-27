; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_addr_single_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm3x-sysfs.c_addr_single_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.etm_drvdata = type { i32, %struct.etm_config }
%struct.etm_config = type { i64, i64*, i64* }

@ETM_ADDR_TYPE_NONE = common dso_local global i64 0, align 8
@ETM_ADDR_TYPE_SINGLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @addr_single_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_single_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.etm_drvdata*, align 8
  %14 = alloca %struct.etm_config*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.etm_drvdata* @dev_get_drvdata(i32 %17)
  store %struct.etm_drvdata* %18, %struct.etm_drvdata** %13, align 8
  %19 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %20 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %19, i32 0, i32 1
  store %struct.etm_config* %20, %struct.etm_config** %14, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 16, i64* %12)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %75

27:                                               ; preds = %4
  %28 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %29 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %32 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %35 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ETM_ADDR_TYPE_NONE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %57, label %42

42:                                               ; preds = %27
  %43 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %44 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ETM_ADDR_TYPE_SINGLE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %42
  %52 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %53 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %75

57:                                               ; preds = %42, %27
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %60 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %58, i64* %63, align 8
  %64 = load i64, i64* @ETM_ADDR_TYPE_SINGLE, align 8
  %65 = load %struct.etm_config*, %struct.etm_config** %14, align 8
  %66 = getelementptr inbounds %struct.etm_config, %struct.etm_config* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = load %struct.etm_drvdata*, %struct.etm_drvdata** %13, align 8
  %71 = getelementptr inbounds %struct.etm_drvdata, %struct.etm_drvdata* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %57, %51, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.etm_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
