; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_add_dirty_texture_region.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_add_dirty_texture_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_add_dirty_texture_region* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_add_dirty_texture_region = type { i32, %struct.wined3d_texture*, i32 }
%struct.wined3d_texture = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_ADD_DIRTY_TEXTURE_REGION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_add_dirty_texture_region(%struct.wined3d_cs* %0, %struct.wined3d_texture* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_cs*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_cs_add_dirty_texture_region*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %4, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.wined3d_cs_add_dirty_texture_region* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_add_dirty_texture_region* (%struct.wined3d_cs*, i32, i32)** %11, align 8
  %13 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %14 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %15 = call %struct.wined3d_cs_add_dirty_texture_region* %12(%struct.wined3d_cs* %13, i32 24, i32 %14)
  store %struct.wined3d_cs_add_dirty_texture_region* %15, %struct.wined3d_cs_add_dirty_texture_region** %7, align 8
  %16 = load i32, i32* @WINED3D_CS_OP_ADD_DIRTY_TEXTURE_REGION, align 4
  %17 = load %struct.wined3d_cs_add_dirty_texture_region*, %struct.wined3d_cs_add_dirty_texture_region** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_cs_add_dirty_texture_region, %struct.wined3d_cs_add_dirty_texture_region* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %20 = load %struct.wined3d_cs_add_dirty_texture_region*, %struct.wined3d_cs_add_dirty_texture_region** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_cs_add_dirty_texture_region, %struct.wined3d_cs_add_dirty_texture_region* %20, i32 0, i32 1
  store %struct.wined3d_texture* %19, %struct.wined3d_texture** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.wined3d_cs_add_dirty_texture_region*, %struct.wined3d_cs_add_dirty_texture_region** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_cs_add_dirty_texture_region, %struct.wined3d_cs_add_dirty_texture_region* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %26 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %25, i32 0, i32 0
  %27 = call i32 @wined3d_resource_acquire(i32* %26)
  %28 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %31, align 8
  %33 = load %struct.wined3d_cs*, %struct.wined3d_cs** %4, align 8
  %34 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %35 = call i32 %32(%struct.wined3d_cs* %33, i32 %34)
  ret void
}

declare dso_local i32 @wined3d_resource_acquire(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
