; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_ssp_lcdtg_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_corgi_lcd.c_corgi_ssp_lcdtg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_lcd = type { i32*, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.corgi_lcd*, i32, i32)* @corgi_ssp_lcdtg_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgi_ssp_lcdtg_send(%struct.corgi_lcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.corgi_lcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca %struct.spi_transfer, align 8
  store %struct.corgi_lcd* %0, %struct.corgi_lcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 1
  %11 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %12 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %8, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 5
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 31
  %20 = or i32 %17, %19
  %21 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %22 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = call i32 @spi_message_init(%struct.spi_message* %7)
  %26 = call i32 @spi_message_add_tail(%struct.spi_transfer* %8, %struct.spi_message* %7)
  %27 = load %struct.corgi_lcd*, %struct.corgi_lcd** %4, align 8
  %28 = getelementptr inbounds %struct.corgi_lcd, %struct.corgi_lcd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @spi_sync(i32 %29, %struct.spi_message* %7)
  ret i32 %30
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
