; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_client.c_client_unref.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_client.c_client_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { %struct.server_pool*, i32, i64 }
%struct.server_pool = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@conn_tqe = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unref conn %p owner %p from pool '%.*s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @client_unref(%struct.conn* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca %struct.server_pool*, align 8
  store %struct.conn* %0, %struct.conn** %2, align 8
  %4 = load %struct.conn*, %struct.conn** %2, align 8
  %5 = getelementptr inbounds %struct.conn, %struct.conn* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.conn*, %struct.conn** %2, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.conn*, %struct.conn** %2, align 8
  %19 = getelementptr inbounds %struct.conn, %struct.conn* %18, i32 0, i32 0
  %20 = load %struct.server_pool*, %struct.server_pool** %19, align 8
  %21 = icmp ne %struct.server_pool* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.conn*, %struct.conn** %2, align 8
  %25 = getelementptr inbounds %struct.conn, %struct.conn* %24, i32 0, i32 0
  %26 = load %struct.server_pool*, %struct.server_pool** %25, align 8
  store %struct.server_pool* %26, %struct.server_pool** %3, align 8
  %27 = load %struct.conn*, %struct.conn** %2, align 8
  %28 = getelementptr inbounds %struct.conn, %struct.conn* %27, i32 0, i32 0
  store %struct.server_pool* null, %struct.server_pool** %28, align 8
  %29 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %30 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %36 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %40 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %39, i32 0, i32 2
  %41 = load %struct.conn*, %struct.conn** %2, align 8
  %42 = load i32, i32* @conn_tqe, align 4
  %43 = call i32 @TAILQ_REMOVE(i32* %40, %struct.conn* %41, i32 %42)
  %44 = load i32, i32* @LOG_VVERB, align 4
  %45 = load %struct.conn*, %struct.conn** %2, align 8
  %46 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %47 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %48 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %52 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @log_debug(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.conn* %45, %struct.server_pool* %46, i32 %50, i32 %54)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.conn*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conn*, %struct.server_pool*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
