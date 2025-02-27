; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851.c_ks8851_wrreg8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851.c_ks8851_wrreg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8851_net = type { i32, %struct.spi_message, %struct.spi_transfer }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32* }

@KS_SPIOP_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi_sync() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8851_net*, i32, i32)* @ks8851_wrreg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8851_wrreg8(%struct.ks8851_net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ks8851_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.spi_message*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ks8851_net* %0, %struct.ks8851_net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %13 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %12, i32 0, i32 2
  store %struct.spi_transfer* %13, %struct.spi_transfer** %7, align 8
  %14 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %15 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %14, i32 0, i32 1
  store %struct.spi_message* %15, %struct.spi_message** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 3
  %18 = shl i32 1, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @MK_OP(i32 %19, i32 %20)
  %22 = load i32, i32* @KS_SPIOP_WR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 1
  store i32 3, i32* %34, align 8
  %35 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %36 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.spi_message*, %struct.spi_message** %8, align 8
  %39 = call i32 @spi_sync(i32 %37, %struct.spi_message* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load %struct.ks8851_net*, %struct.ks8851_net** %4, align 8
  %44 = call i32 @ks_err(%struct.ks8851_net* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @MK_OP(i32, i32) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @ks_err(%struct.ks8851_net*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
