; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lazyfree.c_lazyfreeFreeDatabaseFromBioThread.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lazyfree.c_lazyfreeFreeDatabaseFromBioThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lazyfree_objects = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lazyfreeFreeDatabaseFromBioThread(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @dictSize(i32* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @dictRelease(i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @dictRelease(i32* %10)
  %12 = load i32, i32* @lazyfree_objects, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @atomicDecr(i32 %12, i64 %13)
  ret void
}

declare dso_local i64 @dictSize(i32*) #1

declare dso_local i32 @dictRelease(i32*) #1

declare dso_local i32 @atomicDecr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
