; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_siginfo_to_siginfo32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_siginfo_to_siginfo32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.siginfo32 = type { i64, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siginfo_to_siginfo32(%struct.TYPE_7__* %0, %struct.siginfo32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.siginfo32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.siginfo32* %1, %struct.siginfo32** %4, align 8
  %5 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %6 = call i32 @bzero(%struct.siginfo32* %5, i32 48)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %11 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %16 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %21 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %26 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %31 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %36 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %41 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %47 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %53 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.siginfo32*, %struct.siginfo32** %4, align 8
  %58 = getelementptr inbounds %struct.siginfo32, %struct.siginfo32* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.siginfo32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
