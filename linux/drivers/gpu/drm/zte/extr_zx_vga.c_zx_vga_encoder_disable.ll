; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.zx_vga = type { %struct.zx_vga_pwrctrl }
%struct.zx_vga_pwrctrl = type { i32, i32, i32 }

@VOU_VGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @zx_vga_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_vga_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.zx_vga*, align 8
  %4 = alloca %struct.zx_vga_pwrctrl*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.zx_vga* @to_zx_vga(%struct.drm_encoder* %5)
  store %struct.zx_vga* %6, %struct.zx_vga** %3, align 8
  %7 = load %struct.zx_vga*, %struct.zx_vga** %3, align 8
  %8 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %7, i32 0, i32 0
  store %struct.zx_vga_pwrctrl* %8, %struct.zx_vga_pwrctrl** %4, align 8
  %9 = load i32, i32* @VOU_VGA, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vou_inf_disable(i32 %9, i32 %12)
  %14 = load %struct.zx_vga_pwrctrl*, %struct.zx_vga_pwrctrl** %4, align 8
  %15 = getelementptr inbounds %struct.zx_vga_pwrctrl, %struct.zx_vga_pwrctrl* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.zx_vga_pwrctrl*, %struct.zx_vga_pwrctrl** %4, align 8
  %18 = getelementptr inbounds %struct.zx_vga_pwrctrl, %struct.zx_vga_pwrctrl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.zx_vga_pwrctrl*, %struct.zx_vga_pwrctrl** %4, align 8
  %21 = getelementptr inbounds %struct.zx_vga_pwrctrl, %struct.zx_vga_pwrctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_update_bits(i32 %16, i32 %19, i32 %22, i32 0)
  ret void
}

declare dso_local %struct.zx_vga* @to_zx_vga(%struct.drm_encoder*) #1

declare dso_local i32 @vou_inf_disable(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
