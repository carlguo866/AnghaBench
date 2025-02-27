; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_authCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_authCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32 }

@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"Client sent AUTH, but no password is set\00", align 1
@shared = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid password\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @authCommand(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @addReplyError(%struct.TYPE_9__* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %11, i64 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %17 = call i32 @time_independent_strcmp(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shared, i32 0, i32 0), align 4
  %24 = call i32 @addReply(%struct.TYPE_9__* %22, i32 %23)
  br label %30

25:                                               ; preds = %8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @addReplyError(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %19
  br label %31

31:                                               ; preds = %30, %5
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @time_independent_strcmp(i32, i32) #1

declare dso_local i32 @addReply(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
