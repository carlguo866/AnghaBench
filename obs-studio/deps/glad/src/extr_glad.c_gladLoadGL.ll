; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_gladLoadGL.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad.c_gladLoadGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gladLoadGL() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @open_gl()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 @gladLoadGLLoader(i32* @get_proc)
  %6 = call i32 (...) @close_gl()
  store i32 1, i32* %1, align 4
  br label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %4
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

declare dso_local i64 @open_gl(...) #1

declare dso_local i32 @gladLoadGLLoader(i32*) #1

declare dso_local i32 @close_gl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
