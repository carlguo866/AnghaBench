; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.resource = type { i32 }
%struct.schizo_softc = type { i64 }
%struct.schizo_icarg = type { %struct.schizo_softc* }

@.str = private unnamed_addr constant [32 x i8] c"invalid interrupt vector 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.TYPE_2__* null, align 8
@schizo_ic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"could not register interrupt controller for vector 0x%lx (%d)\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"belatedly registered as interrupt controller for vector 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"invalid interrupt controller for vector 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @schizo_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.schizo_softc*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.schizo_softc* @device_get_softc(i32 %21)
  store %struct.schizo_softc* %22, %struct.schizo_softc** %18, align 8
  %23 = load %struct.resource*, %struct.resource** %12, align 8
  %24 = call i64 @rman_get_start(%struct.resource* %23)
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* %19, align 8
  %26 = call i64 @INTIGN(i64 %25)
  %27 = load %struct.schizo_softc*, %struct.schizo_softc** %18, align 8
  %28 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %8
  %32 = load i32, i32* %10, align 4
  %33 = load i64, i64* %19, align 8
  %34 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %9, align 4
  br label %96

36:                                               ; preds = %8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %38 = load i64, i64* %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, @schizo_ic
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %45 = load i64, i64* %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.schizo_icarg*
  %50 = getelementptr inbounds %struct.schizo_icarg, %struct.schizo_icarg* %49, i32 0, i32 0
  %51 = load %struct.schizo_softc*, %struct.schizo_softc** %50, align 8
  store %struct.schizo_softc* %51, %struct.schizo_softc** %18, align 8
  br label %86

52:                                               ; preds = %36
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %54 = load i64, i64* %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = load %struct.schizo_softc*, %struct.schizo_softc** %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = call i32 @INTINO(i64 %61)
  %63 = call i32 @schizo_intr_register(%struct.schizo_softc* %60, i32 %62)
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = load i64, i64* %19, align 8
  %69 = load i32, i32* %20, align 4
  %70 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %69)
  %71 = load i32, i32* %20, align 4
  store i32 %71, i32* %9, align 4
  br label %96

72:                                               ; preds = %59
  %73 = load i64, i64* @bootverbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %19, align 8
  %78 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %75, %72
  br label %85

80:                                               ; preds = %52
  %81 = load i32, i32* %10, align 4
  %82 = load i64, i64* %19, align 8
  %83 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %9, align 4
  br label %96

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %43
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.resource*, %struct.resource** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load i8**, i8*** %17, align 8
  %95 = call i32 @bus_generic_setup_intr(i32 %87, i32 %88, %struct.resource* %89, i32 %90, i32* %91, i32* %92, i8* %93, i8** %94)
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %86, %80, %66, %31
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local %struct.schizo_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @INTIGN(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @schizo_intr_register(%struct.schizo_softc*, i32) #1

declare dso_local i32 @INTINO(i64) #1

declare dso_local i32 @bus_generic_setup_intr(i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
