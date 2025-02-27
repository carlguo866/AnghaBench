; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_cam_sdio.c_sdio_card_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_cam_sdio.c_sdio_card_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@SD_IO_CCCR_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error getting CCCR_CTL value\00", align 1
@CCCR_CTL_RES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error setting CCCR_CTL value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdio_card_reset(%struct.cam_device* %0) #0 {
  %2 = alloca %struct.cam_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %2, align 8
  %5 = load %struct.cam_device*, %struct.cam_device** %2, align 8
  %6 = load i32, i32* @SD_IO_CCCR_CTL, align 4
  %7 = call i32 @sdio_rw_direct(%struct.cam_device* %5, i32 0, i32 %6, i32 0, i32* null, i32* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @CCCR_CTL_RES, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.cam_device*, %struct.cam_device** %2, align 8
  %17 = load i32, i32* @SD_IO_CCCR_CTL, align 4
  %18 = call i32 @sdio_rw_direct(%struct.cam_device* %16, i32 0, i32 %17, i32 1, i32* %4, i32* %4)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @sdio_rw_direct(%struct.cam_device*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
