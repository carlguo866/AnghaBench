; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_ntfy_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_ntfy_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_abi16_chan = type { i32 }
%struct.nouveau_abi16_ntfy = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_abi16_chan*, %struct.nouveau_abi16_ntfy*)* @nouveau_abi16_ntfy_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_abi16_ntfy_fini(%struct.nouveau_abi16_chan* %0, %struct.nouveau_abi16_ntfy* %1) #0 {
  %3 = alloca %struct.nouveau_abi16_chan*, align 8
  %4 = alloca %struct.nouveau_abi16_ntfy*, align 8
  store %struct.nouveau_abi16_chan* %0, %struct.nouveau_abi16_chan** %3, align 8
  store %struct.nouveau_abi16_ntfy* %1, %struct.nouveau_abi16_ntfy** %4, align 8
  %5 = load %struct.nouveau_abi16_ntfy*, %struct.nouveau_abi16_ntfy** %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_abi16_ntfy, %struct.nouveau_abi16_ntfy* %5, i32 0, i32 2
  %7 = call i32 @nvif_object_fini(i32* %6)
  %8 = load %struct.nouveau_abi16_chan*, %struct.nouveau_abi16_chan** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_abi16_chan, %struct.nouveau_abi16_chan* %8, i32 0, i32 0
  %10 = load %struct.nouveau_abi16_ntfy*, %struct.nouveau_abi16_ntfy** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_abi16_ntfy, %struct.nouveau_abi16_ntfy* %10, i32 0, i32 1
  %12 = call i32 @nvkm_mm_free(i32* %9, i32* %11)
  %13 = load %struct.nouveau_abi16_ntfy*, %struct.nouveau_abi16_ntfy** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_abi16_ntfy, %struct.nouveau_abi16_ntfy* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.nouveau_abi16_ntfy*, %struct.nouveau_abi16_ntfy** %4, align 8
  %17 = call i32 @kfree(%struct.nouveau_abi16_ntfy* %16)
  ret void
}

declare dso_local i32 @nvif_object_fini(i32*) #1

declare dso_local i32 @nvkm_mm_free(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nouveau_abi16_ntfy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
