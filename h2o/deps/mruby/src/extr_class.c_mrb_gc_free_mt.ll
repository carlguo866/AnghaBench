; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_mrb_gc_free_mt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_class.c_mrb_gc_free_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@mt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_gc_free_mt(i32* %0, %struct.RClass* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.RClass* %1, %struct.RClass** %4, align 8
  %5 = load i32, i32* @mt, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.RClass*, %struct.RClass** %4, align 8
  %8 = getelementptr inbounds %struct.RClass, %struct.RClass* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kh_destroy(i32 %5, i32* %6, i32 %9)
  ret void
}

declare dso_local i32 @kh_destroy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
