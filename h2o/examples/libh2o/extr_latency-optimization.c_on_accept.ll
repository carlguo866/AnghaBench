; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_on_accept.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_on_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sock = common dso_local global i32* null, align 8
@ssl_ctx = common dso_local global i32* null, align 8
@mode_server = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"blahblah\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @on_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_accept(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %30

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @h2o_evloop_socket_accept(i32* %9)
  store i32* %10, i32** @sock, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @h2o_socket_close(i32* %13)
  %15 = load i32*, i32** @ssl_ctx, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i32*, i32** @sock, align 8
  %19 = load i32*, i32** @ssl_ctx, align 8
  %20 = load i64, i64* @mode_server, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)
  %24 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %25 = call i32 @h2o_socket_ssl_handshake(i32* %18, i32* %19, i8* %23, i32 %24, i32 (i32*, i32*)* @on_handshake_complete)
  br label %29

26:                                               ; preds = %12
  %27 = load i32*, i32** @sock, align 8
  %28 = call i32 @on_handshake_complete(i32* %27, i32* null)
  br label %29

29:                                               ; preds = %26, %17
  br label %30

30:                                               ; preds = %7, %29, %8
  ret void
}

declare dso_local i32* @h2o_evloop_socket_accept(i32*) #1

declare dso_local i32 @h2o_socket_close(i32*) #1

declare dso_local i32 @h2o_socket_ssl_handshake(i32*, i32*, i8*, i32, i32 (i32*, i32*)*) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

declare dso_local i32 @on_handshake_complete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
