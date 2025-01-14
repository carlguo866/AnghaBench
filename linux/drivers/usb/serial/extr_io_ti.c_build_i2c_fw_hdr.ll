; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_build_i2c_fw_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_io_ti.c_build_i2c_fw_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32* }
%struct.ti_i2c_desc = type { i64, i32, i32, i64 }
%struct.ti_i2c_image_header = type { i32 }
%struct.ti_i2c_firmware_rec = type { i32, i32 }
%struct.edgeport_fw_hdr = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2C_DESC_TYPE_FIRMWARE_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.firmware*)* @build_i2c_fw_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_i2c_fw_hdr(i32* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ti_i2c_desc*, align 8
  %11 = alloca %struct.ti_i2c_image_header*, align 8
  %12 = alloca %struct.ti_i2c_firmware_rec*, align 8
  %13 = alloca %struct.edgeport_fw_hdr*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.firmware*, %struct.firmware** %5, align 8
  %15 = getelementptr inbounds %struct.firmware, %struct.firmware* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.edgeport_fw_hdr*
  store %struct.edgeport_fw_hdr* %17, %struct.edgeport_fw_hdr** %13, align 8
  store i32 15880, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64* @kmalloc(i32 %18, i32 %19)
  store i64* %20, i64** %6, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %2
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memset(i64* %27, i32 255, i32 %28)
  %30 = load i64*, i64** %6, align 8
  %31 = bitcast i64* %30 to %struct.ti_i2c_firmware_rec*
  store %struct.ti_i2c_firmware_rec* %31, %struct.ti_i2c_firmware_rec** %12, align 8
  %32 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %13, align 8
  %33 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ti_i2c_firmware_rec*, %struct.ti_i2c_firmware_rec** %12, align 8
  %36 = getelementptr inbounds %struct.ti_i2c_firmware_rec, %struct.ti_i2c_firmware_rec* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %13, align 8
  %38 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ti_i2c_firmware_rec*, %struct.ti_i2c_firmware_rec** %12, align 8
  %41 = getelementptr inbounds %struct.ti_i2c_firmware_rec, %struct.ti_i2c_firmware_rec* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.firmware*, %struct.firmware** %5, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = bitcast i32* %45 to %struct.ti_i2c_image_header*
  store %struct.ti_i2c_image_header* %46, %struct.ti_i2c_image_header** %11, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 8
  %49 = load %struct.firmware*, %struct.firmware** %5, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  %53 = load %struct.ti_i2c_image_header*, %struct.ti_i2c_image_header** %11, align 8
  %54 = getelementptr inbounds %struct.ti_i2c_image_header, %struct.ti_i2c_image_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = call i32 @memcpy(i64* %48, i32* %52, i32 %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %70, %26
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %63, %68
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %58

73:                                               ; preds = %58
  %74 = load i64*, i64** %6, align 8
  %75 = call i32 @kfree(i64* %74)
  %76 = load i32*, i32** %4, align 8
  %77 = bitcast i32* %76 to %struct.ti_i2c_desc*
  store %struct.ti_i2c_desc* %77, %struct.ti_i2c_desc** %10, align 8
  %78 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %10, align 8
  %79 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.ti_i2c_firmware_rec*
  store %struct.ti_i2c_firmware_rec* %81, %struct.ti_i2c_firmware_rec** %12, align 8
  %82 = load i32, i32* @I2C_DESC_TYPE_FIRMWARE_BLANK, align 4
  %83 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %10, align 8
  %84 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @cpu_to_le16(i32 %85)
  %87 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %10, align 8
  %88 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.ti_i2c_desc*, %struct.ti_i2c_desc** %10, align 8
  %91 = getelementptr inbounds %struct.ti_i2c_desc, %struct.ti_i2c_desc* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %13, align 8
  %93 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ti_i2c_firmware_rec*, %struct.ti_i2c_firmware_rec** %12, align 8
  %96 = getelementptr inbounds %struct.ti_i2c_firmware_rec, %struct.ti_i2c_firmware_rec* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.edgeport_fw_hdr*, %struct.edgeport_fw_hdr** %13, align 8
  %98 = getelementptr inbounds %struct.edgeport_fw_hdr, %struct.edgeport_fw_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ti_i2c_firmware_rec*, %struct.ti_i2c_firmware_rec** %12, align 8
  %101 = getelementptr inbounds %struct.ti_i2c_firmware_rec, %struct.ti_i2c_firmware_rec* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %73, %23
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
