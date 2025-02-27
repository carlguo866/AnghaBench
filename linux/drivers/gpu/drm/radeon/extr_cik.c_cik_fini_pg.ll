; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_fini_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_fini_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @cik_fini_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_fini_pg(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call i32 @cik_update_gfx_pg(%struct.radeon_device* %8, i32 0)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RADEON_PG_SUPPORT_GFX_PG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = call i32 @cik_enable_cp_pg(%struct.radeon_device* %17, i32 0)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i32 @cik_enable_gds_pg(%struct.radeon_device* %19, i32 0)
  br label %21

21:                                               ; preds = %16, %7
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @cik_update_gfx_pg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_cp_pg(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_enable_gds_pg(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
