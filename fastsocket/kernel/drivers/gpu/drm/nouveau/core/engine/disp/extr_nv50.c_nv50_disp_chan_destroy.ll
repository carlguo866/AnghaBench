; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_nv50_disp_chan_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan = type { i32, i32 }
%struct.nv50_disp_base = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_disp_chan_destroy(%struct.nv50_disp_chan* %0) #0 {
  %2 = alloca %struct.nv50_disp_chan*, align 8
  %3 = alloca %struct.nv50_disp_base*, align 8
  store %struct.nv50_disp_chan* %0, %struct.nv50_disp_chan** %2, align 8
  %4 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %5 = call %struct.TYPE_2__* @nv_object(%struct.nv50_disp_chan* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = bitcast i8* %8 to %struct.nv50_disp_base*
  store %struct.nv50_disp_base* %9, %struct.nv50_disp_base** %3, align 8
  %10 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %11 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.nv50_disp_base*, %struct.nv50_disp_base** %3, align 8
  %16 = getelementptr inbounds %struct.nv50_disp_base, %struct.nv50_disp_base* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %20 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %19, i32 0, i32 1
  %21 = call i32 @nouveau_namedb_destroy(i32* %20)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.nv50_disp_chan*) #1

declare dso_local i32 @nouveau_namedb_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
