; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32, i32*, i64, i32, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64)* }

@WAKEUPEN = common dso_local global i32 0, align 4
@IRQEN = common dso_local global i32 0, align 4
@MCBSP_CLKS_PRCM_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"McBSP%d was not reserved\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*)* @omap_mcbsp_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_free(%struct.omap_mcbsp* %0) #0 {
  %2 = alloca %struct.omap_mcbsp*, align 8
  %3 = alloca i8*, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %2, align 8
  %4 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %5 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %4, i32 0, i32 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %12 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %11, i32 0, i32 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i64)*, i32 (i64)** %16, align 8
  %18 = icmp ne i32 (i64)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %21 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %20, i32 0, i32 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (i64)*, i32 (i64)** %25, align 8
  %27 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %28 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = call i32 %26(i64 %30)
  br label %32

32:                                               ; preds = %19, %10, %1
  %33 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %34 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %33, i32 0, i32 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %41 = load i32, i32* @WAKEUPEN, align 4
  %42 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %45 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %50 = load i32, i32* @IRQEN, align 4
  %51 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %54 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %59 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %62 = bitcast %struct.omap_mcbsp* %61 to i8*
  %63 = call i32 @free_irq(i64 %60, i8* %62)
  br label %77

64:                                               ; preds = %52
  %65 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %66 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %69 = bitcast %struct.omap_mcbsp* %68 to i8*
  %70 = call i32 @free_irq(i64 %67, i8* %69)
  %71 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %72 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %75 = bitcast %struct.omap_mcbsp* %74 to i8*
  %76 = call i32 @free_irq(i64 %73, i8* %75)
  br label %77

77:                                               ; preds = %64, %57
  %78 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %79 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  store i8* %81, i8** %3, align 8
  %82 = call i32 (...) @mcbsp_omap1()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %86 = load i32, i32* @MCBSP_CLKS_PRCM_SRC, align 4
  %87 = call i32 @omap2_mcbsp_set_clks_src(%struct.omap_mcbsp* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %90 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %89, i32 0, i32 1
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %93 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %98 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %101 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %102)
  br label %107

104:                                              ; preds = %88
  %105 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %106 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %109 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  %110 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %2, align 8
  %111 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @kfree(i8* %113)
  ret void
}

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @mcbsp_omap1(...) #1

declare dso_local i32 @omap2_mcbsp_set_clks_src(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
