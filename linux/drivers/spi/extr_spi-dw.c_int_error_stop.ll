; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_int_error_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_int_error_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_spi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_spi*, i8*)* @int_error_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @int_error_stop(%struct.dw_spi* %0, i8* %1) #0 {
  %3 = alloca %struct.dw_spi*, align 8
  %4 = alloca i8*, align 8
  store %struct.dw_spi* %0, %struct.dw_spi** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %6 = call i32 @spi_reset_chip(%struct.dw_spi* %5)
  %7 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %16 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %14, i32* %20, align 4
  %21 = load %struct.dw_spi*, %struct.dw_spi** %3, align 8
  %22 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @spi_finalize_current_transfer(%struct.TYPE_4__* %23)
  ret void
}

declare dso_local i32 @spi_reset_chip(%struct.dw_spi*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
