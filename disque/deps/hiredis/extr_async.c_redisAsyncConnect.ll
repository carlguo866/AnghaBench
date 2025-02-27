; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_async.c_redisAsyncConnect.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_async.c_redisAsyncConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @redisAsyncConnect(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32* @redisConnectNonBlock(i8* %8, i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @redisAsyncInitialize(i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @redisFree(i32* %20)
  store i32* null, i32** %3, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @__redisAsyncCopyError(i32* %23)
  %25 = load i32*, i32** %7, align 8
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %22, %19, %13
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32* @redisConnectNonBlock(i8*, i32) #1

declare dso_local i32* @redisAsyncInitialize(i32*) #1

declare dso_local i32 @redisFree(i32*) #1

declare dso_local i32 @__redisAsyncCopyError(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
