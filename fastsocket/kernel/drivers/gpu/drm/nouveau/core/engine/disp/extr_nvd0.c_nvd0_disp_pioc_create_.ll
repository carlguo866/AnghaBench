; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_pioc_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nvd0.c_nvd0_disp_pioc_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**)* @nvd0_disp_pioc_create_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_disp_pioc_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_oclass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %13 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %14 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %15 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i8**, i8*** %12, align 8
  %19 = call i32 @nv50_disp_chan_create_(%struct.nouveau_object* %13, %struct.nouveau_object* %14, %struct.nouveau_oclass* %15, i32 %16, i32 %17, i8** %18)
  ret i32 %19
}

declare dso_local i32 @nv50_disp_chan_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
