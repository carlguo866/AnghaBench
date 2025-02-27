; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_1_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_nv50.c_nv50_disp_super_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { i32 }
%struct.nvkm_head = type { i32 }
%struct.nvkm_ior = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"supervisor 1.0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_super_1_0(%struct.nv50_disp* %0, %struct.nvkm_head* %1) #0 {
  %3 = alloca %struct.nv50_disp*, align 8
  %4 = alloca %struct.nvkm_head*, align 8
  %5 = alloca %struct.nvkm_ior*, align 8
  store %struct.nv50_disp* %0, %struct.nv50_disp** %3, align 8
  store %struct.nvkm_head* %1, %struct.nvkm_head** %4, align 8
  %6 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %7 = call i32 @HEAD_DBG(%struct.nvkm_head* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %9 = call %struct.nvkm_ior* @nv50_disp_super_ior_arm(%struct.nvkm_head* %8)
  store %struct.nvkm_ior* %9, %struct.nvkm_ior** %5, align 8
  %10 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %11 = icmp ne %struct.nvkm_ior* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.nvkm_head*, %struct.nvkm_head** %4, align 8
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %5, align 8
  %16 = call i32 @nv50_disp_super_ied_off(%struct.nvkm_head* %14, %struct.nvkm_ior* %15, i32 1)
  br label %17

17:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @HEAD_DBG(%struct.nvkm_head*, i8*) #1

declare dso_local %struct.nvkm_ior* @nv50_disp_super_ior_arm(%struct.nvkm_head*) #1

declare dso_local i32 @nv50_disp_super_ied_off(%struct.nvkm_head*, %struct.nvkm_ior*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
