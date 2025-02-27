; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_sms_cart_switch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_sms_cart_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@slot = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@cart_rom = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@bios_rom = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@z80_readmap = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sms_cart_switch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 1), align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 2), align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  br label %14

14:                                               ; preds = %9, %6
  br label %53

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 1), align 8
  %24 = add nsw i64 %23, 4194304
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 2), align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 1), align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  br label %33

28:                                               ; preds = %19
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 1), align 8
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 3), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 2), align 8
  store i64 %30, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 2), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @slot, i32 0, i32 0), align 8
  br label %33

33:                                               ; preds = %28, %22
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 0), align 8
  %39 = icmp sle i32 %38, 1048576
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 1), align 8
  %42 = add nsw i64 %41, 4194304
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 1), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 0), align 8
  %45 = call i32 @memcpy(i64 %42, i64 %43, i32 %44)
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 2), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 2), align 8
  %48 = call i32 @memcpy(i64 %46, i64 %47, i32 4)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 1), align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 1), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cart_rom, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %40, %37
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %14
  %54 = call i32 (...) @mapper_reset()
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_rom, i32 0, i32 0), align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %2, align 4
  %59 = and i32 %58, 72
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 1), align 8
  %63 = add nsw i64 %62, 4194304
  %64 = load i64*, i64** @z80_readmap, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %57, %53
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @mapper_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
