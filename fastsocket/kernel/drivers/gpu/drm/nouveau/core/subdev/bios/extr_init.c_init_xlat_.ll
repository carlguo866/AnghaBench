; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_xlat_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_xlat_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"xlat table pointer %d invalid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvbios_init*, i32, i32)* @init_xlat_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_xlat_(%struct.nvbios_init* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvbios_init*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_bios*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 0
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  store %struct.nouveau_bios* %13, %struct.nouveau_bios** %8, align 8
  %14 = load %struct.nvbios_init*, %struct.nvbios_init** %5, align 8
  %15 = call i32 @init_xlat_table(%struct.nvbios_init* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = call i32 @nv_ro16(%struct.nouveau_bios* %19, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @nv_ro08(%struct.nouveau_bios* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %18
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @init_xlat_table(%struct.nvbios_init*) #1

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
