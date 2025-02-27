; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_data_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_data_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, %struct.mmc_request*, %struct.mmc_data* }
%struct.mmc_request = type { i64 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"imxmci_data_done: no request to finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxmci_host*, i32)* @imxmci_data_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxmci_data_done(%struct.imxmci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imxmci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_request*, align 8
  store %struct.imxmci_host* %0, %struct.imxmci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %10 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %9, i32 0, i32 2
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %13 = icmp ne %struct.mmc_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @imxmci_finish_data(%struct.imxmci_host* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %20 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %19, i32 0, i32 1
  %21 = load %struct.mmc_request*, %struct.mmc_request** %20, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %27 = call i32 @imxmci_stop_clock(%struct.imxmci_host* %26)
  %28 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %29 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %30 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %29, i32 0, i32 1
  %31 = load %struct.mmc_request*, %struct.mmc_request** %30, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @imxmci_start_cmd(%struct.imxmci_host* %28, i64 %33, i32 0)
  br label %52

35:                                               ; preds = %15
  %36 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %37 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %36, i32 0, i32 1
  %38 = load %struct.mmc_request*, %struct.mmc_request** %37, align 8
  store %struct.mmc_request* %38, %struct.mmc_request** %8, align 8
  %39 = load %struct.mmc_request*, %struct.mmc_request** %8, align 8
  %40 = icmp ne %struct.mmc_request* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %43 = load %struct.mmc_request*, %struct.mmc_request** %8, align 8
  %44 = call i32 @imxmci_finish_request(%struct.imxmci_host* %42, %struct.mmc_request* %43)
  br label %51

45:                                               ; preds = %35
  %46 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %47 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mmc_dev(i32 %48)
  %50 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %25
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @imxmci_finish_data(%struct.imxmci_host*, i32) #1

declare dso_local i32 @imxmci_stop_clock(%struct.imxmci_host*) #1

declare dso_local i32 @imxmci_start_cmd(%struct.imxmci_host*, i64, i32) #1

declare dso_local i32 @imxmci_finish_request(%struct.imxmci_host*, %struct.mmc_request*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
