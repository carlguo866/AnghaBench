; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc57d.c_headc57d_olut_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc57d.c_headc57d_olut_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nv50_dmac }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @headc57d_olut_set(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_dmac*, align 8
  %6 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %7 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_10__* @nv50_disp(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.nv50_dmac* %15, %struct.nv50_dmac** %5, align 8
  %16 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %17 = call i32* @evo_wait(%struct.nv50_dmac* %16, i32 4)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1024
  %26 = add nsw i32 8832, %25
  %27 = call i32 @evo_mthd(i32* %20, i32 %26, i32 4)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %35 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 2
  %39 = or i32 %33, %38
  %40 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %41 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %39, %43
  %45 = call i32 @evo_data(i32* %28, i32 %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @evo_data(i32* %46, i32 -1)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %50 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @evo_data(i32* %48, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %56 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 8
  %60 = call i32 @evo_data(i32* %54, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %63 = call i32 @evo_kick(i32* %61, %struct.nv50_dmac* %62)
  br label %64

64:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.TYPE_10__* @nv50_disp(i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_dmac*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_dmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
