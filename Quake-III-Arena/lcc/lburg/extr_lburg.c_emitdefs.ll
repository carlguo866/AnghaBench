; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitdefs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_lburg.c_emitdefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"#define %P%S_NT %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"static char *%Pntname[] = {\0A%10,\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%1\22%S\22,\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%10\0A};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @emitdefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitdefs(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %5, align 8
  br label %7

7:                                                ; preds = %16, %2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %11, i32 %14)
  br label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %5, align 8
  br label %7

20:                                               ; preds = %7
  %21 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %5, align 8
  br label %24

24:                                               ; preds = %30, %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %5, align 8
  br label %24

34:                                               ; preds = %24
  %35 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
