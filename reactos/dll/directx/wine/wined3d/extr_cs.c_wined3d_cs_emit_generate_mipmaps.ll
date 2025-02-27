; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_generate_mipmaps.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_generate_mipmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_generate_mipmaps* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_generate_mipmaps = type { %struct.wined3d_shader_resource_view*, i32 }
%struct.wined3d_shader_resource_view = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_GENERATE_MIPMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_generate_mipmaps(%struct.wined3d_cs* %0, %struct.wined3d_shader_resource_view* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca %struct.wined3d_shader_resource_view*, align 8
  %5 = alloca %struct.wined3d_cs_generate_mipmaps*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store %struct.wined3d_shader_resource_view* %1, %struct.wined3d_shader_resource_view** %4, align 8
  %6 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.wined3d_cs_generate_mipmaps* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_generate_mipmaps* (%struct.wined3d_cs*, i32, i32)** %9, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %13 = call %struct.wined3d_cs_generate_mipmaps* %10(%struct.wined3d_cs* %11, i32 16, i32 %12)
  store %struct.wined3d_cs_generate_mipmaps* %13, %struct.wined3d_cs_generate_mipmaps** %5, align 8
  %14 = load i32, i32* @WINED3D_CS_OP_GENERATE_MIPMAPS, align 4
  %15 = load %struct.wined3d_cs_generate_mipmaps*, %struct.wined3d_cs_generate_mipmaps** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs_generate_mipmaps, %struct.wined3d_cs_generate_mipmaps* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %4, align 8
  %18 = load %struct.wined3d_cs_generate_mipmaps*, %struct.wined3d_cs_generate_mipmaps** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_generate_mipmaps, %struct.wined3d_cs_generate_mipmaps* %18, i32 0, i32 0
  store %struct.wined3d_shader_resource_view* %17, %struct.wined3d_shader_resource_view** %19, align 8
  %20 = load %struct.wined3d_shader_resource_view*, %struct.wined3d_shader_resource_view** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_resource_view, %struct.wined3d_shader_resource_view* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wined3d_resource_acquire(i32 %22)
  %24 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %25 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %27, align 8
  %29 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %30 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %31 = call i32 %28(%struct.wined3d_cs* %29, i32 %30)
  ret void
}

declare dso_local i32 @wined3d_resource_acquire(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
