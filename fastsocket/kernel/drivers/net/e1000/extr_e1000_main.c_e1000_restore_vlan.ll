; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_restore_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_restore_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i64 }

@VLAN_GROUP_ARRAY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_restore_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_restore_vlan(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %4 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @e1000_vlan_rx_register(i32 %6, i64 %9)
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @VLAN_GROUP_ARRAY_LEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @vlan_group_get_device(i64 %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %34

28:                                               ; preds = %20
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @e1000_vlan_rx_add_vid(i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %16

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @e1000_vlan_rx_register(i32, i64) #1

declare dso_local i32 @vlan_group_get_device(i64, i64) #1

declare dso_local i32 @e1000_vlan_rx_add_vid(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
