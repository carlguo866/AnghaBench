; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_reg_r8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_reg_r8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.gspca_dev = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reg_r8 %02x failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @reg_r8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_r8(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = bitcast %struct.sd* %8 to %struct.gspca_dev*
  store %struct.gspca_dev* %9, %struct.gspca_dev** %6, align 8
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = call i32 @udelay(i32 150)
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_rcvctrlpipe(i32 %25, i32 0)
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.sd*, %struct.sd** %4, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @usb_control_msg(i32 %21, i32 %26, i32 1, i32 %31, i32 0, i32 %32, i32* %36, i32 8, i32 500)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %16
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  br label %60

47:                                               ; preds = %16
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gspca_err(%struct.gspca_dev* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(i32 %58, i32 0, i32 8)
  br label %60

60:                                               ; preds = %47, %40
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
