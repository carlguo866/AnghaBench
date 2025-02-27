; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_vsi_uses_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_switch.c_ice_vsi_uses_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_fltr_mgmt_list_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@ICE_FWD_TO_VSI = common dso_local global i64 0, align 8
@ICE_FWD_TO_VSI_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_fltr_mgmt_list_entry*, i64)* @ice_vsi_uses_fltr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_uses_fltr(%struct.ice_fltr_mgmt_list_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.ice_fltr_mgmt_list_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.ice_fltr_mgmt_list_entry* %0, %struct.ice_fltr_mgmt_list_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %3, align 8
  %6 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ICE_FWD_TO_VSI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %3, align 8
  %13 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %3, align 8
  %20 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ICE_FWD_TO_VSI_LIST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ice_fltr_mgmt_list_entry*, %struct.ice_fltr_mgmt_list_entry** %3, align 8
  %28 = getelementptr inbounds %struct.ice_fltr_mgmt_list_entry, %struct.ice_fltr_mgmt_list_entry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @test_bit(i64 %26, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %25, %18
  %35 = phi i1 [ false, %18 ], [ %33, %25 ]
  br label %36

36:                                               ; preds = %34, %11
  %37 = phi i1 [ true, %11 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
