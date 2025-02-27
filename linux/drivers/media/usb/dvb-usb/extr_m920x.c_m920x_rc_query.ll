; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_rc_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M9206_CORE = common dso_local global i32 0, align 4
@M9206_RC_STATE = common dso_local global i32 0, align 4
@M9206_RC_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown rc key %02x\0A\00", align 1
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @m920x_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64* @kmalloc(i32 2, i32 %11)
  store i64* %12, i64** %10, align 8
  %13 = load i64*, i64** %10, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %106

18:                                               ; preds = %3
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @M9206_CORE, align 4
  %23 = load i32, i32* @M9206_RC_STATE, align 4
  %24 = load i64*, i64** %10, align 8
  %25 = call i32 @m920x_read(i32 %21, i32 %22, i32 0, i32 %23, i64* %24, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %102

29:                                               ; preds = %18
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @M9206_CORE, align 4
  %34 = load i32, i32* @M9206_RC_KEY, align 4
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = call i32 @m920x_read(i32 %32, i32 %33, i32 0, i32 %34, i64* %36, i32 1)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %102

41:                                               ; preds = %29
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @m920x_parse_rc_state(%struct.dvb_usb_device* %42, i64 %45, i32* %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %86, %41
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %48
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %65
  %67 = call i64 @rc5_data(%struct.TYPE_8__* %66)
  %68 = load i64*, i64** %10, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %57
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  br label %102

85:                                               ; preds = %57
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %48

89:                                               ; preds = %48
  %90 = load i64*, i64** %10, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i64*, i64** %10, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @deb(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %99, %72, %40, %28
  %103 = load i64*, i64** %10, align 8
  %104 = call i32 @kfree(i64* %103)
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %15
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @m920x_read(i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @m920x_parse_rc_state(%struct.dvb_usb_device*, i64, i32*) #1

declare dso_local i64 @rc5_data(%struct.TYPE_8__*) #1

declare dso_local i32 @deb(i8*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
