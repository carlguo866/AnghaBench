; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_i2c.c_radeon_gpio_setsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_i2c.c_radeon_gpio_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { i32, %struct.radeonfb_info* }
%struct.radeonfb_info = type { i32 }

@VGA_DDC_DATA_OUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @radeon_gpio_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_gpio_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_i2c_chan*, align 8
  %6 = alloca %struct.radeonfb_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.radeon_i2c_chan*
  store %struct.radeon_i2c_chan* %9, %struct.radeon_i2c_chan** %5, align 8
  %10 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %10, i32 0, i32 1
  %12 = load %struct.radeonfb_info*, %struct.radeonfb_info** %11, align 8
  store %struct.radeonfb_info* %12, %struct.radeonfb_info** %6, align 8
  %13 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @INREG(i32 %15)
  %17 = load i32, i32* @VGA_DDC_DATA_OUT_EN, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @VGA_DDC_DATA_OUT_EN, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %5, align 8
  %28 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @OUTREG(i32 %29, i32 %30)
  %32 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %5, align 8
  %33 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @INREG(i32 %34)
  ret void
}

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
