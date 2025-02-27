; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_start_server.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@sfd = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@settings_addr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@backlog = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"created listening socket at %s:%d, fd=%d\0A\00", align 1
@daemonize = common dso_local global i64 0, align 8
@username = common dso_local global i8* null, align 8
@interactive = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@ct_rpc_server = common dso_local global i32 0, align 4
@copyfast_rpc_server = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sigint_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@sigusr1_handler = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"epoll_work(): %d out of %d connections, network buffers: %d used, %d out of %d allocated\0A\00", align 1
@active_connections = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@NB_used = common dso_local global i32 0, align 4
@NB_alloc = common dso_local global i32 0, align 4
@NB_max = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@quit_steps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_server() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @init_epoll()
  %5 = call i32 (...) @init_netbuffers()
  store i32 0, i32* %3, align 4
  %6 = load i64, i64* @sfd, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @port, align 4
  %10 = load i32, i32* @backlog, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %12 = call i64 @server_socket(i32 %9, i32 %11, i32 %10, i32 0)
  store i64 %12, i64* @sfd, align 8
  br label %13

13:                                               ; preds = %8, %0
  %14 = load i64, i64* @sfd, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @port, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @exit(i32 3) #3
  unreachable

21:                                               ; preds = %13
  %22 = load i64, i64* @verbosity, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @settings_addr, i32 0, i32 0), align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %28 = call i8* @conv_addr(i32 %26, i8* %27)
  %29 = load i32, i32* @port, align 4
  %30 = load i64, i64* @sfd, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i64, i64* @daemonize, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @setsid()
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8*, i8** @username, align 8
  %39 = call i64 @change_user(i8* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load i32, i32* @interactive, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @username, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** @username, align 8
  br label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %50 ]
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %41, %37
  %56 = load i64, i64* @sfd, align 8
  %57 = call i32 @init_listening_connection(i64 %56, i32* @ct_rpc_server, i32* @copyfast_rpc_server)
  %58 = load i32, i32* @SIGINT, align 4
  %59 = load i32, i32* @sigint_handler, align 4
  %60 = call i32 @signal(i32 %58, i32 %59)
  %61 = load i32, i32* @SIGTERM, align 4
  %62 = load i32, i32* @sigterm_handler, align 4
  %63 = call i32 @signal(i32 %61, i32 %62)
  %64 = load i32, i32* @SIGUSR1, align 4
  %65 = load i32, i32* @sigusr1_handler, align 4
  %66 = call i32 @signal(i32 %64, i32 %65)
  %67 = load i64, i64* @daemonize, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load i32, i32* @SIGHUP, align 4
  %71 = load i32, i32* @sighup_handler, align 4
  %72 = call i32 @signal(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %55
  %74 = load i32, i32* @SIGPIPE, align 4
  %75 = load i32, i32* @SIG_IGN, align 4
  %76 = call i32 @signal(i32 %74, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %109, %73
  %78 = load i64, i64* @verbosity, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i32, i32* %2, align 4
  %82 = and i32 %81, 255
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* @active_connections, align 4
  %87 = load i32, i32* @maxconn, align 4
  %88 = load i32, i32* @NB_used, align 4
  %89 = load i32, i32* @NB_alloc, align 4
  %90 = load i32, i32* @NB_max, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %80, %77
  %93 = call i32 @epoll_work(i32 53)
  %94 = load i32, i32* @now, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @now, align 4
  store i32 %98, i32* %3, align 4
  %99 = call i32 (...) @cron()
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i64, i64* @quit_steps, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i64, i64* @quit_steps, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* @quit_steps, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %112

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %77

112:                                              ; preds = %107
  %113 = load i64, i64* @sfd, align 8
  %114 = call i32 @epoll_close(i64 %113)
  %115 = load i64, i64* @sfd, align 8
  %116 = call i32 @close(i64 %115)
  ret void
}

declare dso_local i32 @init_epoll(...) #1

declare dso_local i32 @init_netbuffers(...) #1

declare dso_local i64 @server_socket(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @conv_addr(i32, i8*) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_listening_connection(i64, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @epoll_work(i32) #1

declare dso_local i32 @cron(...) #1

declare dso_local i32 @epoll_close(i64) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
