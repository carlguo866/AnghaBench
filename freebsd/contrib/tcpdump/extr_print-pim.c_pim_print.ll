; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pim_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pim.c_pim_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.pim = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"PIMv%u, %s, length %u\00", align 1
@pimv2_type_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Unknown Type\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"PIMv%u, length %u\0A\09%s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"PIMv%u, length %u\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[|pim]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pim_print(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pim*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.pim*
  store %struct.pim* %11, %struct.pim** %9, align 8
  %12 = load %struct.pim*, %struct.pim** %9, align 8
  %13 = getelementptr inbounds %struct.pim, %struct.pim* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ND_TCHECK(i32 %14)
  %16 = load %struct.pim*, %struct.pim** %9, align 8
  %17 = getelementptr inbounds %struct.pim, %struct.pim* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PIM_VER(i32 %18)
  switch i32 %19, label %63 [
    i32 2, label %20
  ]

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = load %struct.pim*, %struct.pim** %9, align 8
  %28 = getelementptr inbounds %struct.pim, %struct.pim* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PIM_VER(i32 %29)
  %31 = load i32, i32* @pimv2_type_values, align 4
  %32 = load %struct.pim*, %struct.pim** %9, align 8
  %33 = getelementptr inbounds %struct.pim, %struct.pim* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PIM_TYPE(i32 %34)
  %36 = call i32 @tok2str(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_5__*
  %40 = call i32 @ND_PRINT(%struct.TYPE_5__* %39)
  br label %77

41:                                               ; preds = %20
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = load %struct.pim*, %struct.pim** %9, align 8
  %44 = getelementptr inbounds %struct.pim, %struct.pim* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PIM_VER(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @pimv2_type_values, align 4
  %49 = load %struct.pim*, %struct.pim** %9, align 8
  %50 = getelementptr inbounds %struct.pim, %struct.pim* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PIM_TYPE(i32 %51)
  %53 = call i32 @tok2str(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_5__*
  %56 = call i32 @ND_PRINT(%struct.TYPE_5__* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @pimv2_print(%struct.TYPE_5__* %57, i32* %58, i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %41
  br label %73

63:                                               ; preds = %4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = load %struct.pim*, %struct.pim** %9, align 8
  %66 = getelementptr inbounds %struct.pim, %struct.pim* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PIM_VER(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_5__*
  %72 = call i32 @ND_PRINT(%struct.TYPE_5__* %71)
  br label %73

73:                                               ; preds = %63, %62
  br label %77

74:                                               ; No predecessors!
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([7 x i8]* @.str.4 to %struct.TYPE_5__*))
  br label %77

77:                                               ; preds = %74, %73, %25
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @PIM_VER(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @PIM_TYPE(i32) #1

declare dso_local i32 @pimv2_print(%struct.TYPE_5__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
