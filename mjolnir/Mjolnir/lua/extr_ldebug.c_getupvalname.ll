; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldebug.c_getupvalname.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldebug.c_getupvalname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8**)* @getupvalname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getupvalname(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_5__* @ci_func(i32* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %21, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i8* @upvalname(i32 %33, i32 %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %42

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %12

41:                                               ; preds = %12
  store i8* null, i8** %4, align 8
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i8*, i8** %4, align 8
  ret i8* %43
}

declare dso_local %struct.TYPE_5__* @ci_func(i32*) #1

declare dso_local i8* @upvalname(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
