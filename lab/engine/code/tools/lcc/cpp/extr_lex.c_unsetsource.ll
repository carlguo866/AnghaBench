; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_lex.c_unsetsource.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/cpp/extr_lex.c_unsetsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@cursource = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsetsource() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cursource, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @close(i64 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @dofree(%struct.TYPE_4__* %14)
  br label %16

16:                                               ; preds = %7, %0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** @cursource, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = call i32 @dofree(%struct.TYPE_4__* %20)
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @dofree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
