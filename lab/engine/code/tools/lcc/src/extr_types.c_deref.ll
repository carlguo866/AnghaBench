; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_deref.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_deref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [16 x i8] c"type error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pointer expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @deref(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i64 @isptr(%struct.TYPE_8__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %2, align 8
  br label %12

10:                                               ; preds = %1
  %11 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %6
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = call i64 @isenum(%struct.TYPE_8__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call %struct.TYPE_9__* @unqual(%struct.TYPE_8__* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi %struct.TYPE_8__* [ %20, %16 ], [ %22, %21 ]
  ret %struct.TYPE_8__* %24
}

declare dso_local i64 @isptr(%struct.TYPE_8__*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @isenum(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @unqual(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
