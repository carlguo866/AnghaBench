; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_dmx_region_delete.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/mmal/extr_vout.c_dmx_region_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmx_region_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmx_region_t*, i32)* @dmx_region_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmx_region_delete(%struct.dmx_region_t* %0, i32 %1) #0 {
  %3 = alloca %struct.dmx_region_t*, align 8
  %4 = alloca i32, align 4
  store %struct.dmx_region_t* %0, %struct.dmx_region_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dmx_region_t*, %struct.dmx_region_t** %3, align 8
  %7 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vc_dispmanx_element_remove(i32 %5, i32 %8)
  %10 = load %struct.dmx_region_t*, %struct.dmx_region_t** %3, align 8
  %11 = getelementptr inbounds %struct.dmx_region_t, %struct.dmx_region_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vc_dispmanx_resource_delete(i32 %12)
  %14 = load %struct.dmx_region_t*, %struct.dmx_region_t** %3, align 8
  %15 = call i32 @free(%struct.dmx_region_t* %14)
  ret void
}

declare dso_local i32 @vc_dispmanx_element_remove(i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_delete(i32) #1

declare dso_local i32 @free(%struct.dmx_region_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
