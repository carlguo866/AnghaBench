; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_object_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_object_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_gpuobj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, %struct.nvkm_gpuobj*, i32, %struct.nvkm_gpuobj**)* @nv40_gr_object_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_gr_object_bind(%struct.nvkm_object* %0, %struct.nvkm_gpuobj* %1, i32 %2, %struct.nvkm_gpuobj** %3) #0 {
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca %struct.nvkm_gpuobj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_gpuobj**, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store %struct.nvkm_gpuobj* %1, %struct.nvkm_gpuobj** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_gpuobj** %3, %struct.nvkm_gpuobj*** %8, align 8
  %10 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %6, align 8
  %18 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %19 = call i32 @nvkm_gpuobj_new(i32 %15, i32 20, i32 %16, i32 0, %struct.nvkm_gpuobj* %17, %struct.nvkm_gpuobj** %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %4
  %23 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %24 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %23, align 8
  %25 = call i32 @nvkm_kmap(%struct.nvkm_gpuobj* %24)
  %26 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %27 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %26, align 8
  %28 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %29 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %27, i32 0, i32 %30)
  %32 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %33 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %32, align 8
  %34 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %33, i32 4, i32 0)
  %35 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %36 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %35, align 8
  %37 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %36, i32 8, i32 0)
  %38 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %39 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %38, align 8
  %40 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %39, i32 12, i32 0)
  %41 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %42 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %41, align 8
  %43 = call i32 @nvkm_wo32(%struct.nvkm_gpuobj* %42, i32 16, i32 0)
  %44 = load %struct.nvkm_gpuobj**, %struct.nvkm_gpuobj*** %8, align 8
  %45 = load %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj** %44, align 8
  %46 = call i32 @nvkm_done(%struct.nvkm_gpuobj* %45)
  br label %47

47:                                               ; preds = %22, %4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @nvkm_gpuobj_new(i32, i32, i32, i32, %struct.nvkm_gpuobj*, %struct.nvkm_gpuobj**) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_gpuobj*) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_gpuobj*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_gpuobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
