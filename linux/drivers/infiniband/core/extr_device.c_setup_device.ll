; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_device.c_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ib_device.0*, i32*, %struct.ib_udata*)* }
%struct.ib_device.0 = type opaque
%struct.ib_udata = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Couldn't create per-port data\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't query the device attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_device(%struct.ib_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_udata, align 4
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  %6 = bitcast %struct.ib_udata* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %8 = call i32 @setup_dma_device(%struct.ib_device* %7)
  %9 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %10 = call i32 @ib_device_check_mandatory(%struct.ib_device* %9)
  %11 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %12 = call i32 @setup_port_data(%struct.ib_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %17 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 1
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %25 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ib_device.0*, i32*, %struct.ib_udata*)*, i32 (%struct.ib_device.0*, i32*, %struct.ib_udata*)** %26, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %29 = bitcast %struct.ib_device* %28 to %struct.ib_device.0*
  %30 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 1
  %32 = call i32 %27(%struct.ib_device.0* %29, i32* %31, %struct.ib_udata* %4)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %35, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setup_dma_device(%struct.ib_device*) #2

declare dso_local i32 @ib_device_check_mandatory(%struct.ib_device*) #2

declare dso_local i32 @setup_port_data(%struct.ib_device*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
