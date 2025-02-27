; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32 }

@GB_CHANNEL_MODE_TORCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*)* @gb_lights_channel_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_channel_register(%struct.gb_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_channel*, align 8
  store %struct.gb_channel* %0, %struct.gb_channel** %3, align 8
  %4 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %5 = call i32 @is_channel_flash(%struct.gb_channel* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %9 = call i32 @__gb_lights_led_register(%struct.gb_channel* %8)
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %12 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GB_CHANNEL_MODE_TORCH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %19 = call i32 @__gb_lights_flash_led_register(%struct.gb_channel* %18)
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @is_channel_flash(%struct.gb_channel*) #1

declare dso_local i32 @__gb_lights_led_register(%struct.gb_channel*) #1

declare dso_local i32 @__gb_lights_flash_led_register(%struct.gb_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
