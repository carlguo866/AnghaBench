; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_box_score.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_palette.c_box_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box = type { i32, i32, i32, i32, i32, i32 }

@R_SHIFT = common dso_local global i32 0, align 4
@R_SCALE = common dso_local global i32 0, align 4
@G_SHIFT = common dso_local global i32 0, align 4
@G_SCALE = common dso_local global i32 0, align 4
@B_SHIFT = common dso_local global i32 0, align 4
@B_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.box*)* @box_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @box_score(%struct.box* %0) #0 {
  %2 = alloca %struct.box*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.box* %0, %struct.box** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.box*, %struct.box** %2, align 8
  %6 = getelementptr inbounds %struct.box, %struct.box* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.box*, %struct.box** %2, align 8
  %9 = getelementptr inbounds %struct.box, %struct.box* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %7, %10
  %12 = load i32, i32* @R_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @R_SCALE, align 4
  %15 = mul i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = mul i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.box*, %struct.box** %2, align 8
  %22 = getelementptr inbounds %struct.box, %struct.box* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.box*, %struct.box** %2, align 8
  %25 = getelementptr inbounds %struct.box, %struct.box* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %23, %26
  %28 = load i32, i32* @G_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @G_SCALE, align 4
  %31 = mul i32 %29, %30
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = mul i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.box*, %struct.box** %2, align 8
  %38 = getelementptr inbounds %struct.box, %struct.box* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.box*, %struct.box** %2, align 8
  %41 = getelementptr inbounds %struct.box, %struct.box* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %39, %42
  %44 = load i32, i32* @B_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @B_SCALE, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
