; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_setup-fb-24bpp.c_s3c64xx_fb_gpio_setup_24bpp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_setup-fb-24bpp.c_s3c64xx_fb_gpio_setup_24bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c64xx_fb_gpio_setup_24bpp() #0 {
  %1 = call i32 @S3C64XX_GPI(i32 0)
  %2 = call i32 @S3C_GPIO_SFN(i32 2)
  %3 = call i32 @s3c_gpio_cfgrange_nopull(i32 %1, i32 16, i32 %2)
  %4 = call i32 @S3C64XX_GPJ(i32 0)
  %5 = call i32 @S3C_GPIO_SFN(i32 2)
  %6 = call i32 @s3c_gpio_cfgrange_nopull(i32 %4, i32 12, i32 %5)
  ret void
}

declare dso_local i32 @s3c_gpio_cfgrange_nopull(i32, i32, i32) #1

declare dso_local i32 @S3C64XX_GPI(i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @S3C64XX_GPJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
