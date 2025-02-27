; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_spi.c_b53_spi_write64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_spi.c_b53_spi_write64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { %struct.spi_device* }
%struct.spi_device = type { i32 }

@B53_SPI_CMD_NORMAL = common dso_local global i32 0, align 4
@B53_SPI_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32, i32)* @b53_spi_write64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_spi_write64(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %14 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %13, i32 0, i32 0
  %15 = load %struct.spi_device*, %struct.spi_device** %14, align 8
  store %struct.spi_device* %15, %struct.spi_device** %10, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @b53_prepare_reg_access(%struct.spi_device* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %4
  %24 = load i32, i32* @B53_SPI_CMD_NORMAL, align 4
  %25 = load i32, i32* @B53_SPI_CMD_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 2
  %32 = call i32 @put_unaligned_le64(i32 %30, i32* %31)
  %33 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %35 = call i32 @spi_write(%struct.spi_device* %33, i32* %34, i32 40)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %23, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @b53_prepare_reg_access(%struct.spi_device*, i32) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @spi_write(%struct.spi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
