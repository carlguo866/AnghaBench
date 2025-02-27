; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)* @nouveau_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gpio_set(%struct.nouveau_gpio* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dcb_gpio_func, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @nouveau_gpio_find(%struct.nouveau_gpio* %15, i32 %16, i32 %17, i32 %18, %struct.dcb_gpio_func* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %11, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @nouveau_gpio_drive(%struct.nouveau_gpio* %45, i32 %46, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %22, %5
  %53 = load i32, i32* %12, align 4
  ret i32 %53
}

declare dso_local i32 @nouveau_gpio_find(%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nouveau_gpio_drive(%struct.nouveau_gpio*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
