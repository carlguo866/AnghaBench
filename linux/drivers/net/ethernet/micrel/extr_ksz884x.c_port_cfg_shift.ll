; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_cfg_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_cfg_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i64, i32, i32)* @port_cfg_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_cfg_shift(%struct.ksz_hw* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ksz_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readw(i64 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %12, align 4
  %23 = shl i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %35

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.ksz_hw*, %struct.ksz_hw** %6, align 8
  %38 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writew(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
