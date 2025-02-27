; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_disp.c_nvbios_ocfg_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_disp.c_nvbios_ocfg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_ocfg = type { i8**, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_ocfg_parse(%struct.nvkm_bios* %0, i64 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.nvbios_ocfg* %7) #0 {
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nvbios_ocfg*, align 8
  %17 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.nvbios_ocfg* %7, %struct.nvbios_ocfg** %16, align 8
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i64 @nvbios_ocfg_entry(%struct.nvkm_bios* %18, i64 %19, i32 %20, i32* %21, i32* %22, i32* %23, i32* %24)
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %17, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %8
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %30 = load i64, i64* %17, align 8
  %31 = add nsw i64 %30, 0
  %32 = call i32 @nvbios_rd08(%struct.nvkm_bios* %29, i64 %31)
  %33 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %16, align 8
  %34 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %36 = load i64, i64* %17, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i8* @nvbios_rd16(%struct.nvkm_bios* %35, i64 %37)
  %39 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %16, align 8
  %40 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %42 = load i64, i64* %17, align 8
  %43 = add nsw i64 %42, 2
  %44 = call i8* @nvbios_rd16(%struct.nvkm_bios* %41, i64 %43)
  %45 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %16, align 8
  %46 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %44, i8** %48, align 8
  %49 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %50 = load i64, i64* %17, align 8
  %51 = add nsw i64 %50, 4
  %52 = call i8* @nvbios_rd16(%struct.nvkm_bios* %49, i64 %51)
  %53 = load %struct.nvbios_ocfg*, %struct.nvbios_ocfg** %16, align 8
  %54 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %52, i8** %56, align 8
  br label %57

57:                                               ; preds = %28, %8
  %58 = load i64, i64* %17, align 8
  ret i64 %58
}

declare dso_local i64 @nvbios_ocfg_entry(%struct.nvkm_bios*, i64, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i8* @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
