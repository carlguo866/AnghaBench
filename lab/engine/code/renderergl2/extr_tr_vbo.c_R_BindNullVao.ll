; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_BindNullVao.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_vbo.c_R_BindNullVao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"--- R_BindNullVao ---\0A\00", align 1
@glState = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@glRefConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_BindNullVao() #0 {
  %1 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glState, i32 0, i32 0), align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glRefConfig, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = call i32 @qglBindVertexArray(i32 0)
  %9 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %10 = call i32 @qglBindBuffer(i32 %9, i32 0)
  br label %16

11:                                               ; preds = %4
  %12 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %13 = call i32 @qglBindBuffer(i32 %12, i32 0)
  %14 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %15 = call i32 @qglBindBuffer(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %11, %7
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @glState, i32 0, i32 0), align 8
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i32 (...) @GL_CheckErrors()
  ret void
}

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i32 @qglBindVertexArray(i32) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @GL_CheckErrors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
