; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/test/stress/extr_microbench.c_malloc_sdallocx.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/test/stress/extr_microbench.c_malloc_sdallocx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Unexpected malloc() failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @malloc_sdallocx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malloc_sdallocx() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @malloc(i32 1)
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @test_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %10

7:                                                ; preds = %0
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @sdallocx(i8* %8, i32 1, i32 0)
  br label %10

10:                                               ; preds = %7, %5
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @test_fail(i8*) #1

declare dso_local i32 @sdallocx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
