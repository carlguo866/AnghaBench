; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_Op_isPrototypeOf.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_Op_isPrototypeOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Op_isPrototypeOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Op_isPrototypeOf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_3__* @js_toobject(i32* %5, i32 0)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @js_isobject(i32* %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_3__* @js_toobject(i32* %11, i32 1)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %4, align 8
  br label %13

13:                                               ; preds = %24, %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = icmp eq %struct.TYPE_3__* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @js_pushboolean(i32* %21, i32 1)
  br label %31

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %13, label %27

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @js_pushboolean(i32* %29, i32 0)
  br label %31

31:                                               ; preds = %28, %20
  ret void
}

declare dso_local %struct.TYPE_3__* @js_toobject(i32*, i32) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i32 @js_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
