; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_read_data.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_sdcard.c_sdcard_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m_spi_no = common dso_local global i32 0, align 4
@m_status = common dso_local global i32 0, align 4
@DATA_START_BLOCK = common dso_local global i32 0, align 4
@SD_CARD_ERROR_READ = common dso_local global i32 0, align 4
@m_error = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @sdcard_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdcard_read_data(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = call i32 @set_timeout(i32* %6, i32 100000)
  br label %8

8:                                                ; preds = %16, %2
  %9 = load i32, i32* @m_spi_no, align 4
  %10 = call i32 @platform_spi_send_recv(i32 %9, i32 8, i32 255)
  store i32 %10, i32* @m_status, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = call i64 @timed_out(i32* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %33

16:                                               ; preds = %12
  br label %8

17:                                               ; preds = %8
  %18 = load i32, i32* @m_status, align 4
  %19 = load i32, i32* @DATA_START_BLOCK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SD_CARD_ERROR_READ, align 4
  store i32 %22, i32* @m_error, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load i32, i32* @m_spi_no, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @platform_spi_blkread(i32 %24, i64 %25, i8* %27)
  %29 = load i32, i32* @m_spi_no, align 4
  %30 = call i32 @platform_spi_transaction(i32 %29, i32 16, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0)
  %31 = call i32 (...) @sdcard_chipselect_high()
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %21, %15
  %34 = call i32 (...) @sdcard_chipselect_high()
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @set_timeout(i32*, i32) #1

declare dso_local i32 @platform_spi_send_recv(i32, i32, i32) #1

declare dso_local i64 @timed_out(i32*) #1

declare dso_local i32 @platform_spi_blkread(i32, i64, i8*) #1

declare dso_local i32 @platform_spi_transaction(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sdcard_chipselect_high(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
