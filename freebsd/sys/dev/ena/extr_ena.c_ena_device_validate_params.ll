; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_device_validate_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_device_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32 }
%struct.ena_com_dev_get_features_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error, mac address are different\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Error, device max mtu is smaller than ifp MTU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_com_dev_get_features_ctx*)* @ena_device_validate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_device_validate_params(%struct.ena_adapter* %0, %struct.ena_com_dev_get_features_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_com_dev_get_features_ctx* %1, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %6 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %7 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %14 = call i64 @memcmp(i32 %9, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @if_getmtu(i32 %29)
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %32, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @if_getmtu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
