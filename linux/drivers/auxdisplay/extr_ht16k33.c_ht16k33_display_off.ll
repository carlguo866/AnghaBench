; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_display_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_display_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht16k33_priv = type { i32 }

@REG_DISPLAY_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ht16k33_priv*)* @ht16k33_display_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht16k33_display_off(%struct.ht16k33_priv* %0) #0 {
  %2 = alloca %struct.ht16k33_priv*, align 8
  store %struct.ht16k33_priv* %0, %struct.ht16k33_priv** %2, align 8
  %3 = load %struct.ht16k33_priv*, %struct.ht16k33_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ht16k33_priv, %struct.ht16k33_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @REG_DISPLAY_SETUP, align 4
  %7 = call i32 @i2c_smbus_write_byte(i32 %5, i32 %6)
  ret i32 %7
}

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
