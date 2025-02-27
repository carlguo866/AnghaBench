; ModuleID = '/home/carl/AnghaBench/redis/src/extr_db.c_shutdownCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_db.c_shutdownCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@shared = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"nosave\00", align 1
@SHUTDOWN_NOSAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@SHUTDOWN_SAVE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@C_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Errors trying to SHUTDOWN. Check logs.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shutdownCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %11 = call i32 @addReply(%struct.TYPE_9__* %9, i32 %10)
  br label %75

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %51

17:                                               ; preds = %12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcasecmp(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @SHUTDOWN_NOSAVE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %50

31:                                               ; preds = %17
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strcasecmp(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @SHUTDOWN_SAVE, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %48 = call i32 @addReply(%struct.TYPE_9__* %46, i32 %47)
  br label %75

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50, %12
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @SHUTDOWN_SAVE, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load i32, i32* @SHUTDOWN_NOSAVE, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %55
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @prepareForShutdown(i32 %66)
  %68 = load i64, i64* @C_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 @exit(i32 0) #3
  unreachable

72:                                               ; preds = %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = call i32 @addReplyError(%struct.TYPE_9__* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %45, %8
  ret void
}

declare dso_local i32 @addReply(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i64 @prepareForShutdown(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @addReplyError(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
