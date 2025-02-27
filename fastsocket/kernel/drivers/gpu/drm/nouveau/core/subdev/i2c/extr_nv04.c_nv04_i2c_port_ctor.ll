; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv04.c_nv04_i2c_port_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv04.c_nv04_i2c_port_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.dcb_i2c_entry = type { i32, i32 }
%struct.nv04_i2c_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@nouveau_i2c_bit_algo = common dso_local global i32 0, align 4
@nv04_i2c_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv04_i2c_port_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_i2c_port_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.dcb_i2c_entry*, align 8
  %15 = alloca %struct.nv04_i2c_port*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.dcb_i2c_entry*
  store %struct.dcb_i2c_entry* %18, %struct.dcb_i2c_entry** %14, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @nouveau_i2c_port_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, i32 %22, i32* @nouveau_i2c_bit_algo, %struct.nv04_i2c_port** %15)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.nv04_i2c_port*, %struct.nv04_i2c_port** %15, align 8
  %25 = call %struct.nouveau_object* @nv_object(%struct.nv04_i2c_port* %24)
  %26 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %25, %struct.nouveau_object** %26, align 8
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %7, align 4
  br label %45

31:                                               ; preds = %6
  %32 = load %struct.nv04_i2c_port*, %struct.nv04_i2c_port** %15, align 8
  %33 = getelementptr inbounds %struct.nv04_i2c_port, %struct.nv04_i2c_port* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* @nv04_i2c_func, i32** %34, align 8
  %35 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %14, align 8
  %36 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nv04_i2c_port*, %struct.nv04_i2c_port** %15, align 8
  %39 = getelementptr inbounds %struct.nv04_i2c_port, %struct.nv04_i2c_port* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dcb_i2c_entry*, %struct.dcb_i2c_entry** %14, align 8
  %41 = getelementptr inbounds %struct.dcb_i2c_entry, %struct.dcb_i2c_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nv04_i2c_port*, %struct.nv04_i2c_port** %15, align 8
  %44 = getelementptr inbounds %struct.nv04_i2c_port, %struct.nv04_i2c_port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %31, %29
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @nouveau_i2c_port_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i32*, %struct.nv04_i2c_port**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv04_i2c_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
