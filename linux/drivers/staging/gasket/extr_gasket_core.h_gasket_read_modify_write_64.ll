; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.h_gasket_read_modify_write_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.h_gasket_read_modify_write_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_dev*, i32, i32, i64, i64, i64)* @gasket_read_modify_write_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_read_modify_write_64(%struct.gasket_dev* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.gasket_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load %struct.gasket_dev*, %struct.gasket_dev** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @gasket_dev_read_64(%struct.gasket_dev* %15, i32 %16, i32 %17)
  store i64 %18, i64* %14, align 8
  %19 = load i64, i64* %11, align 8
  %20 = shl i64 1, %19
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %12, align 8
  %23 = shl i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %12, align 8
  %30 = shl i64 %28, %29
  %31 = or i64 %27, %30
  store i64 %31, i64* %14, align 8
  %32 = load %struct.gasket_dev*, %struct.gasket_dev** %7, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @gasket_dev_write_64(%struct.gasket_dev* %32, i64 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i64 @gasket_dev_read_64(%struct.gasket_dev*, i32, i32) #1

declare dso_local i32 @gasket_dev_write_64(%struct.gasket_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
