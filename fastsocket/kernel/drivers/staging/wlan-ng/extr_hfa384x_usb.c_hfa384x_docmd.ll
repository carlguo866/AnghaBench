; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_docmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_docmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i8*, i32, i32, i64, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@HFA384x_USB_CMDREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"cmdreq: cmd=0x%04x parm0=0x%04x parm1=0x%04x parm2=0x%04x\0A\00", align 1
@DOWAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_15__*, i32, i32, i8*)* @hfa384x_docmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_docmd(i32* %0, i64 %1, %struct.TYPE_15__* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = call %struct.TYPE_14__* (...) @usbctlx_alloc()
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %14, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %18 = icmp eq %struct.TYPE_14__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  br label %112

22:                                               ; preds = %6
  %23 = load i32, i32* @HFA384x_USB_CMDREQ, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  store i8* %24, i8** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  store i8* %32, i8** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store i32 40, i32* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 5
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %90 = call i32 @hfa384x_usbctlx_submit(i32* %88, %struct.TYPE_14__* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %22
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %95 = call i32 @kfree(%struct.TYPE_14__* %94)
  br label %111

96:                                               ; preds = %22
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @DOWAIT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = call i32 @init_cmd_completor(i32* %15, i32* %105, i32* %107)
  %109 = call i32 @hfa384x_usbctlx_complete_sync(i32* %101, %struct.TYPE_14__* %102, i32 %108)
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %100, %96
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %19
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_14__* @usbctlx_alloc(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @hfa384x_usbctlx_submit(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i32 @hfa384x_usbctlx_complete_sync(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @init_cmd_completor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
