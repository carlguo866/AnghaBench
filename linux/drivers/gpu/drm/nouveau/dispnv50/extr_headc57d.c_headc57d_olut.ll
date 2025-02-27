; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc57d.c_headc57d_olut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_headc57d.c_headc57d_olut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@headc57d_olut_load_8 = common dso_local global i32 0, align 4
@headc57d_olut_load = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @headc57d_olut(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %5 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %6 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 2, i32* %7, align 8
  %8 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %9 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 1029, i32* %10, align 4
  %11 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %12 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 1, i32* %13, align 8
  %14 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = icmp eq i64 %27, 256
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @headc57d_olut_load_8, align 4
  %31 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %32 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  br label %39

34:                                               ; preds = %19, %2
  %35 = load i32, i32* @headc57d_olut_load, align 4
  %36 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %37 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
