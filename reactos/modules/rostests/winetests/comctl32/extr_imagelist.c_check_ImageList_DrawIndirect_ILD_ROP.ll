; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_ImageList_DrawIndirect_ILD_ROP.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_check_ImageList_DrawIndirect_ILD_ROP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CLR_NONE = common dso_local global i32 0, align 4
@ILD_IMAGE = common dso_local global i32 0, align 4
@ILD_ROP = common dso_local global i32 0, align 4
@ILS_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32, i32, i32)* @check_ImageList_DrawIndirect_ILD_ROP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ImageList_DrawIndirect_ILD_ROP(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 68, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 7
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 8
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 9
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 10
  %30 = load i32, i32* @CLR_NONE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 11
  %32 = load i32, i32* @CLR_NONE, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 12
  %34 = load i32, i32* @ILD_IMAGE, align 4
  %35 = load i32, i32* @ILD_ROP, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 13
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 14
  %40 = load i32, i32* @ILS_NORMAL, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 15
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 16
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @check_ImageList_DrawIndirect(%struct.TYPE_3__* %15, i32* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @check_ImageList_DrawIndirect(%struct.TYPE_3__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
