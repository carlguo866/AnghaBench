; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c__nouveau_falcon_rd32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_falcon.c__nouveau_falcon_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_falcon = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nouveau_falcon_rd32(%struct.nouveau_object* %0, i64 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nouveau_falcon*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nouveau_falcon*
  store %struct.nouveau_falcon* %8, %struct.nouveau_falcon** %5, align 8
  %9 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %10 = load %struct.nouveau_falcon*, %struct.nouveau_falcon** %5, align 8
  %11 = getelementptr inbounds %struct.nouveau_falcon, %struct.nouveau_falcon* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @nv_rd32(%struct.nouveau_falcon* %9, i64 %14)
  ret i32 %15
}

declare dso_local i32 @nv_rd32(%struct.nouveau_falcon*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
