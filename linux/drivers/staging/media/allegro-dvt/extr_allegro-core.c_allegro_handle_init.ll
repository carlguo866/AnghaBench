; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_handle_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32 }
%struct.mcu_msg_init_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*, %struct.mcu_msg_init_response*)* @allegro_handle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_handle_init(%struct.allegro_dev* %0, %struct.mcu_msg_init_response* %1) #0 {
  %3 = alloca %struct.allegro_dev*, align 8
  %4 = alloca %struct.mcu_msg_init_response*, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %3, align 8
  store %struct.mcu_msg_init_response* %1, %struct.mcu_msg_init_response** %4, align 8
  %5 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %6 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %5, i32 0, i32 0
  %7 = call i32 @complete(i32* %6)
  ret i32 0
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
