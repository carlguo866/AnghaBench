; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_addReplySubcommandSyntaxError.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_addReplySubcommandSyntaxError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [71 x i8] c"Unknown subcommand or wrong number of arguments for '%s'. Try %s HELP.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplySubcommandSyntaxError(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %6, i64 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @sdsnew(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sdstoupper(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @addReplyErrorFormat(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sdsfree(i32 %26)
  ret void
}

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdstoupper(i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
