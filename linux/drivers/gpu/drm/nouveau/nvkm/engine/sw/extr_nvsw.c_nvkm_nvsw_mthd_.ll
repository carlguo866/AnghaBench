; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nvsw.c_nvkm_nvsw_mthd_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nvsw.c_nvkm_nvsw_mthd_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_nvsw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_nvsw*, i32, i8*, i32)* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, i8*, i32)* @nvkm_nvsw_mthd_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_nvsw_mthd_(%struct.nvkm_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_nvsw*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %12 = call %struct.nvkm_nvsw* @nvkm_nvsw(%struct.nvkm_object* %11)
  store %struct.nvkm_nvsw* %12, %struct.nvkm_nvsw** %10, align 8
  %13 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %10, align 8
  %14 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nvkm_nvsw*, i32, i8*, i32)*, i32 (%struct.nvkm_nvsw*, i32, i8*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.nvkm_nvsw*, i32, i8*, i32)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %10, align 8
  %21 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.nvkm_nvsw*, i32, i8*, i32)*, i32 (%struct.nvkm_nvsw*, i32, i8*, i32)** %23, align 8
  %25 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %24(%struct.nvkm_nvsw* %25, i32 %26, i8* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.nvkm_nvsw* @nvkm_nvsw(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
