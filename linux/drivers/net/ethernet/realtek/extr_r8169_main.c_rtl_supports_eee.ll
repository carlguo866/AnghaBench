; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_supports_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_supports_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64 }

@RTL_GIGA_MAC_VER_34 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_37 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_39 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*)* @rtl_supports_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_supports_eee(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RTL_GIGA_MAC_VER_34, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RTL_GIGA_MAC_VER_37, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTL_GIGA_MAC_VER_39, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %14, %8, %1
  %21 = phi i1 [ false, %8 ], [ false, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
