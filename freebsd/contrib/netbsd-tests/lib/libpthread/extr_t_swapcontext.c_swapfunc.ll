; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_swapcontext.c_swapfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_swapcontext.c_swapfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nself = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"after swapcontext self = %p\0A\00", align 1
@oself = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Test succeeded\0A\00", align 1
@nctx = common dso_local global i32 0, align 4
@octx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @swapfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i64 (...) @pthread_self()
  %4 = inttoptr i64 %3 to i8*
  store i8* %4, i8** @nself, align 8
  %5 = load i8*, i8** @nself, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @oself, align 4
  %8 = load i8*, i8** @nself, align 8
  %9 = call i32 @ATF_REQUIRE_EQ(i32 %7, i8* %8)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @swapcontext(i32* @nctx, i32* @octx)
  %12 = call i32 @ATF_REQUIRE(i32 %11)
  ret void
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ATF_REQUIRE_EQ(i32, i8*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @swapcontext(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
