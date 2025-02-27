; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/bsp/extr_nvc0.c_nvc0_bsp_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/bsp/extr_nvc0.c_nvc0_bsp_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nvc0_bsp_priv = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"PBSP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bsp\00", align 1
@nvc0_bsp_cclass = common dso_local global i32 0, align 4
@nvc0_bsp_sclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_bsp_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_bsp_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nvc0_bsp_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = call i32 @nouveau_falcon_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, i32 540672, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.nvc0_bsp_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nvc0_bsp_priv*, %struct.nvc0_bsp_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nvc0_bsp_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %38

27:                                               ; preds = %6
  %28 = load %struct.nvc0_bsp_priv*, %struct.nvc0_bsp_priv** %14, align 8
  %29 = call %struct.TYPE_3__* @nv_subdev(%struct.nvc0_bsp_priv* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 32768, i32* %30, align 4
  %31 = load %struct.nvc0_bsp_priv*, %struct.nvc0_bsp_priv** %14, align 8
  %32 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_bsp_priv* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32* @nvc0_bsp_cclass, i32** %33, align 8
  %34 = load i32, i32* @nvc0_bsp_sclass, align 4
  %35 = load %struct.nvc0_bsp_priv*, %struct.nvc0_bsp_priv** %14, align 8
  %36 = call %struct.TYPE_4__* @nv_engine(%struct.nvc0_bsp_priv* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %27, %25
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @nouveau_falcon_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32, i8*, i8*, %struct.nvc0_bsp_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_bsp_priv*) #1

declare dso_local %struct.TYPE_3__* @nv_subdev(%struct.nvc0_bsp_priv*) #1

declare dso_local %struct.TYPE_4__* @nv_engine(%struct.nvc0_bsp_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
