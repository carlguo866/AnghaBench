; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_vlan_tbl_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_vlan_tbl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@ENET_VLAN_TBL_VPR = common dso_local global i32 0, align 4
@ENET_VLAN_TBL_VLANRDCTBLN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, i64, i32, i32, i32)* @vlan_tbl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlan_tbl_write(%struct.niu* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.niu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @ENET_VLAN_TBL(i64 %12)
  %14 = call i32 @nr64(i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @ENET_VLAN_TBL_VPR, align 4
  %16 = load i32, i32* @ENET_VLAN_TBL_VLANRDCTBLN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ENET_VLAN_TBL_SHIFT(i32 %18)
  %20 = shl i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i32, i32* @ENET_VLAN_TBL_VPR, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ENET_VLAN_TBL_SHIFT(i32 %28)
  %30 = shl i32 %27, %29
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %26, %5
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ENET_VLAN_TBL_SHIFT(i32 %35)
  %37 = shl i32 %34, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @vlan_entry_set_parity(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ENET_VLAN_TBL(i64 %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @nw64(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @ENET_VLAN_TBL(i64) #1

declare dso_local i32 @ENET_VLAN_TBL_SHIFT(i32) #1

declare dso_local i32 @vlan_entry_set_parity(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
