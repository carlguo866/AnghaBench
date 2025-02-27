; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_set_mac_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_set_mac_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"i40e_set_mac_type\0A\00", align 1
@I40E_INTEL_VENDOR_ID = common dso_local global i64 0, align 8
@I40E_MAC_XL710 = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i32 0, align 4
@I40E_MAC_X722_VF = common dso_local global i32 0, align 4
@I40E_MAC_VF = common dso_local global i32 0, align 4
@I40E_MAC_GENERIC = common dso_local global i32 0, align 4
@I40E_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"i40e_set_mac_type found mac: %d, returns: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_set_mac_type(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @I40E_INTEL_VENDOR_ID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %35 [
    i32 131, label %15
    i32 138, label %15
    i32 141, label %15
    i32 140, label %15
    i32 137, label %15
    i32 136, label %15
    i32 135, label %15
    i32 150, label %15
    i32 149, label %15
    i32 146, label %15
    i32 145, label %15
    i32 144, label %15
    i32 143, label %15
    i32 139, label %20
    i32 134, label %20
    i32 132, label %20
    i32 147, label %20
    i32 148, label %20
    i32 133, label %20
    i32 128, label %25
    i32 130, label %30
    i32 129, label %30
    i32 142, label %30
  ]

15:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %16 = load i32, i32* @I40E_MAC_XL710, align 4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  br label %40

20:                                               ; preds = %11, %11, %11, %11, %11, %11
  %21 = load i32, i32* @I40E_MAC_X722, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %40

25:                                               ; preds = %11
  %26 = load i32, i32* @I40E_MAC_X722_VF, align 4
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %40

30:                                               ; preds = %11, %11, %11
  %31 = load i32, i32* @I40E_MAC_VF, align 4
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %40

35:                                               ; preds = %11
  %36 = load i32, i32* @I40E_MAC_GENERIC, align 4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30, %25, %20, %15
  br label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @I40E_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %45 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @DEBUGOUT2(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT2(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
