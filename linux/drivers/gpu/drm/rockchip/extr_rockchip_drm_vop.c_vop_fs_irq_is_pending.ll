; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_fs_irq_is_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_fs_irq_is_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { i32 }

@status = common dso_local global i32 0, align 4
@FS_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop*)* @vop_fs_irq_is_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_fs_irq_is_pending(%struct.vop* %0) #0 {
  %2 = alloca %struct.vop*, align 8
  store %struct.vop* %0, %struct.vop** %2, align 8
  %3 = load %struct.vop*, %struct.vop** %2, align 8
  %4 = load i32, i32* @status, align 4
  %5 = load i32, i32* @FS_INTR, align 4
  %6 = call i32 @VOP_INTR_GET_TYPE(%struct.vop* %3, i32 %4, i32 %5)
  ret i32 %6
}

declare dso_local i32 @VOP_INTR_GET_TYPE(%struct.vop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
