; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_fix_new_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_fix_new_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"register value used as expression\00", align 1
@BFD_RELOC_RVA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fix_new_exp(i32* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %71 [
    i32 135, label %21
    i32 132, label %22
    i32 134, label %25
    i32 129, label %44
    i32 128, label %52
    i32 131, label %59
    i32 130, label %63
    i32 133, label %67
  ]

21:                                               ; preds = %6
  br label %74

22:                                               ; preds = %6
  %23 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @as_bad(i32 %23)
  br label %74

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = call i32* @make_expr_symbol(%struct.TYPE_4__* %26)
  store i32* %27, i32** %17, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 130, i32* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32* @fix_new_exp(i32* %37, i32 %38, i32 %39, %struct.TYPE_4__* %40, i32 %41, i32 %42)
  store i32* %43, i32** %7, align 8
  br label %84

44:                                               ; preds = %6
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %14, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* @BFD_RELOC_RVA, align 4
  store i32 %51, i32* %13, align 4
  br label %74

52:                                               ; preds = %6
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %15, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  br label %74

59:                                               ; preds = %6
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %15, align 8
  br label %63

63:                                               ; preds = %6, %59
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %14, align 8
  br label %67

67:                                               ; preds = %6, %63
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  br label %74

71:                                               ; preds = %6
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %73 = call i32* @make_expr_symbol(%struct.TYPE_4__* %72)
  store i32* %73, i32** %14, align 8
  br label %74

74:                                               ; preds = %71, %67, %52, %44, %22, %21
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32* @fix_new_internal(i32* %75, i32 %76, i32 %77, i32* %78, i32* %79, i32 %80, i32 %81, i32 %82)
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %74, %25
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @make_expr_symbol(%struct.TYPE_4__*) #1

declare dso_local i32* @fix_new_internal(i32*, i32, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
