; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sornv50.c_nv50_sor_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_sornv50.c_nv50_sor_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ior = type { i32, %struct.nvkm_ior_state, %struct.TYPE_6__* }
%struct.nvkm_ior_state = type { i32, i32, i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@LVDS = common dso_local global i8* null, align 8
@TMDS = common dso_local global i8* null, align 8
@UNKNOWN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_sor_state(%struct.nvkm_ior* %0, %struct.nvkm_ior_state* %1) #0 {
  %3 = alloca %struct.nvkm_ior*, align 8
  %4 = alloca %struct.nvkm_ior_state*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_ior* %0, %struct.nvkm_ior** %3, align 8
  store %struct.nvkm_ior_state* %1, %struct.nvkm_ior_state** %4, align 8
  %8 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 8
  %19 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %20 = load %struct.nvkm_ior*, %struct.nvkm_ior** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %20, i32 0, i32 1
  %22 = icmp eq %struct.nvkm_ior_state* %19, %21
  %23 = zext i1 %22 to i32
  %24 = mul nsw i32 %23, 4
  %25 = add nsw i32 %18, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 6359920, %27
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 3840
  %32 = ashr i32 %31, 8
  %33 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %36 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %62 [
    i32 0, label %38
    i32 1, label %44
    i32 2, label %50
    i32 5, label %56
  ]

38:                                               ; preds = %2
  %39 = load i8*, i8** @LVDS, align 8
  %40 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %41 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %43 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %66

44:                                               ; preds = %2
  %45 = load i8*, i8** @TMDS, align 8
  %46 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %47 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %49 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %66

50:                                               ; preds = %2
  %51 = load i8*, i8** @TMDS, align 8
  %52 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %53 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %55 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %54, i32 0, i32 1
  store i32 2, i32* %55, align 4
  br label %66

56:                                               ; preds = %2
  %57 = load i8*, i8** @TMDS, align 8
  %58 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %59 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %61 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %60, i32 0, i32 1
  store i32 3, i32* %61, align 4
  br label %66

62:                                               ; preds = %2
  %63 = load i8*, i8** @UNKNOWN, align 8
  %64 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %65 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %56, %50, %44, %38
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 3
  %69 = load %struct.nvkm_ior_state*, %struct.nvkm_ior_state** %4, align 8
  %70 = getelementptr inbounds %struct.nvkm_ior_state, %struct.nvkm_ior_state* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
