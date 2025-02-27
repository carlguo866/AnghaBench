; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_write_to_ucd_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_main.c_write_to_ucd_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_device = type { i32 }

@UCD_UCODE_LOAD_BLOCK_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nitrox_device*, i64, i32*, i32)* @write_to_ucd_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_to_ucd_unit(%struct.nitrox_device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nitrox_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nitrox_device* %0, %struct.nitrox_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @UCD_UCODE_LOAD_BLOCK_NUM, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @nitrox_write_csr(%struct.nitrox_device* %14, i32 %15, i32 %16)
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @roundup(i64 %19, i32 8)
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %24, %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @UCD_UCODE_LOAD_IDX_DATAX(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @nitrox_write_csr(%struct.nitrox_device* %32, i32 %33, i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = sub nsw i64 %36, 8
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %21

40:                                               ; preds = %21
  %41 = call i32 @usleep_range(i32 300, i32 400)
  ret void
}

declare dso_local i32 @nitrox_write_csr(%struct.nitrox_device*, i32, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @UCD_UCODE_LOAD_IDX_DATAX(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
