; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_infoCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_infoCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@shared = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @infoCommand(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %12, i64 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i8* [ %16, %9 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %17 ]
  store i8* %19, i8** %3, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shared, i32 0, i32 0), align 4
  %27 = call i32 @addReply(%struct.TYPE_8__* %25, i32 %26)
  br label %38

28:                                               ; preds = %18
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @genRedisInfoString(i8* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sdslen(i32 %33)
  %35 = call i32 @addReplyVerbatim(%struct.TYPE_8__* %31, i32 %32, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sdsfree(i32 %36)
  br label %38

38:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @addReply(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @genRedisInfoString(i8*) #1

declare dso_local i32 @addReplyVerbatim(%struct.TYPE_8__*, i32, i32, i8*) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
