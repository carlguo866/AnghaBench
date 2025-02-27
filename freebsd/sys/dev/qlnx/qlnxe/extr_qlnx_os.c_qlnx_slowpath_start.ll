; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_slowpath_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_slowpath_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, %struct.ecore_dev, i32 }
%struct.ecore_dev = type { i32, i32, i32, i32 }
%struct.ecore_pf_params = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i64 }
%struct.TYPE_7__ = type { i32 }

@ECORE_INT_MODE_MSIX = common dso_local global i32 0, align 4
@ECORE_COAL_MODE_ENABLE = common dso_local global i32 0, align 4
@ECORE_PCI_ETH_IWARP = common dso_local global i64 0, align 8
@ECORE_PCI_ETH_ROCE = common dso_local global i64 0, align 8
@ECORE_RDMA_PROTOCOL_IWARP = common dso_local global i32 0, align 4
@ECORE_RDMA_PROTOCOL_ROCE = common dso_local global i32 0, align 4
@ECORE_ROCE_PROTOCOL_INDEX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @qlnx_slowpath_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_slowpath_start(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.ecore_dev*, align 8
  %4 = alloca %struct.ecore_pf_params, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = call i32 @memset(%struct.ecore_pf_params* %4, i32 0, i32 40)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %9, %13
  %15 = getelementptr inbounds %struct.ecore_pf_params, %struct.ecore_pf_params* %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  store %struct.ecore_dev* %18, %struct.ecore_dev** %3, align 8
  %19 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %20 = call i32 @qlnx_nic_setup(%struct.ecore_dev* %19, %struct.ecore_pf_params* %4)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %43

24:                                               ; preds = %1
  %25 = load i32, i32* @ECORE_INT_MODE_MSIX, align 4
  %26 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %27 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ECORE_COAL_MODE_ENABLE, align 4
  %29 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %30 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %32 = call i32 @qlnx_nic_start(%struct.ecore_dev* %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %34 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %39 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %24, %23
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.ecore_pf_params*, i32, i32) #1

declare dso_local i32 @qlnx_nic_setup(%struct.ecore_dev*, %struct.ecore_pf_params*) #1

declare dso_local i32 @qlnx_nic_start(%struct.ecore_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
