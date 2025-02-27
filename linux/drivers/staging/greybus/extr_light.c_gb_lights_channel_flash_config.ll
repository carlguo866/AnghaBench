; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_flash_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_flash_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32 }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"no support for flash devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*)* @gb_lights_channel_flash_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_channel_flash_config(%struct.gb_channel* %0) #0 {
  %2 = alloca %struct.gb_channel*, align 8
  %3 = alloca %struct.gb_connection*, align 8
  store %struct.gb_channel* %0, %struct.gb_channel** %2, align 8
  %4 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %5 = call %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel* %4)
  store %struct.gb_connection* %5, %struct.gb_connection** %3, align 8
  %6 = load %struct.gb_connection*, %struct.gb_connection** %3, align 8
  %7 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_err(i32* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
