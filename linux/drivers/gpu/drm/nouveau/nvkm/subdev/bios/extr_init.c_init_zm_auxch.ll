; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_auxch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_auxch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ZM_AUXCH\09AUX[0x%08x] 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09AUX[0x%08x] = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_auxch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_auxch(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %7 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %8 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %12, align 8
  store %struct.nvkm_bios* %13, %struct.nvkm_bios** %3, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @nvbios_rd32(%struct.nvkm_bios* %14, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 5
  %25 = call i32 @nvbios_rd08(%struct.nvkm_bios* %20, i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 6
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %37, %1
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %39 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %40 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 0
  %43 = call i32 @nvbios_rd08(%struct.nvkm_bios* %38, i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @init_wrauxr(%struct.nvbios_init* %47, i32 %48, i32 %49)
  %51 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %52 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %33

55:                                               ; preds = %33
  ret void
}

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @init_wrauxr(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
