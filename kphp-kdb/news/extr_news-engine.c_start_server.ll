; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@news_parse_function = common dso_local global i32 0, align 4
@tl_parse_function = common dso_local global i32 0, align 4
@tl_aio_timeout = common dso_local global double 0.000000e+00, align 8
@news_engine = common dso_local global i32 0, align 4
@news_functions = common dso_local global i32 0, align 4
@ct_rpc_server = common dso_local global i32 0, align 4
@rpc_methods = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @news_parse_function, align 4
  store i32 %4, i32* @tl_parse_function, align 4
  store double 2.000000e+00, double* @tl_aio_timeout, align 8
  %5 = call i32 @server_init(i32* @news_engine, i32* @news_functions, i32* @ct_rpc_server, i32* @rpc_methods)
  store i32 0, i32* %1, align 4
  store i32 17, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %0
  %7 = load i64, i64* @verbosity, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 1023
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @active_connections, align 4
  %16 = load i32, i32* @maxconn, align 4
  %17 = load i32, i32* @NB_used, align 4
  %18 = load i32, i32* @NB_alloc, align 4
  %19 = load i32, i32* @NB_max, align 4
  %20 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %9, %6
  %22 = load i64, i64* @binlog_disabled, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @log_cur_pos()
  br label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @log_write_pos()
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @fetch_binlog_data(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @epoll_work(i32 %31)
  %33 = call i32 (...) @process_signals()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %61

36:                                               ; preds = %28
  %37 = call i32 (...) @check_all_aio_completions()
  %38 = call i32 (...) @tl_restart_all_ready()
  %39 = call i32 (...) @flush_binlog()
  %40 = load i64, i64* @binlog_disabled, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (...) @log_cur_pos()
  br label %46

44:                                               ; preds = %36
  %45 = call i32 (...) @log_write_pos()
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i64, i64* @binlog_disabled, align 8
  %49 = call i32 @cstatus_binlog_pos(i32 %47, i64 %48)
  %50 = load i32, i32* %1, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %1, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %61

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %56, %35
  %62 = call i32 @server_exit(i32* @news_engine)
  ret void
}

declare dso_local i32 @server_init(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fetch_binlog_data(i32) #1

declare dso_local i32 @log_cur_pos(...) #1

declare dso_local i32 @log_write_pos(...) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @process_signals(...) #1

declare dso_local i32 @check_all_aio_completions(...) #1

declare dso_local i32 @tl_restart_all_ready(...) #1

declare dso_local i32 @flush_binlog(...) #1

declare dso_local i32 @cstatus_binlog_pos(i32, i64) #1

declare dso_local i32 @server_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
