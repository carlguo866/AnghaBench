; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_printdecl.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_printdecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%k %s;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printdecl(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %28 [
    i32 132, label %8
    i32 129, label %16
    i32 130, label %16
    i32 128, label %27
    i32 131, label %27
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @typestring(i32 %10, i32 %13)
  %15 = call i32 (i32, i8*, i32, ...) @fprint(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %30

16:                                               ; preds = %2, %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @typestring(i32 %21, i32 %24)
  %26 = call i32 (i32, i8*, i32, ...) @fprint(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %25)
  br label %30

27:                                               ; preds = %2, %2
  br label %30

28:                                               ; preds = %2
  %29 = call i32 @assert(i32 0)
  br label %30

30:                                               ; preds = %28, %27, %16, %8
  ret void
}

declare dso_local i32 @fprint(i32, i8*, i32, ...) #1

declare dso_local i32 @typestring(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
