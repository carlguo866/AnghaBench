; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_loop_pop.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_loop_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }

@OP_LOADNIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @loop_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_pop(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = load i32, i32* @OP_LOADNIL, align 4
  %10 = call i32 (...) @cursp()
  %11 = call i32 @genop_1(%struct.TYPE_7__* %8, i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dispatch_linked(%struct.TYPE_7__* %13, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = call i32 (...) @push()
  br label %31

31:                                               ; preds = %29, %12
  ret void
}

declare dso_local i32 @genop_1(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @dispatch_linked(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @push(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
