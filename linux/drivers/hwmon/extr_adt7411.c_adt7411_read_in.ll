; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_read_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @adt7411_read_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_read_in(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i64*, i64** %9, align 8
  %16 = call i32 @adt7411_read_in_vdd(%struct.device* %13, i32 %14, i64* %15)
  store i32 %16, i32* %5, align 4
  br label %23

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i64*, i64** %9, align 8
  %22 = call i32 @adt7411_read_in_chan(%struct.device* %18, i32 %19, i32 %20, i64* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17, %12
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @adt7411_read_in_vdd(%struct.device*, i32, i64*) #1

declare dso_local i32 @adt7411_read_in_chan(%struct.device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
