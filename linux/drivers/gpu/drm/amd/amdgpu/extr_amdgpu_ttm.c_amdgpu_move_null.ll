; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_move_null.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_move_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.ttm_mem_reg*)* @amdgpu_move_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_move_null(%struct.ttm_buffer_object* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %6, i32 0, i32 0
  store %struct.ttm_mem_reg* %7, %struct.ttm_mem_reg** %5, align 8
  %8 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %9 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %15 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %16 = bitcast %struct.ttm_mem_reg* %14 to i8*
  %17 = bitcast %struct.ttm_mem_reg* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
