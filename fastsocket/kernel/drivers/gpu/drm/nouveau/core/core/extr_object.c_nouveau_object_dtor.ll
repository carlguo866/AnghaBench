; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_object.c_nouveau_object_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_object*)* }

@.str = private unnamed_addr constant [12 x i8] c"destroying\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nouveau_object_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_object_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %3 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %4 = call i32 @nv_debug(%struct.nouveau_object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = call %struct.TYPE_2__* @nv_ofuncs(%struct.nouveau_object* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.nouveau_object*)*, i32 (%struct.nouveau_object*)** %7, align 8
  %9 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %10 = call i32 %8(%struct.nouveau_object* %9)
  ret void
}

declare dso_local i32 @nv_debug(%struct.nouveau_object*, i8*) #1

declare dso_local %struct.TYPE_2__* @nv_ofuncs(%struct.nouveau_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
