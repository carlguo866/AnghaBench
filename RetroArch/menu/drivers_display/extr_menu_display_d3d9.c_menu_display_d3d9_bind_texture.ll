; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d9.c_menu_display_d3d9_bind_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers_display/extr_menu_display_d3d9.c_menu_display_d3d9_bind_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@D3DTADDRESS_COMM_CLAMP = common dso_local global i32 0, align 4
@D3DTEXF_COMM_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @menu_display_d3d9_bind_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_display_d3d9_bind_texture(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @d3d9_set_texture(i32 %9, i32 0, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @D3DTADDRESS_COMM_CLAMP, align 4
  %17 = call i32 @d3d9_set_sampler_address_u(i32 %15, i32 0, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @D3DTADDRESS_COMM_CLAMP, align 4
  %20 = call i32 @d3d9_set_sampler_address_v(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @D3DTEXF_COMM_LINEAR, align 4
  %23 = call i32 @d3d9_set_sampler_minfilter(i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @D3DTEXF_COMM_LINEAR, align 4
  %26 = call i32 @d3d9_set_sampler_magfilter(i32 %24, i32 0, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @D3DTEXF_COMM_LINEAR, align 4
  %29 = call i32 @d3d9_set_sampler_mipfilter(i32 %27, i32 0, i32 %28)
  ret void
}

declare dso_local i32 @d3d9_set_texture(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_address_u(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_address_v(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_minfilter(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_magfilter(i32, i32, i32) #1

declare dso_local i32 @d3d9_set_sampler_mipfilter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
