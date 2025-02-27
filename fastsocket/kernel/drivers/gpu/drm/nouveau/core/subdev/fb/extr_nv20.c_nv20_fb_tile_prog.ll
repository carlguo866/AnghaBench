; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv20.c_nv20_fb_tile_prog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv20.c_nv20_fb_tile_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { i32 }
%struct.nouveau_fb_tile = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv20_fb_tile_prog(%struct.nouveau_fb* %0, i32 %1, %struct.nouveau_fb_tile* %2) #0 {
  %4 = alloca %struct.nouveau_fb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_fb_tile*, align 8
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_fb_tile* %2, %struct.nouveau_fb_tile** %6, align 8
  %7 = load %struct.nouveau_fb*, %struct.nouveau_fb** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 16
  %10 = add nsw i32 1049156, %9
  %11 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %6, align 8
  %12 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nv_wr32(%struct.nouveau_fb* %7, i32 %10, i32 %13)
  %15 = load %struct.nouveau_fb*, %struct.nouveau_fb** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 16
  %18 = add nsw i32 1049160, %17
  %19 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %6, align 8
  %20 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nv_wr32(%struct.nouveau_fb* %15, i32 %18, i32 %21)
  %23 = load %struct.nouveau_fb*, %struct.nouveau_fb** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 16
  %26 = add nsw i32 1049152, %25
  %27 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %6, align 8
  %28 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nv_wr32(%struct.nouveau_fb* %23, i32 %26, i32 %29)
  %31 = load %struct.nouveau_fb*, %struct.nouveau_fb** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 16
  %34 = add nsw i32 1049152, %33
  %35 = call i32 @nv_rd32(%struct.nouveau_fb* %31, i32 %34)
  %36 = load %struct.nouveau_fb*, %struct.nouveau_fb** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 4
  %39 = add nsw i32 1049344, %38
  %40 = load %struct.nouveau_fb_tile*, %struct.nouveau_fb_tile** %6, align 8
  %41 = getelementptr inbounds %struct.nouveau_fb_tile, %struct.nouveau_fb_tile* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nv_wr32(%struct.nouveau_fb* %36, i32 %39, i32 %42)
  ret void
}

declare dso_local i32 @nv_wr32(%struct.nouveau_fb*, i32, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_fb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
