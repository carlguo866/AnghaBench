; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_setkeepalivescount.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_pq_setkeepalivescount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@STATUS_OK = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setsockopt(%s) not supported\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TCP_KEEPCNT\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_KEEPCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq_setkeepalivescount(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_AF_UNIX(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %2
  %17 = load i32, i32* @STATUS_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @LOG, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @STATUS_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %21, %16
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @IS_AF_UNIX(i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
