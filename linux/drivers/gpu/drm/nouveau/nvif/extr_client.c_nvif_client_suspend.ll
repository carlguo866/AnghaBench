; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_client.c_nvif_client_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_client.c_nvif_client_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_client = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_client_suspend(%struct.nvif_client* %0) #0 {
  %2 = alloca %struct.nvif_client*, align 8
  store %struct.nvif_client* %0, %struct.nvif_client** %2, align 8
  %3 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %4 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (i32)*, i32 (i32)** %6, align 8
  %8 = load %struct.nvif_client*, %struct.nvif_client** %2, align 8
  %9 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 %7(i32 %11)
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
