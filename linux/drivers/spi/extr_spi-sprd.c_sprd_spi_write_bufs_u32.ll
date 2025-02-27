; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_write_bufs_u32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_write_bufs_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_spi = type { i32, i64 }

@SPRD_SPI_TXD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_spi*, i32)* @sprd_spi_write_bufs_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_write_bufs_u32(%struct.sprd_spi* %0, i32 %1) #0 {
  %3 = alloca %struct.sprd_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sprd_spi* %0, %struct.sprd_spi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %8 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %23 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPRD_SPI_TXD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 2
  %34 = load %struct.sprd_spi*, %struct.sprd_spi** %3, align 8
  %35 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 2
  ret i32 %39
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
