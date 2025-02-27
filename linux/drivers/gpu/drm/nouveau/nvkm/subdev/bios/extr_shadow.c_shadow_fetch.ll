; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadow.c_shadow_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadow.c_shadow_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.shadow = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32, %struct.nvkm_bios*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, %struct.shadow*, i32)* @shadow_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_fetch(%struct.nvkm_bios* %0, %struct.shadow* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.shadow*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %4, align 8
  store %struct.shadow* %1, %struct.shadow** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 3
  %13 = and i32 %12, -4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.shadow*, %struct.shadow** %5, align 8
  %18 = getelementptr inbounds %struct.shadow, %struct.shadow* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @nvbios_extend(%struct.nvkm_bios* %20, i32 %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load %struct.shadow*, %struct.shadow** %5, align 8
  %26 = getelementptr inbounds %struct.shadow, %struct.shadow* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i8*, i32, i32, %struct.nvkm_bios*)*, i32 (i8*, i32, i32, %struct.nvkm_bios*)** %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %36 = call i32 %29(i8* %30, i32 %31, i32 %34, %struct.nvkm_bios* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %41 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %24, %3
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sge i32 %45, %46
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i64 @nvbios_extend(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
