; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv01_graph_mthd_bind_clip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv01_graph_mthd_bind_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv01_graph_mthd_bind_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv01_graph_mthd_bind_clip(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @nv04_graph_mthd_bind_class(%struct.nouveau_object* %10, i8* %11, i32 %12)
  switch i32 %13, label %20 [
    i32 48, label %14
    i32 25, label %17
  ]

14:                                               ; preds = %4
  %15 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %16 = call i32 @nv04_graph_set_ctx1(%struct.nouveau_object* %15, i32 8192, i32 0)
  store i32 0, i32* %5, align 4
  br label %21

17:                                               ; preds = %4
  %18 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %19 = call i32 @nv04_graph_set_ctx1(%struct.nouveau_object* %18, i32 8192, i32 8192)
  store i32 0, i32* %5, align 4
  br label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %17, %14
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @nv04_graph_mthd_bind_class(%struct.nouveau_object*, i8*, i32) #1

declare dso_local i32 @nv04_graph_set_ctx1(%struct.nouveau_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
