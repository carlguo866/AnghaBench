; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ams_delta_serio.c_ams_delta_serio_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ams_delta_serio.c_ams_delta_serio_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ams_delta_serio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ams_delta_serio_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_serio_exit(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ams_delta_serio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ams_delta_serio* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ams_delta_serio* %5, %struct.ams_delta_serio** %3, align 8
  %6 = load %struct.ams_delta_serio*, %struct.ams_delta_serio** %3, align 8
  %7 = getelementptr inbounds %struct.ams_delta_serio, %struct.ams_delta_serio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @serio_unregister_port(i32 %8)
  ret i32 0
}

declare dso_local %struct.ams_delta_serio* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @serio_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
