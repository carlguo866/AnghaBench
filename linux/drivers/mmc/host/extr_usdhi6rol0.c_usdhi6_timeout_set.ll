; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_timeout_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_timeout_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Set %s timeout %lu ticks @ %lu Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@USDHI6_SD_OPTION = common dso_local global i32 0, align 4
@USDHI6_SD_OPTION_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@USDHI6_SD_OPTION_TIMEOUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usdhi6_host*)* @usdhi6_timeout_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_timeout_set(%struct.usdhi6_host* %0) #0 {
  %2 = alloca %struct.usdhi6_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %2, align 8
  %6 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %7 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %6, i32 0, i32 2
  %8 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  store %struct.mmc_request* %8, %struct.mmc_request** %3, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %15 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 1000
  %18 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %17, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  br label %44

25:                                               ; preds = %1
  %26 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %27 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 1000000
  %30 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 1000
  %36 = mul nsw i32 %29, %35
  %37 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %36, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %25, %13
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = icmp ugt i64 %48, 134217728
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %44
  store i32 14, i32* %4, align 4
  br label %60

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = icmp ult i64 %52, 8192
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @order_base_2(i64 %56)
  %58 = sub nsw i32 %57, 13
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %54
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %62 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mmc_dev(i32 %63)
  %65 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %73 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %70, i64 %71, i32 %74)
  %76 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %77 = load i32, i32* @USDHI6_SD_OPTION, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @USDHI6_SD_OPTION_TIMEOUT_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load %struct.usdhi6_host*, %struct.usdhi6_host** %2, align 8
  %82 = load i32, i32* @USDHI6_SD_OPTION, align 4
  %83 = call i32 @usdhi6_read(%struct.usdhi6_host* %81, i32 %82)
  %84 = load i32, i32* @USDHI6_SD_OPTION_TIMEOUT_MASK, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = or i32 %80, %86
  %88 = call i32 @usdhi6_write(%struct.usdhi6_host* %76, i32 %77, i32 %87)
  ret void
}

declare dso_local i32 @order_base_2(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @usdhi6_write(%struct.usdhi6_host*, i32, i32) #1

declare dso_local i32 @usdhi6_read(%struct.usdhi6_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
