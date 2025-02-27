; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c__mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c__mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*)* @_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mult(i8* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = call i32* (...) @BN_new()
  store i32* %12, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @_bnerr(i8* %16)
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @BN_mul(i32* %20, i32 %23, i32 %26, i32* %27)
  %29 = call i32 @BN_ERRCHECK(i8* %19, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = call i32 @_moveb(i8* %30, i32* %31, %struct.TYPE_6__* %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @BN_free(i32* %34)
  ret void
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local i32 @BN_ERRCHECK(i8*, i32) #1

declare dso_local i32 @BN_mul(i32*, i32, i32, i32*) #1

declare dso_local i32 @_moveb(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
