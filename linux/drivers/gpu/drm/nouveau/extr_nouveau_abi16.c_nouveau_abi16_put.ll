; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_abi16.c_nouveau_abi16_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_abi16 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nouveau_cli = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_abi16_put(%struct.nouveau_abi16* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_abi16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_cli*, align 8
  store %struct.nouveau_abi16* %0, %struct.nouveau_abi16** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_abi16*, %struct.nouveau_abi16** %3, align 8
  %7 = getelementptr inbounds %struct.nouveau_abi16, %struct.nouveau_abi16* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %12, %struct.nouveau_cli** %5, align 8
  %13 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
