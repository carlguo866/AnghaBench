; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_optchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_optchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32* }

@SC_SCR_EX = common dso_local global i32 0, align 4
@SC_SCR_VI = common dso_local global i32 0, align 4
@G_SRESTART = common dso_local global i32 0, align 4
@CL_RENAME_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_optchange(%struct.TYPE_13__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = call %struct.TYPE_13__* @CLP(%struct.TYPE_13__* %10)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %9, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %66 [
    i32 129, label %13
    i32 132, label %19
    i32 131, label %19
    i32 130, label %25
    i32 128, label %31
  ]

13:                                               ; preds = %4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = load i32, i32* @SC_SCR_EX, align 4
  %16 = load i32, i32* @SC_SCR_VI, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @F_CLR(%struct.TYPE_13__* %14, i32 %17)
  br label %19

19:                                               ; preds = %4, %4, %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = load i32, i32* @G_SRESTART, align 4
  %24 = call i32 @F_SET(%struct.TYPE_13__* %22, i32 %23)
  br label %66

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_omesg(%struct.TYPE_13__* %26, %struct.TYPE_13__* %27, i32 %29)
  br label %66

31:                                               ; preds = %4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = load i32, i32* @CL_RENAME_OK, align 4
  %38 = call i32 @F_SET(%struct.TYPE_13__* %36, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %35
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @cl_rename(%struct.TYPE_13__* %51, i32* %56, i32 1)
  br label %58

58:                                               ; preds = %50, %43, %35
  br label %65

59:                                               ; preds = %31
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = load i32, i32* @CL_RENAME_OK, align 4
  %62 = call i32 @F_CLR(%struct.TYPE_13__* %60, i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = call i32 @cl_rename(%struct.TYPE_13__* %63, i32* null, i32 0)
  br label %65

65:                                               ; preds = %59, %58
  br label %66

66:                                               ; preds = %4, %65, %25, %19
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @CLP(%struct.TYPE_13__*) #1

declare dso_local i32 @F_CLR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @cl_omesg(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @cl_rename(%struct.TYPE_13__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
