; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_pfnclr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_pfnclr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.nvkm_vmm*, %struct.TYPE_2__ }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%union.anon = type { %struct.nvif_vmm_pfnclr_v0 }
%struct.nvif_vmm_pfnclr_v0 = type { i64, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_pfnclr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_pfnclr(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_uvmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_client*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca %struct.nvkm_vmm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nvkm_uvmm* %0, %struct.nvkm_uvmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_client*, %struct.nvkm_client** %16, align 8
  store %struct.nvkm_client* %17, %struct.nvkm_client** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %union.anon*
  store %union.anon* %19, %union.anon** %9, align 8
  %20 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %20, i32 0, i32 0
  %22 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  store %struct.nvkm_vmm* %22, %struct.nvkm_vmm** %10, align 8
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %union.anon*, %union.anon** %9, align 8
  %27 = bitcast %union.anon* %26 to %struct.nvif_vmm_pfnclr_v0*
  %28 = bitcast %struct.nvif_vmm_pfnclr_v0* %27 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nvif_unpack(i32 %25, i8** %6, i32* %7, i64 %30, i64 %32, i32 0, i32 0, i32 0)
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %3
  %36 = load %union.anon*, %union.anon** %9, align 8
  %37 = bitcast %union.anon* %36 to %struct.nvif_vmm_pfnclr_v0*
  %38 = getelementptr inbounds %struct.nvif_vmm_pfnclr_v0, %struct.nvif_vmm_pfnclr_v0* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %union.anon*, %union.anon** %9, align 8
  %41 = bitcast %union.anon* %40 to %struct.nvif_vmm_pfnclr_v0*
  %42 = getelementptr inbounds %struct.nvif_vmm_pfnclr_v0, %struct.nvif_vmm_pfnclr_v0* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  br label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %35
  %47 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %48 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %46
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %59 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @nvkm_vmm_pfn_unmap(%struct.nvkm_vmm* %61, i64 %62, i64 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %10, align 8
  %66 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %57, %54
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %51, %44
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_vmm_pfn_unmap(%struct.nvkm_vmm*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
