; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_reg_w_i.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_reg_w_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reg_w err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32)* @reg_w_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_i(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %40

15:                                               ; preds = %4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndctrlpipe(i32 %21, i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @USB_DIR_OUT, align 4
  %25 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @usb_control_msg(i32 %18, i32 %22, i32 %23, i32 %28, i32 %29, i32 %30, i32* null, i32 0, i32 500)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %15
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %14, %34, %15
  ret void
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
