; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_write_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_write_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edgeport_serial = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TI_MODE_BOOT = common dso_local global i64 0, align 8
@TI_MODE_DOWNLOAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edgeport_serial*, i32, i32, i32*)* @write_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_rom(%struct.edgeport_serial* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.edgeport_serial*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.edgeport_serial* %0, %struct.edgeport_serial** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.edgeport_serial*, %struct.edgeport_serial** %6, align 8
  %11 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TI_MODE_BOOT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.edgeport_serial*, %struct.edgeport_serial** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @write_boot_mem(%struct.edgeport_serial* %17, i32 %18, i32 %19, i32* %20)
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load %struct.edgeport_serial*, %struct.edgeport_serial** %6, align 8
  %24 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TI_MODE_DOWNLOAD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.edgeport_serial*, %struct.edgeport_serial** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.edgeport_serial*, %struct.edgeport_serial** %6, align 8
  %34 = getelementptr inbounds %struct.edgeport_serial, %struct.edgeport_serial* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @write_i2c_mem(%struct.edgeport_serial* %30, i32 %31, i32 %32, i32 %35, i32* %36)
  store i32 %37, i32* %5, align 4
  br label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %29, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @write_boot_mem(%struct.edgeport_serial*, i32, i32, i32*) #1

declare dso_local i32 @write_i2c_mem(%struct.edgeport_serial*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
