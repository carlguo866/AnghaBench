; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_flash_wait_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_flash_wait_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }

@SF_RD_STATUS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i64, i64)* @csio_hw_flash_wait_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_flash_wait_op(%struct.csio_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %3, %43
  %11 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %12 = load i32, i32* @SF_RD_STATUS, align 4
  %13 = call i32 @csio_hw_sf1_write(%struct.csio_hw* %11, i32 1, i32 1, i32 1, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %10
  %19 = load %struct.csio_hw*, %struct.csio_hw** %5, align 8
  %20 = call i32 @csio_hw_sf1_read(%struct.csio_hw* %19, i32 1, i32 0, i32 1, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @msleep(i64 %41)
  br label %43

43:                                               ; preds = %40, %37
  br label %10

44:                                               ; preds = %34, %29, %23, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @csio_hw_sf1_write(%struct.csio_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @csio_hw_sf1_read(%struct.csio_hw*, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
