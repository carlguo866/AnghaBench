; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_wusb_cdid_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_wusb_cdid_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cbaf = type { %struct.wusb_ckhdid }
%struct.wusb_ckhdid = type { i32* }

@.str = private unnamed_addr constant [112 x i8] c"%02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx %02hhx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @cbaf_wusb_cdid_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_wusb_cdid_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.cbaf*, align 8
  %13 = alloca %struct.wusb_ckhdid, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %11, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %17 = call %struct.cbaf* @usb_get_intfdata(%struct.usb_interface* %16)
  store %struct.cbaf* %17, %struct.cbaf** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  %40 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  %49 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 10
  %52 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 11
  %55 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 12
  %58 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 13
  %61 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 14
  %64 = getelementptr inbounds %struct.wusb_ckhdid, %struct.wusb_ckhdid* %13, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 15
  %67 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i32* %21, i32* %24, i32* %27, i32* %30, i32* %33, i32* %36, i32* %39, i32* %42, i32* %45, i32* %48, i32* %51, i32* %54, i32* %57, i32* %60, i32* %63, i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 16
  br i1 %69, label %70, label %73

70:                                               ; preds = %4
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %80

73:                                               ; preds = %4
  %74 = load %struct.cbaf*, %struct.cbaf** %12, align 8
  %75 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %74, i32 0, i32 0
  %76 = bitcast %struct.wusb_ckhdid* %75 to i8*
  %77 = bitcast %struct.wusb_ckhdid* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 8, i1 false)
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.cbaf* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
